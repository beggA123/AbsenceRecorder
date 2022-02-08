//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Begg, Alistair (AMM) on 08/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
