import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Learning Provider", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.deepPurple,

      ),
    );
  }
}
