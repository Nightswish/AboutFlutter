/// 웹이 아닐 때는 단순히 로그만 찍습니다.
/// 필요하면 url_launcher 같은 패키지를 써서 모바일/데스크톱도 지원 가능.
void openUrl(String url) {
  print("openUrl('$url') is not supported on this platform.");
}
