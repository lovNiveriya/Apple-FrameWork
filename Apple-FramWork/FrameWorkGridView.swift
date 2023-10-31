//
//  FrameWorkGridView.swift
//  Apple-FramWork
//
//  Created by LOVE  on 31/10/23.
//

import SwiftUI

struct FrameWorkGridView: View {
    let columbs: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columbs){
                    ForEach(MockData.frameworks){
                        FrameTitleView(frameWork: $0)
                    }
                }
            }.navigationTitle("🍎 FrameWork" )
        }
    }
}

#Preview {
    FrameWorkGridView()
}

struct FrameTitleView: View {
    let frameWork: Framework
    var body: some View {
        VStack{
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameWork.name)
                .font(.subheadline)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}
