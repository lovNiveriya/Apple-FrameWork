//
//  ContentView.swift
//  Barcode_App
//
//  Created by LOVE  on 02/11/23.
//

import SwiftUI

struct BarCodeScannerView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Barcode Scanner")
                            .bold()
                            .font(.system(size: 35, weight: .bold, design: .default))
                        Spacer()
                    }.padding()
                    Spacer().frame(height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Rectangle()
                        .frame(width: .infinity, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack{
                        Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .padding()
                        Text("Not Yet Scanned")
                            .font(.system(size: 25, weight: .medium, design: .default))
                            .foregroundStyle(.red)
                    }.padding()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    BarCodeScannerView()
}
