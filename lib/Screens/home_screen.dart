import 'package:flutter/material.dart';

class HomeNewsScreen extends StatelessWidget {
  const HomeNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6,
    child: Scaffold(
      
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: ,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Color(0xff18A785)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Color(0xff18A785)),
              label: 'Explore',
            ),
          ],
        ),
appBar: AppBar(
  
   title: const Text(
            'MA NEWS',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, color: Color(0xff18A785)),
              onPressed: () {},
            ),
          ],
           bottom: const TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'All news',),
              Tab(text: 'Business'),
              Tab(text: 'Politics'),
              Tab(text: 'Tech'),
              Tab(text: 'Healthy'),
              Tab(text: 'Science'),
            ],
          ),
        ),
        body: ListView.separated(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Container(
              width: 100,
              height: 300,
              
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15)
              ),),
            title: const Text("2021 most horrible movies and fantastic "
            ,style: TextStyle(color:Colors.black ),),
            subtitle: const Text("The new candyman and hat will he does when it happened. ",
            style: TextStyle(color:Colors.black ),),
          );
          },
         itemCount: 14,
          separatorBuilder: (BuildContext context, int index) { 
            return const SizedBox(height: 15,);
           },),

           
),
    );
    
  }
}

