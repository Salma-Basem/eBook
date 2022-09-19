import 'package:flutter/material.dart';
import 'package:onlinebook/constants.dart';
import 'package:onlinebook/widgets/bookRating.dart';
import 'package:onlinebook/widgets/TwoSideRoundedButton.dart';
import 'package:onlinebook/widgets/ReadingCardList.dart';
import 'package:onlinebook/screens/detailsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
      width: double.infinity,
      decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/l.jpg'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth)),
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * .1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.displaySmall,
                          children: [
                        TextSpan(text: "What are you \n reading"),
                        TextSpan(
                            text: " today?",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:<Widget> [
                      ReadingListCard(image: "assets/book.jpg",
                        title: "Heart Bones",
                        auth: "Colleen Hover",
                      rating: 4.9,
                      pressDetails: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        {
                          return detailsScreen();
                        }));},),
                      ReadingListCard(image: "assets/b3.jpg",
                          title: "Reminders of him",
                          auth: "Colleen Hover",
                          rating: 4.8),
                      SizedBox(height: 10),

                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      RichText(text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall,
                        children: [
                          TextSpan(text: "Best of the "),
                          TextSpan(text: "day ",style: TextStyle(fontWeight: FontWeight.bold,)),
                        ]
                      )),
                      bestOfTheDayCard(size,context),
                      RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                              TextSpan(text:"Continue "),
                              TextSpan(text:"reading...",style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 80,
                        width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(38.5),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 33,
                            color: Color(0xFFD3D3D3).withOpacity(.84),
                          )
                        ]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child:Padding(
                                padding:  EdgeInsets.only(left: 30,right:20),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Heart Bones",style: TextStyle(fontWeight: FontWeight.bold,)),
                                      Text("Colleen Hoover",style: TextStyle(color: kLightBlackColor)),
                                      Align(alignment: Alignment.bottomRight,
                                      child: Text("Chapter 7 of  20",style: TextStyle(fontSize: 10,color: kLightBlackColor))),
                                        SizedBox(height: 5)
                                      ],
                                    )),
                                    Image.asset("assets/book.jpg",width: 60,)
                                  ],
                                ))),
                            Container(
                              height: 7,
                              width: size.width*.65,
                            decoration: BoxDecoration(
                              color: kProgressColor,
                              borderRadius: BorderRadius.circular(7)
                            ),)
                          ],
                        ),
                      ),
                      ),
                      SizedBox(height: 40)
                    ],
                  ),
                )
              ],
      ),
    ),
            ],
          ),
        ));
  }
}

Container bestOfTheDayCard(Size size,BuildContext context){
  return  Container(
    margin: EdgeInsets.symmetric(vertical: 0),
    width: double.infinity,
    height: 190,
    child: Stack(
      children: <Widget> [
        Positioned(
            bottom:0,
            left:0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left:24,top:24,right: size.width*.35),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("New York Time Best For 11th March 2019",style: TextStyle(fontSize: 10,color: kLightBlackColor),
                  ),
                  SizedBox(height: 5),
                  Text("Confess",style: Theme.of(context).textTheme.titleMedium,),
                  Text("Colleen Hoover",style: TextStyle(color: kLightBlackColor),),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      BookRating(score: 4.9),
                      SizedBox(width: 10),
                      Expanded(
                          child: Text("When the earth was flat and everyone wanted to win the game  of the best and people..",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10,
                                color: kLightBlackColor),))
                    ],
                  )
                ],
              ),
            )),
        Positioned(
            right: 0,
            bottom: 4 ,
            //    top:0,
            child: Image.asset("assets/b2.jpg",width: size.width *.3,height: size.height*.3,)),
        Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 35,
              width: size.width*.3,
              child: TwoSideRoundedButton(text: "Read",radious: 24,press: (){},),
            ))
      ],
    ),
  );
}

