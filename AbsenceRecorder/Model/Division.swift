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
        for i in 1...size {
            division.students.append(Student(forename: "Firstname\(i)", surname: "Surname\(i)", birthday: Date()))
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vCY-1", of: 6),
                           Division.createDivision(code: "vBX-2", of: 8),
                           Division.createDivision(code: "vAE-3", of: 19)]
    #endif
}
