//
//  FrameworkDetailView.swift
//  AppleFrameworkSwiftUI
//
//  Created by Berkay on 24.02.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.red)
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .fontWeight(.medium)
                .padding(.all, 30)
            
            Spacer()
            Button {
                print("nothing")
            } label: {
                AFButton(buttonTitle: "Learn More")
            }
        }
    }
}

//#Preview {
//    FrameworkDetailView(framework: MockData.sampleFramework)
//        .preferredColorScheme(.dark)
//}
