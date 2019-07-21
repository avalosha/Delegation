//
//  RemindersCalendarDelegate.swift
//  Delegation
//
//  Created by Álvaro Ávalos Hernández on 7/20/19.
//  Copyright © 2019 Álvaro Ávalos Hernández. All rights reserved.
//

import Foundation

class RemindersCalendarDelegate: CalendarDelegate {
    
    var parentController: ReminderPresenting?
    
    func calendarShouldChangeYear(_ calendar: Calendar) -> Bool {
        return true
    }
    
    func calendar(_ calendar: Calendar, willDisplay year: Int) {
        parentController?.yearChanged(to: year)
    }
    
    func calendar(_ calendar: Calendar, didSelect date: Date) {
        print("You selected \(date)")
    }
    
}
