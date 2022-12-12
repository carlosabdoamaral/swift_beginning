//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Carlos Amaral on 19/11/21.
//

import SwiftUI

struct CreditsView: View {
    @State private var randomNumber : Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing: 3) {
            //PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            //HEADER
            HeaderView(title: "Credits")
            
            //CONTENT
            Text("Carlos Amaral")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
