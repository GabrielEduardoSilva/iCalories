//
//  TimeFormatting.swift
//  iCalories
//
//  Created by Gabriel Eduardo on 17/08/23.
//

import Foundation

func calcTimeSince(date: Date) -> String {
    let minutes = Int(-date.timeIntervalSinceNow) / 60
    let hours = minutes / 60
    let days = hours / 24
    
    if minutes < 60 {
        return "\(minutes) minutos atrás"
    } else if minutes >= 60 && hours < 48 {
        return "\(hours) horas atrás"
    } else {
        return "\(days) dias atrás"
    }
}
