// import 'package:flutter/foundation.dart';
// import 'package:logger/logger.dart';

// /// 애플리케이션 전역 로깅 유틸리티 클래스
// /// 개발 및 디버깅 과정에서 체계적인 로깅 메커니즘 제공
// class AppLogger {
//   /// Logger 인스턴스 생성
//   /// - PrettyPrinter: 로그 출력 포맷팅
//   /// - 개발 모드에 따라 로깅 레벨 동적 설정
//   static final Logger _logger = Logger(
//     /// 로그 출력 스타일 및 포맷 설정
//     printer: PrettyPrinter(
//       /// 로그 메서드 스택 추적 깊이 (2개의 메서드 정보 표시)
//       methodCount: 2,
      
//       /// 에러 발생 시 출력할 스택 트레이스 라인 수
//       errorMethodCount: 5,
      
//       /// 로그 라인 최대 길이
//       lineLength: 120,
      
//       /// 콘솔 출력 시 컬러 사용 여부
//       colors: true,
      
//       /// 이모지 출력 여부
//       printEmojis: true,
//     ),

//     /// 로깅 레벨 설정
//     /// - 디버그 모드: 상세 로깅 (개발 환경)
//     /// - 릴리즈 모드: 경고 이상만 로깅 (프로덕션 환경)
//     level: kDebugMode ? Level.debug : Level.warning,
//   );

//   /// 디버그 로그 (가장 상세한 로깅)
//   /// [message]: 로깅할 메시지
//   /// 개발 중 세부 정보 추적에 사용
//   static void debug(dynamic message) {
//     _logger.d(
//       '🔍 DEBUG: $message', // 이모지로 로그 타입 시각화
//       time: DateTime.now(), // 로그 발생 시간 기록
//     );
//   }

//   /// 정보성 로그
//   /// [message]: 로깅할 메시지
//   /// 주요 애플리케이션 이벤트 추적에 사용
//   static void info(dynamic message) {
//     _logger.i(
//       '💡 INFO: $message', // 이모지로 로그 타입 시각화
//       time: DateTime.now(),
//     );
//   }

//   /// 경고 로그
//   /// [message]: 로깅할 메시지
//   /// 잠재적 문제나 예상치 못한 상황 알림에 사용
//   static void warning(dynamic message) {
//     _logger.w(
//       '⚠️ WARNING: $message', // 이모지로 로그 타입 시각화
//       time: DateTime.now(),
//     );
//   }

//   /// 에러 로그
//   /// [message]: 로깅할 메시지
//   /// [stackTrace]: 선택적 스택 트레이스
//   /// 심각한 오류 상황 기록에 사용
//   static void error(dynamic message, {StackTrace? stackTrace}) {
//     _logger.e(
//       '❌ ERROR: $message', // 이모지로 로그 타입 시각화
//       error: message,
//       stackTrace: stackTrace,
//       time: DateTime.now(),
//     );
//   }

//   /// JSON 데이터 로깅 (디버깅에 유용)
//   /// [tag]: 로그 구분을 위한 태그
//   /// [json]: 로깅할 JSON 데이터
//   static void logJson(String tag, Map json) {
//     _logger.d(
//       '📦 JSON[$tag]: ${json.toString()}',
//       time: DateTime.now(),
//     );
//   }

//   /// 네트워크 요청/응답 로깅
//   /// [method]: HTTP 메서드 (GET, POST 등)
//   /// [url]: 요청 URL
//   /// [statusCode]: 응답 상태 코드
//   /// [responseTime]: 요청 소요 시간
//   static void networkLog({
//     required String method,
//     required String url,
//     int? statusCode,
//     Duration? responseTime,
//   }) {
//     _logger.i(
//       '🌐 NETWORK: $method $url '
//       'Status: ${statusCode ?? "N/A"} '
//       'Time: ${responseTime?.inMilliseconds}ms',
//       time: DateTime.now(),
//     );
//   }
// }

// /// 사용 예시
// void exampleUsage() {
//   // 기본 로깅
//   AppLogger.debug('앱 초기화 시작');
//   AppLogger.info('사용자 로그인 성공');
//   AppLogger.warning('디스크 여유 공간 부족');
//   AppLogger.error('네트워크 연결 실패', stackTrace: StackTrace.current);

//   // JSON 로깅
//   AppLogger.logJson('user_data', {
//     'id': '12345',
//     'name': '홍길동',
//     'email': 'hong@example.com'
//   });

//   // 네트워크 로깅
//   AppLogger.networkLog(
//     method: 'GET',
//     url: 'https://api.example.com/users',
//     statusCode: 200,
//     responseTime: Duration(milliseconds: 150)
//   );
// }