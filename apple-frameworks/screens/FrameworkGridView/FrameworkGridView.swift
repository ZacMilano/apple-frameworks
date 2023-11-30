//
//  FrameworkGridView.swift
//  apple-frameworks
//
//  Created by Zac Milano on 11/28/23.
//

import SwiftUI

//TODO 3:45:55
struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        value: framework
                    ) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailsView(
                    framework: framework,
                    isShowingDetailView: $viewModel.isShowingDetailView
                )
            }
        }
        .accentColor(Color(.label))
    }
}


struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
