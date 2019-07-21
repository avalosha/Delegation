//
//  CalendarProtocols.swift
//  Delegation
//
//  Created by Álvaro Ávalos Hernández on 7/20/19.
//  Copyright © 2019 Álvaro Ávalos Hernández. All rights reserved.
//

import Foundation


protocol CalendarDelegate: class {
    func calendar(_ calendar: Calendar, willDisplay year: Int)
    func calendar(_ calendar: Calendar, didSelect date: Date)
    func calendarShouldChangeYear(_ calendar: Calendar) -> Bool
}

protocol CalendarDataSource {
    func calendar(_ calendar: Calendar, eventsFor date: Date) -> [String]
    func calendar(_ calendar: Calendar, add event: String, to date: Date)
}

