//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Begg, Alistair (AMM) on 02/02/2022.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        if let birthday = dateFormatter.date(from: "2005-01-08") {
            for _ in 0..<size {
                division.students.append(Student(forename: "Alistair", surname: "Begg", birthday: birthday))
            }
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vCY-1", of: 6),
                           Division.createDivision(code: "vBX-2", of: 8),
                           Division.createDivision(code: "vAE-3", of: 19)]
    #endif
}
