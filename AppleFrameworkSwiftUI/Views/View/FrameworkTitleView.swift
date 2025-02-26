//
//  FrameworkTitleView.swift
//  AppleFrameworkSwiftUI
//
//  Created by Berkay on 24.02.2025.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
