//
//  TimerView.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct TimerView : View{
    @State var timeRemaining = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Text("\(timeRemaining)")
            .onReceive(timer) { _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                }
            }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
