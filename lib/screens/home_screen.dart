import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_library/consttants.dart';
import 'package:online_library/widgets/book_rating.dart';
import 'package:online_library/widgets/two_side_rounded_button.dart';
import '../widgets/ReadingListCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                    padding: EdgeInsets.symmetric(horizontal: 24),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall,
                        children: [
                          TextSpan(text: "Best of the"),
                          TextSpan(
                            text: " day",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]
                      ),
                      ),
                      bestOfTheDayCard(size, context),
                      RichText(
                        text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall,
                        children: [
                          TextSpan(text: "Continue "),
                          TextSpan(text: "Reading...",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))
                        ]
                      ),),
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
                              color: Color(0xFFD3D3D3).withOpacity(0.84),
                            ),
                          ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(38.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30, right: 20),
                                  child: Row(
                                  children: [
                                    Expanded(child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Crushing",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                        Text("Aythor Name", 
                                        style: TextStyle(color: kLightBlackColor,),),
                                        Align(alignment: Alignment.bottomRight,
                                        child: Text("Chapter 7 of 10", style: TextStyle(
                                          fontSize: 10,
                                          color: kLightBlackColor,
                                        ),),),
                                        SizedBox(height: 5,),
                                      ],
                                    ),),
                                    Image.asset("assets/images/book-1.png"),
                                  ],
                              ),
                                ),),
                              Container(
                                height: 7,
                                width: size.width * .6,
                                decoration: BoxDecoration(
                                  color: kProgressIndicator,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40,)
                    ],
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                height: 235,
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
                      height: 185,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA).withOpacity(.45),
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bangladesh - 7th March of 1971",
                          style: TextStyle(
                            fontSize: 11,
                            color: kLightBlackColor,
                          ),),
                          SizedBox(height: 5,),
                          Text("Declaration of independence\nBangladesh",
                          style: Theme.of(context).textTheme.titleMedium,),
                          SizedBox(
                                height: 5,
                              ),
                              Text("Sheikh Mujib",
                          style: TextStyle(
                            color: kLightBlackColor,
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              BookRating(score: 4.8),
                              SizedBox(width: 10,),
                              Expanded(child: Text("Best book ever. Very inspirational.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Image.asset("assets/images/book-3.png"),
                    width: size.width * .37,),

                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: SizedBox(
                      height: 40,
                      width: size.width * .3,
                      child: TwoSideRoundedButton(
                        text: "Read", 
                        press: () {}, 
                        radious: 24,),
                    ))
                  ],
                ),
              );
  }
}

