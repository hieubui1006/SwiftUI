//
//  PageView.swift
//  Swift_UI
//
//  Created by mrhb on 19/12/2023.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .trailing) {
            PageViewController(currentPage: $currentPage, pages: pages)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .padding()
                .safeAreaInset(edge: .top, content: {})
                .frame(width: CGFloat(pages.count * 18))
        }
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map({ FeatureCard(landmark: $0) }))
    }
}
