//
//  ContentView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct newNoteView: View {
    // makes variables for the title, body, array to be linked
    @State var Title1: String = ""
    @State var Body1: String = ""
    @Binding var noteArr: [Note]
    var body: some View {
        //nav view to link pages together
        NavigationView{
            //vstack to verticlly stack the thigs on the page.
            VStack {
                //zstack that puts title text field on top inside of the rectangle
                ZStack {
                    Rectangle()
                        // fills with a color, gives a color
                        .fill(Color(red: 240/255, green: 240/255, blue: 240/255))
                        .frame(height: 80)
                    // makes a text field that will store the title when add item is clicked.
                    TextField("Title", text: $Title1)
                        // rounded text box style and padding
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                // zstack that will put the large text box inside of the rectangle.
                ZStack{
                    // makes a rectangle
                    Rectangle()
                        // fills with gray
                        .fill(Color(red: 240/255, green: 240/255, blue: 240/255))
                    // text that will be saved into the array when add item is pushed,
                    TextEditor(text: $Body1)
                        // adds a height, alignment, rounded style, and padding to the text box
                        .frame(height: 500, alignment: .center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                //makes a button that will launch addItem function
                Button(action: addItem, label: {
                    // adds text to the button
                    Text("Add Item")
                        // adds padding, background color, text color, corner rounding, font size, and size of the button.
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 20))
                        .frame(width: 400, height: 100, alignment: .center)
                }
            )}
        }
    }
    //addItem funct that will add title and body to the array
    func addItem(){
        let note2 = Note(title: Title1, body: Body1)
        noteArr.append(note2)
    }
}

//preview that injects the notes array(?)
#Preview {
    newNoteView(noteArr: .constant([]))
}
