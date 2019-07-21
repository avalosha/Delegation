//
//  RemindersCalendarDataSource.swift
//  Delegation
//
//  Created by Álvaro Ávalos Hernández on 7/20/19.
//  Copyright © 2019 Álvaro Ávalos Hernández. All rights reserved.
//

import Foundation

class RemindersCalendarDataSource: CalendarDataSource {
    
    func calendar(_ calendar: Calendar, eventsFor date: Date) -> [String] {
        return ["Organize sock drawer", "Take over the world"]
    }
    
    func calendar(_ calendar: Calendar, add event: String, to date: Date) {
        print("You're going to \(event) on \(date).")
    }
    
}
