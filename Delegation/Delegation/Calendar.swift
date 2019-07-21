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
    
    var selectedDate: Date = Date()
    var currentYear: Int = 2018
    
    func changeDate(to date: Date) {
        selectedDate = date
        delegate?.calendar(self, didSelect: date)
    }
    
    func changeYear(to year: Int) {
        if delegate?.calendarShouldChangeYear(self) ?? true {
            delegate?.calendar(self, willDisplay: year)
            currentYear = year
        }
    }
    
}
