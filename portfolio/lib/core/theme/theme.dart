// lib/core/theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // 라이트 테마
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // 색상 팔레트: 필요하면 세부 색상 직접 설정
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo, brightness: Brightness.light),

    // 전역 폰트: Pretendard (self-hosted, pubspec.yaml에 등록되어 있어야 함)
    fontFamily: 'Pretendard',

    // 텍스트 테마:
    // - body(본문)는 Pretendard (fontFamily로 설정되므로 기본 TextTheme에 적용됨)
    // - heading(타이틀)만 GoogleFonts.poppins로 덮어씀(가독성 / 디자인 목적)
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      // 앱 전역에서 headlineLarge/Medium을 Poppins로 사용
      headlineLarge: GoogleFonts.poppins(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      // bodyLarge / bodyMedium은 Pretendard(기본 fontFamily)로 사용하려면
      // copyWith로 바꾸지 않으면 fontFamily가 전역 fontFamily를 따릅니다.
    ),

    // 버튼 테마 통합
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.indigo),
        foregroundColor: Colors.indigo,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
    ),

    // 기타 컴포넌트 테마 추가 가능 (AppBarTheme, BottomNavigationBarTheme 등)
  );

  // 다크 테마
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
    fontFamily: 'Pretendard', // 다크도 Pretendard 사용
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineLarge: GoogleFonts.poppins(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white70),
        foregroundColor: Colors.white,
      ),
    ),
  );
}
