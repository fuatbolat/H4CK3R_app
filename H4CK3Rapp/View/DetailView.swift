//
//  DetailView.swift
//  H4CK3Rapp
//
//  Created by Fuat Bolat on 3.02.2024.
//

import SwiftUI


struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}

/*#Preview {
    DetailView()
}*/

