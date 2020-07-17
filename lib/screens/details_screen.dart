import 'package:bookui/models/book_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Book book;
  const DetailsScreen({Key key, this.book}):super(key:key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> with SingleTickerProviderStateMixin{
  int _selectedTab;
  TabController _tabController1;
  int _currentPageIndex=0;
  final List<Tab> titleTabs=<Tab>[
    Tab(text:'Description'),
    Tab(text: 'Reviews'),
    Tab(text: 'Similar')
  ];

  @override
  void initState() {
    // TODO: implement initState
    _selectedTab=0;
    _tabController1 = TabController(
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
          children: [
            Stack(
              children: [
                Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffffd3b6),
              ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: GestureDetector(
                    onTap: ()=>Navigator.pop(context),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15,),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 100,
                  child: Container(
                    height: 200,
                    width: 150,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(image: AssetImage(widget.book.imageUrl),
                        fit: BoxFit.cover,)),
                  ),
                )
              ]
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30,30,30,10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.book.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(widget.book.author, style: TextStyle(fontSize: 16, color: Colors.grey),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('\$', style: TextStyle(fontSize: 10, color: Theme.of(context).highlightColor),),
                      Text(widget.book.price.toString(), style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Theme.of(context).highlightColor),)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
              child: TabBar(
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
                controller: _tabController1,
                tabs: titleTabs,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                onTap: (index) {
                  setState(() {
                    _selectedTab = index;
                    _currentPageIndex = 0;
                    print(_selectedTab);
                  });
                }
            )),
            if(_selectedTab==0)
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
               child: Text(widget.book.description),
            ),
            if(_selectedTab==1)
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: ListView.separated(
                    itemBuilder:(context, index)=> Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(Icons.account_circle,size: 30, color: Colors.black,),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(width: 10,),

                            Text(widget.book.reviews[index].user, style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 0, 10),
                          child: Text(widget.book.reviews[index].comment, style: TextStyle(
                            color: Colors.grey
                          ),),
                        ),
                        SizedBox(height: 10,),

                      ],
                    ),
                  itemCount: widget.book.reviews.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(
                    indent: 10,
                    thickness: 2,
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
            if(_selectedTab==2)
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Text('4ert'),
            )
          ],
        ),
      ),
    );
  }


}
