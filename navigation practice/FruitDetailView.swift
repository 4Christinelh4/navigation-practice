//
//  FruitDetailView.swift
//  navigation practice
//
//  Created by yuweiL on 28/6/2024.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(fruit.tint.opacity(0.45))
            Text(fruit.emoji)
                .font(.system(size: 90))
        }
    }
}

#Preview {
    FruitDetailView(fruit: .avocado)
}
