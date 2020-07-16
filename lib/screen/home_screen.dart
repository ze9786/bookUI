import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
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
              Container(
                height: 50,
                color: Colors.blue,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height:200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height:200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text('Popular', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'re a miracle', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        Text('Mike Mchargue',style: TextStyle(fontSize: 12,color: Colors.grey)),
                        Text('\$20', style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'re a miracle', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        Text('Mike Mchargue',style: TextStyle(fontSize: 12,color: Colors.grey)),
                        Text('\$20', style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )
                ],
              ),
            SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'re a miracle', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        Text('Mike Mchargue',style: TextStyle(fontSize: 12,color: Colors.grey)),
                        Text('\$20', style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )
                ],
              )
            ],
        ),
      ),
    );

  }
}
