import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "search",
                hintText: "Search",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
             const SizedBox(height: 30,),
            Container(
              height: 200,
              width: 600,
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 10,),
            const Text("dfgfhfdgjhkfdfdlkfhdfjdfdfdkfdfhdf")
          ],
        ),
      )),
    );
  }
}
