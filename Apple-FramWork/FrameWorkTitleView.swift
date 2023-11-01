//
//  FrameWorkTitleView.swift
//  Apple-FramWork
//
//  Created by LOVE  on 01/11/23.
//

import SwiftUI

struct FrameWorkTitleView: View {
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

#Preview {
    FrameWorkTitleView(frameWork: MockData.sampleFramework)
}
