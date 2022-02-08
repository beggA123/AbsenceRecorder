//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Begg, Alistair (AMM) on 08/02/2022.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isPresent: Bool
    
    init(student: Student) {
        self.student = student
        isPresent = true
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename: "David", surname: "Cormell", birthday: Date()))
    #endif
}
