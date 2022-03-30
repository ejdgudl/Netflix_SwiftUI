//
//  CommingSoon.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/03/30.
//

import SwiftUI

struct CommingSoon: View {
    @State private var showNotificationList: Bool = false
    @State private var navBarHidden: Bool = true
    
    var body: some View {
        NavigationView {
            Group {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    ScrollView {
                        VStack {
                            NotificationBar(showNotificationList: $showNotificationList)
                            Text("for each loop of cells")
                        }
                    }
                    .foregroundColor(.white)
                }
                NavigationLink(
                    destination: Text("Notification List"),
                    isActive: $showNotificationList) {
                        EmptyView()
                    }
                    .navigationTitle("")
                    .navigationBarHidden(navBarHidden)
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
                        self.navBarHidden = true
                    }
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                        self.navBarHidden = false
                    }
            }
        }
    }
}

struct CommingSoon_Previews: PreviewProvider {
    static var previews: some View {
        CommingSoon()
    }
}
