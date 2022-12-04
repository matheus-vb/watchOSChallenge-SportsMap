//
//  TimeCheckController.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by matheusvb on 04/12/22.
//

import Foundation

class TimeCheckController: TimeCheckControllerProtocol {
    
    let date = Date()
    let calendar = Calendar.current
    let hour: Int
    let minutes: Int
    
    init() {
        hour = calendar.component(.hour, from: date)
        minutes = calendar.component(.minute, from: date)
    }
    
    func checkIfOpen(workingTime: String?) -> Bool {
        if workingTime == nil {
            return true
        } else {
            let openTimeStr = workingTime!.prefix(2)
            let closeTimeStr = workingTime!.suffix(2)
            
            let openTime = Int(openTimeStr)!
            let closeTime = Int(closeTimeStr)!
            
            if (hour >= openTime && hour <= closeTime) {
                if (hour == closeTime && minutes > 0){
                    return false
                } else {
                    return true
                }
            } else {
                return false
            }
        }
    }
}
