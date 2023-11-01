//
//  FrameWorkGridView.swift
//  Apple-FramWork
//
//  Created by LOVE  on 31/10/23.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columbs){
                    ForEach(MockData.frameworks){ framework in
                        FrameWorkTitleView(frameWork: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("🍎 FrameWork" )
                .sheet(isPresented: $viewModel.isPresented, content: {
                    FrameWorkDetailView(frameWork: viewModel.selectedFramework ?? MockData.sampleData,
                                        isPresented: $viewModel.isPresented)
                })
        }
    }
}

#Preview {
    FrameWorkGridView()
}
