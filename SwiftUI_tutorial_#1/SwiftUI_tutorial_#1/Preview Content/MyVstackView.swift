//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 이예직 on 2021/06/20.
//

import SwiftUI

struct MyVstackView: View{
    // 데이터 연동시킬 바인딩 방법
    @Binding
    var isActivated : Bool
    
    init(_ abc: Binding<Bool> = .constant(false)) {
         _isActivated = abc
    }
    
    var body: some View{
        VStack{
            Text("git test")
            Text("git test")
            Text("git test")
        }.background(isActivated ? Color.green : Color.blue)
    }
}


struct MyVstackView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            MyVstackView()
        }
    }
}
