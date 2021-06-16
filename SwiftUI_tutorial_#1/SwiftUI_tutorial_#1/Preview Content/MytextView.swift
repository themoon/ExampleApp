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
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            Spacer()
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
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
