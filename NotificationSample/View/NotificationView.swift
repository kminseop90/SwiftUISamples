//
//  NotificationView.swift
//  NotificationSample
//
//  Created by 김민섭 on 2022/11/12.
//

import SwiftUI

struct NotificationView: View {
    
    @ObservedObject var viewModel = NotificationViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        Button {
                            viewModel.setType(type: .message)
                        } label: {
                            Image(systemName: "message")
                                .frame(width: 40, height: 40)
                        }.frame(maxWidth: .infinity, maxHeight: 50)
                        messageLine()
                    }
                    VStack(spacing: 0) {
                        Button {
                            viewModel.setType(type: .paperplane)
                        } label: {
                            Image(systemName: "paperplane")
                        }.frame(maxWidth: .infinity, maxHeight: 50)
                        paperPlaneLine()
                    }
                    
                }.frame(maxWidth: .infinity)
                .padding([.leading, .trailing])
            List {
                ForEach(viewModel.items, id: \.self) { model in
                    NotificationCell(title: model.title,
                                     message: model.message,
                                     time: model.time)
                }
            }.listStyle(.plain)
            
        }
    }
    
    func messageLine() -> some View {
        if viewModel.type == .message {
            return Color.blue.frame(height: 1)
        } else {
            return Color.gray.frame(height: 1)
        }
    }
    
    func paperPlaneLine() -> some View {
        if viewModel.type == .paperplane {
            return Color.blue.frame(height: 1)
        } else {
            return Color.gray.frame(height: 1)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
