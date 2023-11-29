//
//  FrameworkDetailsView.swift
//  apple-frameworks
//
//  Created by Zac Milano on 11/28/23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            DismissButton(isShowingModal: $isShowingDetailView)
            
            Spacer()
            
            FrameworkStackView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                ButtonContent(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(
                url: URL(string: framework.urlString)
                    ?? URL(string: "www.apple.com")!
            )
        }
    }
}

struct FrameworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailsView(
            framework: MockData.sampleFramework,
            isShowingDetailView: .constant(false)
        )
    }
}
