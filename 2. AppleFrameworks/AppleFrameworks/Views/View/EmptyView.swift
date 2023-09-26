//
//  EmptyView.swift
//  AppleFrameworks
//
//  Created by Oleksii Mykhailenko on 15.09.2023.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            Spacer()
            Text("🤷‍♂️")
                .font(.system(size: 100))
            Text("Something goes wrong")
            Spacer()
        }.background(.orange.opacity(0.1))
    }

}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
