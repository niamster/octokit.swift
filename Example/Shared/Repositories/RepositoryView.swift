//
//  RepositoryView.swift
//  Example
//
//  Created by Piet Brauer-Kallenberg on 06.10.21.
//

import SwiftUI
import OctoKit

struct RepositoryView: View {
    @State var repository: Repository

    var body: some View {
        TabView {
            PullRequestsView(viewModel: PullRequestsViewModel(repository: repository))
                .tabItem {
                    Image(systemName: "shuffle")
                    Text("PullRequests")
                }
            Text("Hello Issues")
                .tabItem {
                    Image(systemName: "exclamationmark.triangle")
                    Text("Issues")
                }
            Text("Hello Releases")
                .tabItem {
                    Image(systemName: "shippingbox")
                    Text("Releases")
                }
        }
    }
}

//struct RepositoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        RepositoryView(repository: Repository(from: ))
//    }
//}