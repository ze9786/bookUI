import 'package:bookui/models/book_model.dart';
import 'package:bookui/widgets/books_carousel.dart';
import 'package:bookui/widgets/new_books_carousel.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  final Book book;

  const HomeScreen({Key key, this.book}):super(key:key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  int _selectedTab;
  TabController _tabController;
  final List<Tab> titleTabs = <Tab>[
    Tab(text: 'New'),
    Tab(text: 'Trending'),
    Tab(text: 'Best Seller'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    _selectedTab=0;
    _tabController = TabController(
      vsync: this,
      length: titleTabs.length,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
              Text(
                'Hi, Rizki',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'Discover Latest Book',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
              SizedBox(height: 20,),
              Stack(
                children:[
                  TextField(
                  maxLengthEnforced: true,
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 50,bottom: 20),
                      border: InputBorder.none,
                      hintText: 'Search book..',
                      hintStyle: GoogleFonts.openSans(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600
                      ))

                    ),
                Positioned(
                  right: 0,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).highlightColor,
                      ),
                      child: Icon(Icons.search, color: Colors.white70, size: 20,),
                  ),
                ),
                ]
              ),
              SizedBox(height: 20,),
              Container(
                width: 300,
                child: TabBar(
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                  ),
                  controller: _tabController,
                  indicatorColor: Theme.of(context).primaryColor,
                  tabs: titleTabs,
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              NewBooksCarousel(),
              SizedBox(height: 30,),
              BookCarousel()
            ],
        ),
      ),
    );

  }
}
