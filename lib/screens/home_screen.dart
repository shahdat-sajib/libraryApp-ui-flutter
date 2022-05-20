import 'package:flutter/material.dart';
import 'package:online_library/consttants.dart';
import '../widgets/ReadingListCard.dart';

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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
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
                Container(
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
                              fontSize: 9,
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
                            SizedBox(height: 5,),
                          ],
                        ),
                      ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset("assets/images/book-3.png"),
                      width: size.width * .37,)
                    ],
                  ),
                ),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

