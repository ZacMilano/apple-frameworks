//
//  SafariView.swift
//  apple-frameworks
//
//  Created by Zac Milano on 11/28/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(
        context: UIViewControllerRepresentableContext<SafariView>
    ) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(
        _ uiViewController: SFSafariViewController,
        context: UIViewControllerRepresentableContext<SafariView>
    ) {}
}
