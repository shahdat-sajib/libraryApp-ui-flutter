import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_library/consttants.dart';
import 'package:online_library/widgets/book_rating.dart';
import 'package:online_library/widgets/rounded_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.fitWidth,),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * .1,),
                        Row(
                          
                          children: [
                            Expanded(child: 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Book Name",
                                style: Theme.of(context).textTheme.displaySmall,),
                                Text("Bolder part",
                                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5,),
                                BookInfo(),
                              ],
                            ),),
                            Image.asset("assets/images/book-1.png",
                            height: 200,)
                          ],
                        )
                      ],
                    ),
                    ),
                ),
              ],
            )
          ],
        ),
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
        Expanded(child: Column(
          children: [
            Text("Sample text for book detauils....",
            maxLines: 5,
            style: TextStyle(
              fontSize: 10,
              color: kLightBlackColor,
            ),),
            SizedBox(height: 5,),
            RoundedButton(
              text: "Read", 
              press: () {},
              verticalPadding: 10,
              ),
          ],
        )),
        Column(
          children: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.favorite_border)),
              BookRating(score: 4.9),
          ],
        )
      ],
    );
  }
}