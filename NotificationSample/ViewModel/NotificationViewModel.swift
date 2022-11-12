//
//  NotificationViewModel.swift
//  NotificationSample
//
//  Created by 김민섭 on 2022/11/12.
//

import Foundation
import SwiftUI

class NotificationViewModel: ObservableObject {
    
    @Published var items: [NotificationModel] = []
    @Published var type: NotificationType = .message
    
    init() {
        self.items = getNotifications()
    }
    
    private func getNotifications() -> [NotificationModel] {
        var items: [NotificationModel] = []
        (0..<10).forEach { index in
            let model = NotificationModel(title: "\(self.type.rawValue) title \(index)",
                                          message: "\(self.type.rawValue) message \(index)",
                                          time: "\(self.type.rawValue) time \(index)")
            items.append(model)
        }
        return items
    }
    
    func setType(type: NotificationType) {
        self.type = type
        self.items = getNotifications()
    }
}

enum NotificationType: String {
    case message, paperplane
}
