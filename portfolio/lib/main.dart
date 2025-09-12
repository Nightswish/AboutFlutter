import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// 애플리케이션의 진입점 및 초기 설정
void main() {
  // // Flutter 바인딩 보장 (앱 실행 전 초기화)
  // WidgetsFlutterBinding.ensureInitialized();
  // // 전역 에러 핸들러 설정
  // ErrorWidget.builder = (FlutterErrorDetails details) {
  //   // 개발 모드에서는 기본 에러 위젯, 프로덕션에서는 사용자 친화적 에러 화면
  //   return Material(
  //     child: Container(
  //       color: Colors.white,
  //       child: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             const Icon(
  //               Icons.error_outline,
  //               color: Colors.red,
  //               size: 100,
  //             ),
  //             const SizedBox(height: 20),
  //             Text(
  //               kDebugMode 
  //                 ? '개발 중 오류 발생: ${details.exception}' 
  //                 : '죄송합니다. 예상치 못한 오류가 발생했습니다.',
  //               style: const TextStyle(
  //                 color: Colors.black,
  //                 fontSize: 16,
  //               ),
  //               textAlign: TextAlign.center,
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // };

  
  runApp(
    const PortfolioApp()
    // Riverpod의 ProviderScope로 앱 래핑
  // // - 의존성 주입 및 상태 관리를 위한 기본 설정
  //   const ProviderScope(
  //     child: MyApp(),
  //   ),
  );
}

class PortfolioApp extends StatelessWidget {
  // 생성자. super.key는 위젯 고유 식별자 같은 것
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    // build 메서드는 이 위젯이 화면에 어떻게 그려질지를 정의함.
    // context는 위젯 트리의 위치 정보를 담고 있음.

    // ✨ GoRouter 설정 ✨
    // 앱 내에서 어떤 경로(URL)로 접속했을 때 어떤 화면을 보여줄지 정의하는 부분
    final router = GoRouter(
      routes: [ // 앱의 모든 경로들 정의
        GoRoute( // 개별 경로 정의
          path: '/', // 루트 경로 ('/'는 앱의 첫 화면을 의미)
          builder: (context, state) => const HomePage(), // 이 경로로 가면 HomePage 위젯을 보여줌
        ),
        GoRoute(
          path: '/privacy', // '/privacy' 경로로 가면
          builder: (context, state) => const PrivacyPolicyPage(), // PrivacyPolicyPage를 보여줌
        ),
        GoRoute(
          path: '/terms', // '/terms' 경로로 가면
          builder: (context, state) => const TermsPage(), // TermsPage를 보여줌
        ),
        GoRoute(
          path: '/render',
          builder: (context, state) => const Render(), 
        ),
      ],
      // 이 외에도 에러 페이지, 리다이렉트 등 다양한 GoRouter 설정이 가능
    );

    // ✨ MaterialApp.router 위젯 ✨
    // 플러터 앱의 가장 기본이 되는 위젯 중 하나
    // .router를 붙인 건 GoRouter와 같은 라우팅 라이브러리를 사용할 때 쓰는 방식
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, 
      title: 'My Portfolio', // 앱 작업 관리자(Alt+Tab)나 웹 브라우저 탭에 표시될 앱의 이름
      theme: ThemeData( // 앱의 전체적인 디자인 테마를 설정
        primarySwatch: Colors.indigo, // 앱의 주요 색상을 인디고 계열로 설정. (버튼, 앱바 등에 기본 적용됨)
        fontFamily: 'Pretendard', // 앱 전체의 기본 글꼴
                                 // (이 글꼴을 사용하려면 pubspec.yaml에 폰트 에셋을 추가하고 설정해야 함!)
      ),
      routerConfig: router, // 위에서 정의한 GoRouter 설정을 연결함
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // 상태 변화 X

  @override
  Widget build(BuildContext context) {
    // Scaffold는 앱의 기본적인 시각 구조(앱바, 본문, 하단바 등)를 제공하는 위젯
    return Scaffold(
      body: Center( // 본문 내용을 화면 중앙에 배치
        child: Column( // 위젯들을 세로로 쌓을 때 쓰는 위젯
          mainAxisAlignment: MainAxisAlignment.center, // 세로축으로 위젯들을 중앙 정렬
          children: [ // Column 안에 들어갈 위젯 목록
            const Text( // 그냥 텍스트를 보여주는 위젯
              '👋 Welcome to My Portfolio!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold), // 글자 스타일 설정
            ),
            const SizedBox(height: 20), // 간격 조절용
            ElevatedButton( // 약간 튀어나온 느낌의 버튼 위젯
              onPressed: () => context.go('/privacy'),  // context.go는 GoRouter가 제공하는 화면 이동 함수
              child: const Text('Privacy Policy'), // 버튼 위에 표시될 텍스트
            ),
            ElevatedButton(
              onPressed: () => context.go('/terms'), // 버튼을 누르면 '/terms' 경로로 이동
              child: const Text('Terms of Service'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/render'), 
              child: const Text('Try Renderer Demo'),
            ),
          ],
        ),
      ),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Privacy Policy Page')), // 화면 중앙에 'Privacy Policy Page' 텍스트를 보여줌
    );
  }
}

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Terms of Service Page')),
    );
  }
}

