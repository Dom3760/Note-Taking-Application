//
//  ContentView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct newNoteView: View {
    @State var Title1: String = ""
    @State var Body1: String = ""
    @Binding var noteArr: [Note]
    var body: some View {
        NavigationView{
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color(red: 240/255, green: 240/255, blue: 240/255))
                        .frame(height: 80)
                    TextField("Title", text: $Title1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                ZStack{
                    Rectangle()
                        .fill(Color(red: 240/255, green: 240/255, blue: 240/255))
                    TextEditor(text: $Body1)
                        .frame(height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                Button(action: ), label: ( {
                    Text("Button")
                })
//                NavigationLink(destination: newNoteView().navigationBarBackButtonHidden(false)) {
//                    Text("Add Item")
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(10)
//                        .font(.custom("MadimiOne-Regular", size: 20))
//                        .frame(width: 400, height: 100, alignment: .center)
//                }
            }
        }
    }
}

#Preview {
    newNoteView(noteArr: .constant([]))
}
