//
//  ContentView.swift
//  SwiftUI_Webview_tutorial_#1
//
//  Created by 이예직 on 2021/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MyWebView(urlToLoad: "https://www.naver.com/")
        
        NavigationView{
            HStack{
                NavigationLink(destination: MyWebView(urlToLoad: "https://naver.com")
                                .edgesIgnoringSafeArea(.all)){
                    Text("네이버")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                    
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://google.com")
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){
                    Text("구글")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://daum.net")
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){
                    Text("다음")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
