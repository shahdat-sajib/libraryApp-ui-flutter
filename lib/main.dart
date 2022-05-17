import 'package:flutter/material.dart';
import 'package:online_library/consttants.dart';
import 'package:online_library/screens/home_screen.dart';
import 'package:online_library/widgets/rounded_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Library',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
            ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displayMedium,
                children: [
                  TextSpan(
                  text: "@",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                  text: " Library",
                  ),
                  ],
              ),),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: RoundedButton( 
                  text: "Tap to Start", 
                  fontSize: 20, 
                  press: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                        ),
                        );
                        })),
                  
          ],
        ),
      ),
    );
  }
}

