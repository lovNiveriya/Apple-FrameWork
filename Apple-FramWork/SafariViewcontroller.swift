//
//  SafariViewcontroller.swift
//  Apple-FramWork
//
//  Created by LOVE  on 01/11/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL

      func makeUIViewController(
          context: UIViewControllerRepresentableContext<Self>
      ) -> SFSafariViewController {
          return SFSafariViewController(url: url)
      }

      func updateUIViewController(
          _ uiViewController: SFSafariViewController,
          context: UIViewControllerRepresentableContext<SafariView>
      ) {}
    

}
