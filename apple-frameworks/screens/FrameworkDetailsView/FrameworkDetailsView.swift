//
//  FrameworkDetailsView.swift
//  apple-frameworks
//
//  Created by Zac Milano on 11/28/23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    @ObservedObject var viewModel: FrameworkDetailsViewModel
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.purple)
        }
    }
}

struct FrameworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailsView(
            viewModel: FrameworkDetailsViewModel(
                framework: MockData.sampleFramework,
                isShowingDetailView: .constant(false)
            )
        )
    }
}
