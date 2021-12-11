import 'package:electride_user/Screens/Delivery_item.dart';
import 'package:electride_user/Screens/Language_select_screen.dart';
import 'package:electride_user/Screens/LoginScreen.dart';
import 'package:electride_user/Screens/OtpScreen.dart';
import 'package:electride_user/Screens/MainScreen.dart';
import 'package:electride_user/Screens/SplashScreen.dart';
import 'package:electride_user/Screens/UserDetails.dart';
import 'package:electride_user/Screens/drawer.dart';
import 'package:electride_user/Screens/search_location.dart';
import 'package:electride_user/widgets/Bottom_Bar.dart';
import 'package:electride_user/widgets/common_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'common.dart';

Future<void> main() async {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
    //   MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   localizationsDelegates: AppLocalizations.localizationsDelegates,
    //   // important
    //   supportedLocales: AppLocalizations.supportedLocales,
    //   home: SplashScreen(),
    //   //initialRoute: '/language',
    //   routes: <String, WidgetBuilder>{
    //     LanguageSelectScreen.Route: (BuildContext context) =>
    //         LanguageSelectScreen(),
    //     LoginScreen.Route: (BuildContext context) => LoginScreen(),
    //     OtpScreen.Route: (BuildContext context) => OtpScreen(),
    //     MainScreen.Route: (BuildContext context) => MainScreen(),
    //     UserDetails.Route: (BuildContext context) => UserDetails(),
    //   },
    // );
    FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 1)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: SplashScreen());
        } else {
          // Loading is done, return the app:
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<CommonWidget>(
                  create: (_) => CommonWidget()),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              // important
              supportedLocales: AppLocalizations.supportedLocales,
              home: PickDrop(),
              //initialRoute: '/language',
              routes: <String, WidgetBuilder>{
                LanguageSelectScreen.Route: (BuildContext context) =>
                    LanguageSelectScreen(),
                LoginScreen.Route: (BuildContext context) => LoginScreen(),
                OtpScreen.Route: (BuildContext context) => OtpScreen(),
                MainScreen.Route: (BuildContext context) => MainScreen(),
                UserDetails.Route: (BuildContext context) => UserDetails(),
              },
            ),
          );
        }
      },
    );
  }
}
