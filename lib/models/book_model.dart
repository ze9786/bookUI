import 'review_model.dart';

class Book{
  String imageUrl;
  String name;
  String author;
  int price;
  String description;
  List<Review> reviews;

  Book({
    this.imageUrl,
    this.name,
    this.author,
    this.price,
    this.description,
    this.reviews,
});
}

List<Review> reviews=[
  Review(
    user: 'Peter',
    comment: 'good book'
  ),
  Review(
    user: 'Mary',
    comment: 'bad'
  )
];

List<Book> books=[
  Book(
    imageUrl: "/assets/images/croft_hills.jpg",
    name: "croft hills",
    author: "aaa",
    price: 50,
    description: "asdfqwior ter aosidjf o;ir"
  ),
  Book(
      imageUrl: "/assets/images/croft_hills.jpg",
      name: "croft hills",
      author: "aaa",
      price: 50,
      description: "asdfqwior ter aosidjf o;ir"
  ),
  Book(
      imageUrl: "/assets/images/croft_hills.jpg",
      name: "croft hills",
      author: "aaa",
      price: 50,
      description: "asdfqwior ter aosidjf o;ir"
  ),
  Book(
      imageUrl: "/assets/images/croft_hills.jpg",
      name: "croft hills",
      author: "aaa",
      price: 50,
      description: "asdfqwior ter aosidjf o;ir"
  ),
  Book(
      imageUrl: "/assets/images/croft_hills.jpg",
      name: "croft hills",
      author: "aaa",
      price: 50,
      description: "asdfqwior ter aosidjf o;ir"
  ),
];