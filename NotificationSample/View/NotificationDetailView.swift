//
//  NotificationDetailView.swift
//  NotificationSample
//
//  Created by 김민섭 on 2022/11/13.
//

import SwiftUI

struct NotificationDetailView: View {
    
    var model: NotificationModel
    @State var isShowAlert = false
    
    var body: some View {
        VStack {
            Image("sample_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
//            Spacer()
            Button("Alert") {
                isShowAlert = true
            }.alert(model.message, isPresented: $isShowAlert) {
                Button("OK", role: .cancel) {
                    isShowAlert = false
                }
            }.padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NotificationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationDetailView(model: NotificationModel(title: "title", message: "message", time: "times"))
    }
}
