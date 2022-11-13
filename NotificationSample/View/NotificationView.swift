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
        NavigationView {
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        Button {
                            viewModel.setType(type: .message)
                        } label: {
                            Image(systemName: "message")
                                .frame(width: 40, height: 40)
                        }.frame(maxWidth: .infinity, maxHeight: 50)
                        Line(selected: viewModel.type == .message)
                    }
                    VStack(spacing: 0) {
                        Button {
                            viewModel.setType(type: .paperplane)
                        } label: {
                            Image(systemName: "paperplane")
                        }.frame(maxWidth: .infinity, maxHeight: 50)
                        Line(selected: viewModel.type == .paperplane)
                    }
                    
                }.frame(maxWidth: .infinity)
                    .padding([.leading, .trailing])
                List {
                    ForEach(viewModel.items) { model in
                        NavigationLink {
                            NotificationDetailView(model: model)
                        } label: {
                            NotificationCell(title: model.title,
                                             message: model.message,
                                             time: model.time)
                        }
                    }
                }.listStyle(.plain)
            }.navigationBarHidden(true)
        }
    }
}

struct Line: View {
    
    let selected: Bool
    
    var body: some View {
        selected ? Color.blue.frame(height: 1) : Color.gray.frame(height: 1)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
