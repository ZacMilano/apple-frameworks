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
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
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
