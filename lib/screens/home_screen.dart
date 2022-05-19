import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_library/consttants.dart';

import '../widgets/book_rating.dart';
import '../widgets/two_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * .1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: [
                  TextSpan(text: "What you want to \nlearn"),
                  TextSpan(text: " today ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ]
              )),
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReadingListCard(
                    image: 'assets/images/book-1.png', 
                    auth: 'Engr. Kamal Hossain', 
                    rating: 4.9, 
                    title: 'Web Development', 
                    pressDetails: () {  }, 
                    pressRead: () {  },),
                  ReadingListCard(
                    image: 'assets/images/book-2.png', 
                    auth: 'Jonathon Hoph', 
                    rating: 4.8, 
                    title: 'Hacking Crush Course', 
                    pressDetails: () {  }, 
                    pressRead: () {  },),
                    SizedBox(width: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final void Function() pressDetails;
  final void Function() pressRead;

  const ReadingListCard({
    Key? key, 
    required this.image, 
    required this.title, 
    required this.auth, 
    required this.rating, 
    required this.pressDetails, 
    required this.pressRead,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(29),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 33,
                  color: kShadowColor,
                )
              ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  onPressed: (){},
                  ),
                  BookRating(score: rating,),
              ],
            ),
              
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                      style: TextStyle(color: kBlackColor),
                      children: [
                        TextSpan(text: "$title\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        TextSpan(
                          text: auth,
                        style: TextStyle(
                          color: kLightBlackColor,
                        )),
                      ]
                    )),
                  ),
                  Spacer(), // this is for auto space
                  Row(
                    children: [
                      GestureDetector(
                        onTap: pressDetails,
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Details"),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: "Read",
                          press: pressRead,
                        ),
                      )
                    ],
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

