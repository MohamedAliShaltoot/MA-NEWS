import 'package:flutter/material.dart';
import 'package:ma_news/Screens/search_screen.dart';

class HomeNewsScreen extends StatelessWidget {
  const HomeNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: ,
          currentIndex: 0,
          items:  [
            BottomNavigationBarItem(
              icon:  IconButton(onPressed: (){}, icon: const Icon(Icons.home, color: Color(0xff18A785),),)
             // Icon(Icons.home, color: Color(0xff18A785))
              ,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SearchScreen();
                }));
              }, icon: const Icon(Icons.search, color: Color(0xff18A785),),)
             // Icon(Icons.search, color: Color(0xff18A785)),
             , label: 'Explore',
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
              Tab(
                text: 'All news',
              ),
              Tab(text: 'Business'),
              Tab(text: 'Politics'),
              Tab(text: 'Tech'),
              Tab(text: 'Healthy'),
              Tab(text: 'Science'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                child: ListTile(
                  trailing: Expanded(
                    child: Container(
                      width: 200,
                      height: 600,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "2021 most horrible movies and fantastic ",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: const Text(
                    "The new candyman and hat will he does when it happened. ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            },
            itemCount: 14,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 15,
              );
            },
          ),
        ),
      ),
    );
  }
}
