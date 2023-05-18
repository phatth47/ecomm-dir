import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShopifyScreen extends StatefulWidget {
  const ShopifyScreen({Key? key}) : super(key: key);

  @override
  State<ShopifyScreen> createState() => _ShopifyScreenState();
}

class _ShopifyScreenState extends State<ShopifyScreen> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://flutter.dev')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://shopee.vn/'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopee'),
        backgroundColor: const Color(0xffee4d2d),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
