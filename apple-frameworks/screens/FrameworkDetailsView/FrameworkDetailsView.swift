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
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.purple)
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
