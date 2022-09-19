import 'package:flutter/material.dart';
import 'package:onlinebook/widgets/bookRating.dart';
import 'package:onlinebook/constants.dart';
import 'package:onlinebook/widgets/RoundedButton.dart';

class detailsScreen extends StatelessWidget {
  const detailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height*.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/l.jpg"),
                    fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget> [
                        SizedBox(height: size.height*.1),
                        Row(
                          children: <Widget>[
                            Expanded(child: Column(
                              children: <Widget>[
                        //        Text("Heart",style: Theme.of(context).textTheme.displaySmall),
                                Text("Heart Bones",style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold)),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                   Expanded(child: Column(
                                     children: <Widget>[
                                     Text("When the earth was flat and everyone wanted to win the game  of the best and people..",
                                       maxLines: 3,
                                       style: TextStyle(fontSize: 13,color: kLightBlackColor),),
                                       SizedBox(height: 5),
                                       RoundedButton(text: "Read", press: (){},verticalPadding: 10,)
                                     ],
                                   )),
                                    Column(
                                      children: [
                                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                                        BookRating(score: 4.9)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                            Image.asset("assets/book.jpg",
                              height: 180,)
                          ],
                        )
                      ]
                  ),
                )
                ),
              Padding(
                  padding: EdgeInsets.only(top: size.height*.4-17),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ChapterCard(name: "Money",
                  tag: "Life is about to change",
                  chapterNumber: 1,
                  press: (){},),
                  ChapterCard(name: "Power",
                    tag: "Everything loves power",
                    chapterNumber: 2,
                    press: (){},),
                  ChapterCard(name: "Influence",
                    tag: "Influence easily like never before",
                    chapterNumber: 3,
                    press: (){},),
                  ChapterCard(name: "Win",
                    tag: "Winning is about what matters",
                    chapterNumber: 4,
                    press: (){},),
                  SizedBox(height: 10,)

                ],
              ),)],
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
               [
                 RichText(
                     text: TextSpan(
                       style: Theme.of(context).textTheme.displaySmall,
   children: [
     TextSpan(
       text: "Similar "),
     TextSpan(
         text: "Books... ",style: TextStyle(fontWeight: FontWeight.bold)),
   ])),
                 SizedBox(height: 20),
                 Stack(
                   children: [
                     Container(
                       height: 180,
                     width: double.infinity,
                     ),
                     Positioned(
                         bottom: 0,
                         left: 0,
                         right: 0,
                         child: Container(
                           padding: EdgeInsets.only(left: 24,top: 24,right: 150),
                       height:160,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(29),
                         color: Color(0xFFFFF8F9)
                       ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             //mainAxisAlignment:  MainAxisAlignment.start,
                             children: [
                               RichText(text: TextSpan(
                                   style:TextStyle(color: kBlackColor),
                               children: [
                                 TextSpan(
                                   text: "Confess\n",style: TextStyle(fontSize: 30)
                                 ),
                                 TextSpan(
                                     text: "Colleen Hoover",style: TextStyle(color: kLightBlackColor)
                                 ),

                               ])),
                               Row(
                                 children: [BookRating(score: 4.9),
                                 SizedBox(width: 20),
                                 Expanded(child: RoundedButton(text: "Read",verticalPadding: 10,press: (){},))],
                               )
                             ],
                           ),
                     )),
                     Positioned(
                         bottom: 0,
                        right: 10,
                         child: Image.asset("assets/b2.jpg",width: 150,))
                   ],
                 )

            ],
            ),),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
class ChapterCard extends StatelessWidget {

  final String name;
  final String tag;
  final int chapterNumber;
  final press;
  const ChapterCard({Key? key,required this.name, required this.tag, required this.chapterNumber, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      margin:  EdgeInsets.only(bottom: 16),
      width: size.width-48,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
                offset: Offset(0,10),
                blurRadius: 33,
                color: Color(0xFFD3D3D3).withOpacity(.84))
          ]
      ),
      child: Row(
        children: [
          RichText(text: TextSpan(
              children: [
                TextSpan(
                    text: "Chapter $chapterNumber:$name\n",
                    style:TextStyle(
                        fontSize: 16,
                        color:kBlackColor,
                        fontWeight: FontWeight.bold
                    )
                ),
                TextSpan(
                    text: tag,
                    style:TextStyle(
                        fontSize: 16,
                        color:kLightBlackColor)),

              ])),
          Spacer(),
          IconButton(onPressed: press, icon: Icon(Icons.arrow_forward_ios,size: 18,))
        ],
      ),);
  }
}
