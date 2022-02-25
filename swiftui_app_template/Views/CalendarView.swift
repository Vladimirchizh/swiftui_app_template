//
//  CalendarView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 23.02.2022.
//
import SwiftUI

struct ContentView: View {
    
    @Environment(\.calendar) var calendar
    private var year: DateInterval {
        calendar.dateInterval(of: .month, for: Date())!
    }
    
    var body: some View {
        VStack{
            CalendarView(interval: self.year) { date in
                    Text("30")
                        .foregroundColor(Color.white)
                        .hidden()
                        .padding(8)
                        .background(1 != 1 ? Color.red : Color.teal) // Make your logic
                        .blur(radius: 10)
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .padding(4)
                        .overlay(
                            Text(String(self.calendar.component(.day, from: date)))
                                .foregroundColor(Color.black)
                                .underline(2 == 2) //Make your own logic
                        )
            }
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




fileprivate extension DateFormatter {
    static var month: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM"
        return formatter
    }

    static var monthAndYear: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter
    }
}

fileprivate extension Calendar {
    func generateDates(
        inside interval: DateInterval,
        matching components: DateComponents
    ) -> [Date] {
        var dates: [Date] = []
        dates.append(interval.start)

        enumerateDates(
            startingAfter: interval.start,
            matching: components,
            matchingPolicy: .nextTime
        ) { date, _, stop in
            if let date = date {
                if date < interval.end {
                    dates.append(date)
                } else {
                    stop = true
                }
            }
        }

        return dates
    }
}

struct WeekView<DateView>: View where DateView: View {
    @Environment(\.calendar) var calendar

    let week: Date
    let content: (Date) -> DateView

    init(week: Date, @ViewBuilder content: @escaping (Date) -> DateView) {
        self.week = week
        self.content = content
    }

    private var days: [Date] {
        guard
            let weekInterval = calendar.dateInterval(of: .weekOfYear, for: week)
            else { return [] }
        return calendar.generateDates(
            inside: weekInterval,
            matching: DateComponents(hour: 0, minute: 0, second: 0)
        )
    }

    var body: some View {
        HStack {
            ForEach(days, id: \.self) { date in
                HStack {
                    if self.calendar.isDate(self.week, equalTo: date, toGranularity: .month) {
                        self.content(date)
                    } else {
                        self.content(date).hidden()
                    }
                }
            }
        }
    }
}

struct MonthView<DateView>: View where DateView: View {
    @Environment(\.calendar) var calendar

    @State private var month: Date
    let showHeader: Bool
    let content: (Date) -> DateView

    init(
        month: Date,
        showHeader: Bool = true,
        localizedWeekdays: [String] = [],
        @ViewBuilder content: @escaping (Date) -> DateView
    ) {
        self._month = State(initialValue: month)
        self.content = content
        self.showHeader = showHeader
    }

    private var weeks: [Date] {
        guard
            let monthInterval = calendar.dateInterval(of: .month, for: month)
            else { return [] }
        return calendar.generateDates(
            inside: monthInterval,
            matching: DateComponents(hour: 0, minute: 0, second: 0, weekday: calendar.firstWeekday)
        )
    }
    
    func changeDateBy(_ months: Int) {
        if let date = Calendar.current.date(byAdding: .month, value: months, to: month) {
            self.month = date
        }
    }

    private var header: some View {
        let component = calendar.component(.month, from: month)
        let formatter = component == 1 ? DateFormatter.monthAndYear : .month
        return HStack{
            Text(formatter.string(from: month))
                .font(.title)
                .padding(.horizontal)
            Spacer()
            HStack{
                Group{
                    Button(action: {
                        self.changeDateBy(-1)
                    }) {
                    Image(systemName: "chevron.left.circle") //
                        .resizable()
                    }
                    Button(action: {
                        self.month = Date()
                    }) {
                    Image(systemName: "arrow.clockwise.circle")
                        .resizable()
                    }
                    Button(action: {
                        self.changeDateBy(1)
                    }) {
                    Image(systemName: "chevron.right.circle")
                        .resizable()
                    }
                }
                .foregroundColor(Color.black)
                .frame(width: 25, height: 25)
                
            }
            .padding(.trailing, 20)
        }
    }
   
    var body: some View {
        VStack {
            if showHeader {
                    header
            }
            HStack{
                ForEach(0..<7, id: \.self) {index in
                    Text("30")
                        .hidden()
                        .padding(8)
                        .clipShape(Circle())
                        .padding(.horizontal, 4)
                        .overlay(
                            Text(getWeekDaysSorted()[index].uppercased()))
                }
            }
            
            ForEach(weeks, id: \.self) { week in
                WeekView(week: week, content: self.content)
            }
        }
    }
    
    func getWeekDaysSorted() -> [String]{
        let weekDays = Calendar.current.shortWeekdaySymbols
        let sortedWeekDays = Array(weekDays[Calendar.current.firstWeekday - 1 ..< Calendar.current.shortWeekdaySymbols.count] + weekDays[0 ..< Calendar.current.firstWeekday - 1])
        return sortedWeekDays
    }
}

struct CalendarView<DateView>: View where DateView: View {
    @Environment(\.calendar) var calendar

    let interval: DateInterval
    let content: (Date) -> DateView

    init(interval: DateInterval, @ViewBuilder content: @escaping (Date) -> DateView) {
        self.interval = interval
        self.content = content
    }

    private var months: [Date] {
        calendar.generateDates(
            inside: interval,
            matching: DateComponents(day: 1, hour: 0, minute: 0, second: 0)
        )
    }
    
    
    var body: some View {
        
            ForEach(months, id: \.self) { month in
                MonthView(month: month, content: self.content)
            }
        Spacer().frame( height: 25)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Задание на:")
                        Text(Date(), style: .date)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack{
                        Text("Повторить все случаи использования Mixed conditionals")
                    }
                }.padding()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Задание на:")
                        Text(Date.now.addingTimeInterval(7*86400), style: .date)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack{
                        Text("Подготовиться к тесту ")
                    }
                }.padding()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Задание на:")
                        Text(Date.now.addingTimeInterval(14*86400), style: .date)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer().frame(width:67)
                    VStack{
                        Text("Повторить новую лексику, написать эссе")
                    }
                }.padding()
            }
            .background(Color.white)
            .cornerRadius(10)
    }
}
