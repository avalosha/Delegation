//
//  Reminders.swift
//  Delegation
//
//  Created by Álvaro Ávalos Hernández on 7/20/19.
//  Copyright © 2019 Álvaro Ávalos Hernández. All rights reserved.
//

import Foundation

class Reminders: CalendarDelegate {
    var title = "Year: 2018"
    var calendar = Calendar()
    
    init() {
        calendar.delegate = self
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
    
}
