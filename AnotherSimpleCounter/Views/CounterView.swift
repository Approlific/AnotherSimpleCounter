//
//  CounterView.swift
//  AnotherSimpleCounter
//
//  Created by Jerry Toland on 4/26/26.
//

import SwiftUI

struct CounterView: View {
    
    @Binding var count: Int
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.tint)
                .frame(width: 200, height: 200)
            
            Text("\(count)")
                .font(.system(size: 100))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CounterView(count: .constant(0))
}
