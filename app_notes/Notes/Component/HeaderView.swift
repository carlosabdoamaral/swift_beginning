//
//  HeaderView.swift
//  Notes WatchKit Extension
//
//  Created by Carlos Amaral on 19/11/21.
//

import SwiftUI

struct HeaderView: View {
    
    var title : String = ""
    
    
    var body: some View {
        VStack {
            
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            HStack {
                Capsule()
                    .frame(height: 1)
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title: "Credits")
            HeaderView()
        }
    }
}
