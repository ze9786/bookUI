import 'package:bookui/models/book_model.dart';
import 'package:bookui/widgets/books_carousel.dart';
import 'package:bookui/widgets/new_books_carousel.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
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
                  Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all( color: Theme.of(context).highlightColor),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).highlightColor,
                      ),
                      child: Icon(Icons.search, color: Colors.white70, size: 30,),
                  ),
                ),
                Positioned(
                  left: 15,
                 top: 15,
                 child: Text('Search book..', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.grey
                 ),),
                )
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
