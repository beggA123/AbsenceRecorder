//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Begg, Alistair (AMM) on 07/02/2022.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    
    var body: some View {
        List(division.students, id: \.self.forename) { student in
            AbsenceItem(studentAbsence: StudentAbsence(student: student))
        }
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}
