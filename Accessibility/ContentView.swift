//
//  ContentView.swift
//  Accessibility
//
//  Created by Gary Watson on 23/07/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
    "ales-krivec-15949",
    "galina-n-189483",
    "kevin-horstmann-141705",
    "nicolas-tissot-335096"]
    
    let labels = [
    "Tulips",
    "Frozen tree buds",
    "Sunflowers",
    "Fireworks"
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    
    var body: some View {
        Image(pictures[selectedPicture])
        .resizable()
        .scaledToFit()
        .accessibility(label: Text(labels[selectedPicture]))
            .accessibility(addTraits: .isButton)
            .accessibility(removeTraits: .isImage)
            .onTapGesture {
                self.selectedPicture = Int.random(in: 0...3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
