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
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        destination: FrameworkDetailsView(
                            framework: framework,
                            isShowingDetailView: $viewModel.isShowingDetailView
                        )
                    ) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
        }
        .accentColor(Color(.label))
    }
}


struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
