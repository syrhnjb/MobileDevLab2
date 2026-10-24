import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[ Colors.purple, Colors.pink],
          ),
          ),
          child:Center(
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Image", style: TextStyle(fontSize: 75),
              ),
              TextButton(
                onPressed: () {}, 
                child: const Text(
                  "Press Me", style: TextStyle(color: Colors.black),
               ),
              ),
            ],
          ),
        ),
      ),
    ),
  )
  ); 
}


