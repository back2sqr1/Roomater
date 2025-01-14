//
//  ContentView.swift
//  Roomater
//
//  Created by Zhang, David Deen on 1/13/25.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        ProgressView(value: 10, total: 15) .padding()
        HStack {
            VStack (alignment: .leading) {
                Text("Seconds Elapsed").font(.caption)
                Label("300", systemImage: "hourglass.tophalf.fill")
            }
            Spacer()
            VStack (alignment: .trailing) {
                Text("Seconds Remaining").font(.caption)
                Label("600", systemImage: "hourglass.bottomhalf.fill")
            }
        } .padding()
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
        
        Circle()
            .strokeBorder(lineWidth: 24) .padding()
        
        HStack {
            Text("Speaker 1 of 3")
            Spacer()
            Button(action: {}) {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next speaker")
        }.padding()
    }
    
}

#Preview {
    MeetingView()
}
