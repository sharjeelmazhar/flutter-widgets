import 'package:flutter/material.dart';

class Containerr extends StatelessWidget {
  const Containerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(
          child: Text('Container'),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            /* 
            * Keep in mind:
            ! Only one property (shape or borderRadius) should be used
            ! at once, if both used at the same time, it will through
            ! an assertionError
            */
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              ),
              // image: AssetImage("images/1.jpg"),
              fit: BoxFit.cover,
            ),
            color: Colors.deepPurple,
            boxShadow: [
              BoxShadow(
                color: Colors.purple.withOpacity(0.7),
                blurRadius: 4,
                offset: const Offset(6, 5),
                spreadRadius: 7,
                blurStyle: BlurStyle.normal, // Shadow position
              ),
            ],
            border: Border.all(
              color: const Color.fromARGB(255, 0, 255, 55),
              width: 4,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: const Text(
            'Owl',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
