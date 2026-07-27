import SwiftUI
import WebKit

@main
struct VerifikoApp: App {
    var body: some Scene {
        WindowGroup {
            WebView(url: URL(string: "https://fake-news-detector-shqip-2jjmg6l3uqqjs2mjpg3wkr.streamlit.app/")!)
                .ignoresSafeArea()
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
