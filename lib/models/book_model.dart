import 'package:bookui/models/review_model.dart';

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

List<Review> reviews1=[
  Review(
    user: 'Peter',
    comment: 'good book'
  ),
  Review(
    user: 'Mary',
    comment: 'bad'
  ),
  Review(
      user: 'Yoyo Chan',
      comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales leo dui, at lobortis eros bibendum eu. Phasellus vestibulum eu eros in dictum. Aliquam ullamcorper eleifend justo, in dapibus felis volutpat vel. Sed at gravida turpis. Sed tempus euismod metus eu vulputate. Curabitur a tortor nec est interdum tristique in et enim. Cras rutrum ligula lorem. Vestibulum sit amet vulputate augue. Donec fermentum sem at mollis luctus. Phasellus eget tortor justo. Sed condimentum velit sem. Nunc dignissim ante ut purus feugiat congue. Quisque sit amet aliquam neque. Nunc ex orci, cursus a lacus et, aliquam convallis quam. Sed scelerisque efficitur justo sit amet dignissim. Donec ut dui ac mauris tempus vulputate sit amet vitae quam.'
  ),
  Review(
      user: 'wqrealsdjf  adsf ',
      comment: 'Quisque molestie mauris nec est lobortis mattis ut id eros. Cras suscipit urna lacus, in condimentum urna porta efficitur. Sed vel tristique leo, in rutrum leo. Ut ultricies purus non orci rhoncus, sit amet vulputate purus varius. Sed vitae erat nibh. Curabitur volutpat vel risus sit amet laoreet. Mauris dignissim ultrices enim nec tempor. Nulla facilisi.'
  ),
  Review(
      user: 'Amy asdfo',
      comment: 'baVivamus et varius dui, ut gravida purus. Duis vulputate nulla sit amet eleifend pellentesque. Quisque urna dolor, volutpat non velit sit amet, tristique auctor erat. Donec in mattis magna. Donec ornare ex in magna ornare efficitur. Vivamus a libero sapien. Sed vulputate nec libero a euismod.d'
  ),
];

List<Review> reviews2=[
  Review(
      user: 'adsf',
      comment: 'good book'
  ),
  Review(
      user: 'Mary',
      comment: 'bad'
  )
];

List<Book> books=[
  Book(
    imageUrl: "assets/images/croft_hills.jpg",
    name: "croft hills",
    author: "aaa",
    price: 50,
    description: "asdfqwior ter aosidjf o;ir",
    reviews: reviews1,
  ),
  Book(
      imageUrl: "assets/images/design.jpg",
      name: "design",
      author: "john",
      price: 140,
      description: "asdfqwior ter aosidjf o;ir",
      reviews: reviews2,
  ),
  Book(
      imageUrl: "assets/images/infinity.jpeg",
      name: "infinity",
      author: "Mary",
      price: 30,
      description: "asdfqwior ter aosidjf o;ir",
    reviews: reviews1,

  ),
  Book(
      imageUrl: "assets/images/the_king.jpeg",
      name: "the king",
      author: "betty chan",
      price: 46,
      description: "asdfqwior ter aosidjf o;ir",
    reviews: reviews1,

  ),
  Book(
      imageUrl: "assets/images/thunder.jpeg",
      name: "thunder",
      author: "ppp",
      price: 50,
      description: "asdfqwior ter aosidjf o;ir",
    reviews: reviews1,

  ),
];