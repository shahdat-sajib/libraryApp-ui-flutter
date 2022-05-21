import 'package:flutter/material.dart';
import 'package:online_library/widgets/rounded_button.dart';

import '../consttants.dart';
import 'book_rating.dart';


class ChapterCard extends StatelessWidget {
  const ChapterCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
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
                text: "Chapter 1: Money\n",
                style: TextStyle(
                  fontSize: 16,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
              text: "Life is all about change",
              style: TextStyle(
                color: kLightBlackColor,
              ),
            ),
          ])),
          Spacer(),
          IconButton(
            onPressed: () {},
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
