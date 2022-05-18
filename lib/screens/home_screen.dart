import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_library/consttants.dart';

import '../widgets/book_rating.dart';

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
            Container(
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
                    "assets/images/book-1.png",
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
                          BookRating(score: 4.9,),
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
                            child: RichText(text: TextSpan(
                              style: TextStyle(color: kBlackColor),
                              children: [
                                TextSpan(text: "Data Structure\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                TextSpan(text: "Engr. Kamal Hossen",
                                style: TextStyle(
                                  color: kLightBlackColor,
                                )),
                              ]
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

