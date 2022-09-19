import 'package:flutter/material.dart';
import 'package:onlinebook/screens/HomeScreen.dart';
import 'package:onlinebook/widgets/RoundedButton.dart';
import 'package:onlinebook/constants.dart';
import 'package:onlinebook/widgets/bookRating.dart';

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
      title: 'Book App',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor)
      ),
      home: WelcomeScreen()
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
          image: DecorationImage(image: AssetImage('assets/bg.jpg'),
          fit: BoxFit.fill
          )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            RichText(
                text: TextSpan(
            style: Theme.of(context).textTheme.displaySmall,
                  children: [
                    TextSpan(text:"Flamin",
                   ),
                TextSpan(text:"go",style:TextStyle(fontWeight: FontWeight.bold))
                  ]
                ),
            ),
           SizedBox(
               width: MediaQuery.of(context).size.width*.6,
               child: RoundedButton(
                   text: "Start Reading",
                   fontSize: 20,
                   press: (){
                     Navigator.push(context, MaterialPageRoute(
                         builder: (context){
                           return HomeScreen();
                         }));}))
            
          ],
        ),

      ),
    );
  }
}




