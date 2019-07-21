//
//  Calendar.swift
//  Delegation
//
//  Created by Álvaro Ávalos Hernández on 7/20/19.
//  Copyright © 2019 Álvaro Ávalos Hernández. All rights reserved.
//

import Foundation

class Calendar {
    
    weak var delegate: CalendarDelegate?
    var dataSource: CalendarDataSource?
    
    var selectedDate: Date = Date()
    var currentYear: Int = 2018
    
    func changeDate(to date: Date) {
        selectedDate = date
        delegate?.calendar(self, didSelect: date)
        
        if let items = dataSource?.calendar(self, eventsFor: date) {
            print("Today's events are…")
            items.forEach { print($0) }
        } else {
            print("You have no events today.")
        }
    }
    
    func changeYear(to year: Int) {
        if delegate?.calendarShouldChangeYear(self) ?? true {
            delegate?.calendar(self, willDisplay: year)
            currentYear = year
        }
    }
    
    func add(event: String) {
        dataSource?.calendar(self, add: event, to: selectedDate)
    }
    
}
