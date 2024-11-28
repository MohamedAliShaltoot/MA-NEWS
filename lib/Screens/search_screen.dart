import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Expanded(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ),
              ),
               const SizedBox(height: 30,),
          ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return   Column(
                  children: [
                    Container(
                    height: 200,
                    width: 600,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                    ),
                                ),
                                 const SizedBox(height: 10,),
              const Text("dfgfhfdgjhkfdfdlkfhdfjdfdfdkfdfdfgfhfdgjhkfdfdlkfhdfjdfdfdkfdfhdfhdfdfgfhfdgjhkfdfdlkfhdfjdfdfdkfdfhdf")
                  ],
                );
              },
              itemCount: 14,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 15,
                );
              },
            ),
              
             
            ],
          ),
        ),
      ),
      ),
    );
  }
}
