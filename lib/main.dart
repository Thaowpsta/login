import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            Text(
              'Welcome to the app',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            SizedBox(height: 10,),
            Text(
                'We\'re excited to help you book and manage your service appointments with ease.',
              style: TextStyle(color: Colors.grey, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25,),
            SmoothPageIndicator(
                controller: PageController(initialPage: 0),
                count: 3,
              effect: SlideEffect(
                dotHeight: 6,
                dotWidth: 6,
                activeDotColor: Color(0xFF0D47A1),
                dotColor: Colors.grey,
              ),
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    print('Logged in Successfully');
                  },
                    child: Text(
                        'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text('Create an acount', style: TextStyle(color: Colors.blue[900], fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
