//
//  MyWebView.swift
//  SwiftUI_Webview_tutorial_#1
//
//  Created by 이예직 on 2021/06/21.
//

import SwiftUI
import WebKit


//uikit의 uiview를 사용할 수 있도록 한다.
struct MyWebView: UIViewRepresentable{
    
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
        
        return webview
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com/")
    }
}
