//
//  ContentView.swift
//  AnotherSimpleCounter
//
//  Created by Jerry Toland on 4/26/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.trianglehead.counterclockwise")
                    .imageScale(.large)
                
                Text("Another Simple Counter")
                    .font(.title)
                    .bold()
            }
            .foregroundStyle(.tint)
            .padding()
            
            CounterView(count: $count)
            
            Button {
                count += 1
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 50))
                    .accessibilityLabel("Add")
            }
            .padding(.top, 8)
        }
    }
}

#Preview {
    ContentView()
}
