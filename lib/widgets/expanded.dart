import 'package:flutter/material.dart';

class Expandedd extends StatelessWidget {
  const Expandedd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Expanded')),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 200,
            child: const Center(
              child: Text(
                'Column children 1, without expanded',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Expanded(
            // flex: 1, // * by default flex is 1, higher the flex
            // * the greater the space the expanded widget will take.
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amberAccent,
                    child: const Text(
                      'Column children 2, Row C1 with expanded',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    // * if we comment the code from here...
                    child: const Center(
                      child: Text(
                        'Column children 2, Row C2 with expanded',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    // * to here, and the above and the below container do not
                    // * have any height then this while row will not show
                    // * we must have a height or a width for the child widget
                    // * so that expanded can expand in that region.
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueAccent,
                    child: const Text(
                      'Column children 2, Row C3 with expanded',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4, // * as flex is higher then other, so this expanded widget
            // * will take more space as compared to other expanded widgets
            child: Container(
              color: Colors.orange,
              child: const Center(
                child: Text(
                  'Column children 3, with expanded',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.cyan,
              child: const Center(
                child: Text(
                  'Column children 4, with expanded',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            child: const Text(
              'Column children 5, without expanded',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              child: const Center(
                child: Text(
                  'Column children 6, with expanded',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
