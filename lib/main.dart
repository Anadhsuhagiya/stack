//
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:stack/first.dart';
//
// import 'Model.dart';
//
// Future<void> main()
// async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//
//   Model.prefs = await SharedPreferences.getInstance();
//
//   int reg = Model.prefs!.getInt('registered') ?? 0;
//
//   runApp(
//     reg == 0 ?
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Login(),
//     ) : MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: first(),
//     ),
//   );
// }






import 'package:flutter/material.dart';
import 'package:stack/first.dart';
import 'package:lottie/lottie.dart';
import 'package:stack/third.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _control;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _control = AnimationController(vsync: this, duration: Duration(seconds: 3));
    _control.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return first();
          },
        ));
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _control.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030165),
        body: Center(
      child: Lottie.network(
        'https://assets1.lottiefiles.com/packages/lf20_hsis9re9.json',
        controller: _control,
        repeat: false,
        onLoaded: (composition) {
          _control.duration = composition.duration;
          _control.forward();
        },
      ),
    ));
  }
}
