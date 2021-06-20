//
//  MytextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 이예직 on 2021/06/17.
//

import SwiftUI

struct MyTextView: View {
    
        @State
        private var index : Int = 0
        
        @Binding
        var isActivated : Bool
        
        init(_ abc: Binding<Bool> = .constant(false)) {
             _isActivated = abc
        }
    
    private let backgroundColors = [
        Color.blue,
        Color.red,
        Color.blue,
        Color.yellow,
        Color.green
    ]
    
    var body: some View {
        VStack{
            Spacer()
            Text("hi yejik")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Text("활성화 상태 : \(String(isActivated))")
                .foregroundColor(isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            Spacer()
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.bottom)
        .onTapGesture{
            if(index == backgroundColors.count - 1){
                index = 0
            }else{
                index = index + 1
            }
            
            
        }
    }
    
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MyTextView()
        }
    }
}
