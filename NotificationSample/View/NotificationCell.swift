//
//  NotificationCell.swift
//  NotificationSample
//
//  Created by 김민섭 on 2022/11/12.
//

import SwiftUI

struct NotificationCell: View {
    
    var title: String
    var message: String
    var time: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(title)
                Text(message)
                Text(time)
            }.padding()
            Spacer()
            Image(systemName: "chevron.compact.right")
                .padding()
        }
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell(title: "title", message: "message", time: "time")
    }
}
