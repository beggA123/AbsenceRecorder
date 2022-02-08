//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Begg, Alistair (AMM) on 08/02/2022.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack {
            Text("\(studentAbsence.student.forename)")
                .padding()
            Spacer()
            if studentAbsence.isPresent {
                Button("✔️", action: { toggleAbsent() })
                    .padding()
            } else {
                Button("❌", action: { toggleAbsent() })
                    .padding()
            }
            
        }
    }
    
    func toggleAbsent() {
        studentAbsence.isPresent.toggle()
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
