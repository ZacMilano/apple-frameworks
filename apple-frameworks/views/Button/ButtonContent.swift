//
//  ButtonContent.swift
//  apple-frameworks
//
//  Created by Zac Milano on 11/28/23.
//

import SwiftUI

struct ButtonContent: View {
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .cornerRadius(10)
    }
}

struct ButtonContent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContent(title: "Hello world!")
    }
}
