//
//  ContentView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct Note {
    var title: String
    var body: String
}

struct ContentView: View {
    @State private var notes:[Note] = []
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Notes:")
                    .font(.largeTitle)
//                    .position(x: 70.0, y: 50.0)
                Rectangle()
                    .fill(Color(red: 240/255, green: 240/255, blue: 240/255))
                NavigationLink(destination: newNoteView(noteArr: $notes).navigationBarBackButtonHidden(false)) {
                        //adds text to the button
                        Text("Add Item")
                            //adds padding, background color, text color, rounding corners,and custom font
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.custom("MadimiOne-Regular", size: 30))
                            .frame(width: 400, height: 100, alignment: .center)
//                            .position(x: 200, y: 350)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
