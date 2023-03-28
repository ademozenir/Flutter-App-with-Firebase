// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'repository/firebase_options.dart';
//
// void main() async {
//
//   runApp(const MaterialApp(home: HomePage()));
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Firebase"),
//       ),
//       body: Center(
//         child: FutureBuilder<FirebaseApp>(
//             future: Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform),
//             builder: (context, snapshot) {
//               if(snapshot.hasError) {
//                 return const Text("Couldn't connect Firebase 😌");
//               }else if(snapshot.hasData) {
//                 return  const Text("Connected to Firebase 😀", style: TextStyle(fontSize: 30),);
//               }else {
//                 return const Text("Connecting to Firebase ⏲", style: TextStyle(fontSize: 30),);
//               }
//             }),
//
//
//       ),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veriekleme/repository/authentication_repository/authentication_repository.dart';
import 'package:veriekleme/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:veriekleme/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:veriekleme/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:veriekleme/src/utils/theme/theme.dart';
import 'repository/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const CircularProgressIndicator(),
    );
  }
}

// class AppHome extends StatefulWidget {
//   const AppHome({super.key, required this.title});
//
//   final String title;
//
//   @

//   State<AppHome> createState() => _AppHomeState();
// }
//
// class _AppHomeState extends State<AppHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title)),
//       body: Center(
//         child: Container(
//           child: Text("Notes"),
//         ),
//       ),
//     );
//   }
// }
