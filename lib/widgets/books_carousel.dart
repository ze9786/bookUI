import 'package:bookui/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookui/models/book_model.dart';
import 'package:bookui/screens/home_screen.dart';

class BookCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Popular', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 20,),
        ListView.builder(
          itemCount: books.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index){
            Book book=books[index];
            return GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailsScreen(book: book,))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(image: AssetImage(book.imageUrl),
                                fit: BoxFit.fill,
                              ),
                            ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          flex:3,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(book.name, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10,),
                              Text(book.author,style: TextStyle(fontSize: 12,color: Colors.grey)),
                              SizedBox(height: 10,),
                              Text('\$${book.price}', style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ]
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
            );
          },

        ),
      ]
    );
  }
}
