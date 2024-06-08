//
//  ContentView.swift
//  LazyDemos
//
//  Created by Rafael Rodriguez on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var columns = [
//       
//        GridItem(),
//        GridItem()
        GridItem(.flexible(maximum: 110)),
        GridItem(.flexible(maximum: 200))
    ]
    
    var body: some View {
//        ScrollView {
        ScrollView(.horizontal) {
//            LazyVStack {
   
                // Lazy Stack only creates the views when needed
//            // first spacing in LazyGrid is for horizontal space and second spcing is for ertical spacing.
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 30)], spacing: 2) {
//                ForEach(0..<1000) { i in
//                    let _ = print ("Dang \(i)")  // let _ gets around issue if not used such as print ("Dang \(i)")
//                    RedAndCyanView()
//                }
//            }
            
            // first spacing in LazyGrid is for horizontal space and second spcing is for ertical spacing.
//            LazyVGrid(columns: columns) {
            LazyHGrid(rows: columns) {
                ForEach(0..<1000) { i in
                    let _ = print ("Dang \(i)")  // let _ gets around issue if not used such as print ("Dang \(i)")
                    RedAndCyanView()
                }
            }
                
//                ForEach(0..<1000) { i in
//                    let _ = print ("Dang \(i)")  // let _ gets around issue if not used such as print ("Dang \(i)")
//                    RedAndCyanView()
//                }
//            }
        }
        .padding()
    }
}

struct RedAndCyanView: View {
    var body: some View {
        ZStack {
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
}


#Preview {
    ContentView()
}


