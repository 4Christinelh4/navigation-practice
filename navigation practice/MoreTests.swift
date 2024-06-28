//
//  MoreTests.swift
//  navigation practice
//
//  Created by yuweiL on 27/6/2024.
//

import SwiftUI


struct FruitNavView<T: View> : View {
    var fruit: Fruit
    let foo: (Fruit) -> T
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(fruit.tint.opacity(0.45))
            
            VStack {
                Text(fruit.emoji)
                    .font(.system(size: 90))
                foo(fruit)
            }
        }
    }
}


struct MoreTests: View {
    @State var path: [Fruit] = []
    
    var fruits = [Fruit.apple, Fruit.banana, Fruit.orange, Fruit.avocado, Fruit.blueberry]
    var body: some View {
        NavigationStack (path: $path) {
            List {
                ForEach(fruits, id: \.self) {
                    fruit_ in
                    NavigationLink(fruit_.name, value: fruit_)
                }
            }
            .navigationDestination(for: Fruit.self) {
                f in
                FruitNavView(fruit: f) {
                    nextFruit in
                    NavigationLink(value: nextFruit) {
                        Text("Next is \(nextFruit.name)")
                    }
                    .buttonStyle(.plain)
                }
                .toolbar {
                    // Text("hello world")
                    ToolbarItem(placement: .navigationBarTrailing, content:  {
                        
                        Button {
                            overrideNavi()
                        } label: {
                            Text("Override_1")
                        }
                    })
                }
            }
        }
    }
    
    func goBack() {
        _ = path.popLast()
    }
    
    func overrideNavi() {
        path = [.orange, .apple, .avocado, .banana, .blueberry]
    }
}

#Preview {
    MoreTests()
}
