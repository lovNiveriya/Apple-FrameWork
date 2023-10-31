//
//  FrameWorkDetailView.swift
//  Apple-FramWork
//
//  Created by LOVE  on 31/10/23.
//

import SwiftUI

struct FrameWorkDetailView: View {
    let frameWork: Framework
    var body: some View {
        VStack{
            Spacer()
            
            FrameTitleView(frameWork: frameWork)
            Text(frameWork.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Lear More")
            }
        }
    }
}

#Preview {
    FrameWorkDetailView(frameWork: MockData.sampleData)
}
