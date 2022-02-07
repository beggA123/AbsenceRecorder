//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Begg, Alistair (AMM) on 07/02/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView(divisions: Division.examples)
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
