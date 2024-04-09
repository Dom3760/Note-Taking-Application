//
//  detailNoteView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct detailNoteView: View {
    //binds the note array from content view.
    @Binding var notesArr: [Note]
    // makes a variable for the title and content
    @State var title: String
    @State var content: String
    var body: some View {
        //vstack for title and body in page
        VStack{
            //makes text that is large for title
            Text("\(title)")
                .font(.system(size: 30))
            //makes a zstack to put body on top of rectangle.
            ZStack(alignment: .topLeading)
            {
                //makes a rectangle
                Rectangle()
                // fills the rectangle
                    .fill(Color(red: 240/255, green: 240/255, blue: 240/255))
                //adds text for the body of the note
                Text(" \(content)")
            }
        }
    }
}
// makes it so the array, title, and content will be injected into this page.
#Preview {
    detailNoteView( notesArr: .constant([]), title: "Phasmaphobia", content: "The game is scary AAAHHHH!!!")
}
