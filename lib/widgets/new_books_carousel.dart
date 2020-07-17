import 'package:bookui/models/new_book_model.dart';
import 'package:flutter/material.dart';
import 'package:bookui/screens/home_screen.dart';

class NewBooksCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
           itemCount: newBooks.length,
           scrollDirection: Axis.horizontal,
           shrinkWrap: true,
           primary: false,
           itemBuilder: (BuildContext context, int index){
           NewBook newBook=newBooks[index];
           return Container(
             height: 200,
             width: 200,
             padding: EdgeInsets.all(10),
             child: ClipRRect(
               borderRadius: BorderRadius.circular(20),
               child: Image(image: AssetImage(newBook.imageUrl), fit: BoxFit.cover,),
             ),
           );
         },
      ),
    );

//      Row(
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      children: <Widget>[
//        Expanded(
//          child: Container(
//            height:200,
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(20),
//              color: Colors.pink,
//            ),
//          ),
//        ),
//        SizedBox(width: 20,),
//        Expanded(
//          child: Container(
//            height:200,
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(20),
//              color: Colors.pink,
//            ),
//          ),
//        ),
//      ],
//    );
  }
}
