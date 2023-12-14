//
//  FrameworkDetailsViewModel.swift
//  apple-frameworks
//
//  Created by Zac Milano on 12/13/23.
//

import SwiftUI

final class FrameworkDetailsViewModel: ObservableObject {
    let framework: Framework
    var isShowingDetailView: Binding<Bool>
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
}
