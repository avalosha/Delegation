//
//  Reminders.swift
//  Delegation
//
//  Created by Álvaro Ávalos Hernández on 7/20/19.
//  Copyright © 2019 Álvaro Ávalos Hernández. All rights reserved.
//

import Foundation

protocol ReminderPresenting {
    func yearChanged(to year: Int)
}

class Reminders: ReminderPresenting {
    var title = "Year: 2018"
    var calendar = Calendar()
    
    init() {
        calendar.delegate = RemindersCalendarDelegate()
        calendar.dataSource = RemindersCalendarDataSource()
    }
    
    func calendarShouldChangeYear(_ calendar: Calendar) -> Bool {
        return true
    }
    
    func calendar(_ calendar: Calendar, willDisplay year: Int) {
        title = "Year: \(year)"
    }
    
    func calendar(_ calendar: Calendar, didSelect date: Date) {
        print("You selected \(date)")
    }
    
    func yearChanged(to year: Int) {
        title = "Year: \(year)"
    }
    
}
