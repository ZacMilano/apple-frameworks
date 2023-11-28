//
//  FrameworkGridView.swift
//  apple-frameworks
//
//  Created by Zac Milano on 11/28/23.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        FrameworkStackView(name: "App Clips", imageName: "app-clip")
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
