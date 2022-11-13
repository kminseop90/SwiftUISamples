//
//  NotificationModel.swift
//  NotificationSample
//
//  Created by 김민섭 on 2022/11/12.
//

import Foundation

struct NotificationModel: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let time: String
}
