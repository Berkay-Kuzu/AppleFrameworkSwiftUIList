//
//  FrameworkGridView.swift
//  AppleFrameworkSwiftUI
//
//  Created by Berkay on 24.02.2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(MockData.frameworks) { framework in
                    NavigationLink {
                        FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)
                    } label: {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .tint(.white)
        .listRowSeparator(.hidden, edges: .all)
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

