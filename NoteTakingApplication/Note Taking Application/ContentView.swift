//
//  ContentView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

//making a struct that will hold the data types for the title and body for the notes
struct Note: Hashable {
    var title: String
    var body: String
}

struct ContentView: View {
    //makes a variable for the objects to be stored.
    @State private var notes:[Note] = []
    
    var body: some View {
        //nav view to be able to go to diffent pages
        NavigationView{
            //vstack that will vertically stack the contents
            VStack {
                //text for the title
                Text("Notes:")
                    //font for title
                    .font(.largeTitle)
                // zstack for the rectangle and the notes that it will hold.
                ZStack{
                    // rectangle that will be light grey
                    Rectangle()
                        .fill(Color(red: 240/255, green: 240/255, blue: 240/255))
                    // makes a list for the notes to be stored in.
                    List {
                        //for each thing in the notes array;
                        ForEach(notes, id: \.self) { note in
                            // add a navigation link to link to detailed note view.
                            NavigationLink(destination: detailNoteView(notesArr: $notes, title: note.title, content: note.body) .navigationBarBackButtonHidden(false)) {
                                
                                //stacks the title and body of the note entered
                                VStack(alignment: .leading)
                                {
                                    Text("\(note.title)")
                                        .bold()
                                    Text("\(note.body)")
                                }
                            }
                        }
                        // makes it so the list items can be deleted and will launch function
                        .onDelete(perform: deleteItem)
                    }
                }
                //makes the button to add items to the list
                NavigationLink(destination: newNoteView(noteArr: $notes) .navigationBarBackButtonHidden(false)) {
                        //adds text to the button
                        Text("Add Item")
                            //adds padding, background color, text color, rounding corners, font size, and position
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 30))
                            .frame(width: 400, height: 100, alignment: .center)
                }
            }
        }
    }
    // if the function is ran it will inject the note that was deleted and, 
    func deleteItem(at offsets: IndexSet)
    {
        //it will then remove the injected item off the list
        notes.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
