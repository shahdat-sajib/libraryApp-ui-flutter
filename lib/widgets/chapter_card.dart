import 'package:flutter/material.dart';
import 'package:online_library/widgets/rounded_button.dart';

import '../consttants.dart';
import 'book_rating.dart';


class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;

  const ChapterCard({
    Key? key, 
    
    required this.name, 
    required this.tag, 
    required this.chapterNumber, 
    required this.press, required Size size,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 33,
              color: Color(0xFFD3D3D3).withOpacity(.84),
            )
          ]),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Chapter $chapterNumber: $name\n",
                style: TextStyle(
                  fontSize: 16,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
              text: tag,
              style: TextStyle(
                color: kLightBlackColor,
              ),
            ),
          ])),
          Spacer(),
          IconButton(
            onPressed: press(),
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
          children: [
            Text(
              "Sample text for book detauils....",
              maxLines: 5,
              style: TextStyle(
                fontSize: 10,
                color: kLightBlackColor,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            RoundedButton(
              text: "Read",
              press: () {},
              verticalPadding: 10,
            ),
          ],
        )),
        Column(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            BookRating(score: 4.9),
          ],
        )
      ],
    );
  }
}
