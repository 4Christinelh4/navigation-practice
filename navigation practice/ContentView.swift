//
//  ContentView.swift
//  navigation practice
//
//  Created by yuweiL on 27/6/2024.
//

import SwiftUI

struct ContentView: View {
    @State var path: [Fruit] = []
    var fruits = [Fruit.apple, Fruit.banana, Fruit.orange, Fruit.avocado, Fruit.blueberry]
    var body: some View {
        NavigationStack (path: $path){
            List {
                ForEach(fruits, id: \.self) {
                    fruit_ in
                    NavigationLink(fruit_.name, value: fruit_)
                }
            }
            .navigationDestination(for: Fruit.self) {
                f in
                FruitDetailView(fruit: f)
            }
        }
    }
}

#Preview {
    ContentView()
}
