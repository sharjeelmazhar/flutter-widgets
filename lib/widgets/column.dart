import 'package:flutter/material.dart';

class Columnn extends StatelessWidget {
  const Columnn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Column'))),
      body: Column(
        /*
          * column main axis is vertical, they children come
          * on top of each other like a stack of books
          * the cross axis is opposite of the widget's main axis
          * in our case it is horizontal
          * there are various properties of column widget you can play with
    
        */
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.amber,
            height: 130,
            width: 300,
            child: const Text('Yellow Container'),
          ),
          Container(
            color: Colors.green,
            height: 130,
            width: double.infinity,
            child: const Text('green Container'),
          ),
          Container(
            color: Colors.red,
            height: 130,
            child: const Text('Red Container'),
          ),
        ],
      ),
    );
  }
}
