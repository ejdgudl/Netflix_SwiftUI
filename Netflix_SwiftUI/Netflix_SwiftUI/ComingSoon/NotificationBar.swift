//
//  NotificationBar.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/03/30.
//

import SwiftUI

struct NotificationBar: View {
    
    @Binding var showNotificationList: Bool
    var body: some View {
        Button {
            showNotificationList = true
        } label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
            }
            .font(.system(size: 18, weight: .bold))
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct NotificationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            NotificationBar(showNotificationList: .constant(false))
        }
    }
}
