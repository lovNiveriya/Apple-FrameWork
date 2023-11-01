//
//  FrameWorkDetailView.swift
//  Apple-FramWork
//
//  Created by LOVE  on 31/10/23.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    let frameWork: Framework
    @Binding var isPresented: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            HStack{
                Spacer()
                Button(action: {
                    isPresented = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .frame(width: 44, height: 44)
                        .imageScale(.medium)
                })
            }.padding()
            
            Spacer()
            
            FrameWorkTitleView(frameWork: frameWork)
            Text(frameWork.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Lear More")
            }
        }.sheet(isPresented: $isShowingSafariView, content: {
            if let url = URL(string: frameWork.urlString){
                SafariView(url: url)
            }
        })
    }
}

#Preview {
    FrameWorkDetailView(frameWork: MockData.sampleData, isPresented: .constant(false))
}