class Render extends StatefulWidget {
  const Render({super.key});

  @override
  State<Render> createState() => _Render();
}

class _Render extends State<Render>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeIn;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _fadeIn = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward(); // 애니메이션 시작
  }

  @override
  void dispose() {
    _controller.dispose(); // 컨트롤러는 반드시 dispose 해주어야 해! 메모리 누수 방지!
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // 현재 화면 크기 가져오기

    return Scaffold(
      body: Stack( // 여러 위젯을 겹쳐서 배치할 때 사용하는 위젯
        children: [
          // 배경: 그라데이션이 적용된 Container
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient( // 선형 그라데이션
                colors: [Colors.blueAccent, Colors.purpleAccent], // 색상 지정
                begin: Alignment.topLeft, // 그라데이션 시작점 (좌측 상단)
                end: Alignment.bottomRight, // 그라데이션 끝점 (우측 하단)
              ),
            ),
          ),

          // 중앙 히어로 섹션 (페이드인 애니메이션 적용)
          Center(
            child: FadeTransition( // 불투명도를 애니메이션으로 변경하는 위젯
              opacity: _fadeIn, // 위에서 정의한 페이드인 애니메이션 사용
              child: Column( // 세로 방향으로 위젯들을 배치
                mainAxisSize: MainAxisSize.min, // 컬럼의 크기를 자식 위젯들에 맞게 최소화
                children: [
                  const HeroTitle(), // 히어로 섹션 제목 위젯
                  const SizedBox(height: 20), // 제목과 버튼 사이 간격
                  ElevatedButton(
                    style: ElevatedButton.styleFrom( // 버튼 스타일 정의
                      padding: const EdgeInsets.symmetric( // 내부 패딩
                          horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder( // 버튼 모서리 둥글게
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // 이 버튼을 누르면 HomePage로 이동하도록 GoRouter 사용
                      context.go('/'); // HomePage 경로로 이동!
                    },
                    child: const Text("Back to Home"), // 버튼 텍스트
                  ),
                  const SizedBox(height: 20),

                  // HTML 렌더러 테스트 버튼
                  ElevatedButton(
                    onPressed: () {
                      const url = "https://username.github.io/html/";
                      html.window.open(url, "_blank");
                    },
                    child: const Text("Try HTML Renderer"),
                  ),
                  const SizedBox(height: 10),

                  // CanvasKit 렌더러 테스트 버튼
                  ElevatedButton(
                    onPressed: () {
                      const url = "https://username.github.io/canvaskit/";
                      html.window.open(url, "_blank");
                    },
                    child: const Text("Try CanvasKit Renderer"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 히어로 섹션의 제목 위젯
class HeroTitle extends StatelessWidget {
  const HeroTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero( // 위젯 간의 시각적 연결 애니메이션 (다른 화면으로 전환될 때 유용)
      tag: "Rendering Page", // 고유 태그 (같은 태그를 가진 다른 화면의 위젯과 연결됨)
      child: Material( // 텍스트 위젯에 Material 디자인 효과 (그림자 등)를 적용하기 위해 감싸줌
        color: Colors.transparent, // Material 위젯의 배경을 투명하게 설정
        child: Text(
          "Check Rendering",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins( // Google Fonts의 Poppins 글꼴 사용 (개별 위젯에서 폰트 오버라이드)
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [ // 텍스트에 그림자 효과 추가
              Shadow(
                blurRadius: 8,
                color: Colors.black.withOpacity(0.5), // 검은색에 50% 불투명도
                offset: const Offset(2, 2), // 그림자 위치 (x, y)
              )
            ],
          ),
        ),
      ),
    );
  }
}

// 애플리케이션의 루트 위젯
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // 앱 기본 설정
//       title: 'Flutter Demo',
//       // 디버그 배너 제거
//       debugShowCheckedModeBanner: false,
//       // 기본 테마 설정 (임시)
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         // 기본 색상 스키마
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.blue,
//           brightness: Brightness.light,
//         ),
//         // 머티리얼 디자인 3 활성화
//         useMaterial3: true,
//       ),
//       // 다크 테마 (선택적)
//       darkTheme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.blue,
//           brightness: Brightness.dark,
//         ),
//         useMaterial3: true,
//       ),
//       // 테마 모드 (라이트 모드)
//       themeMode: ThemeMode.light,
//       // 초기 홈 페이지
//       home: const HomeScreen(),
//       // home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// // 임시 홈
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('DEv Start'),
//       ),
//       body: const Center(
//         child: Text(
//           '개발 시작!',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
