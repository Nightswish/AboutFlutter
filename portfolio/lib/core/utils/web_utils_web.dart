import 'package:web/web.dart' as html; 

/// 웹 전용 openUrl 함수
void openUrl(String url) {
  html.window.open(url, "_blank");
}
