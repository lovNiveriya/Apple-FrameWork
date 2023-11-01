//
//  FrameworkGridViewModel.swift
//  Apple-FramWork
//
//  Created by LOVE  on 01/11/23.
//

import SwiftUI


final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{
            isPresented = true
        }
    }
    
    @Published var isPresented = false
    let columbs: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
