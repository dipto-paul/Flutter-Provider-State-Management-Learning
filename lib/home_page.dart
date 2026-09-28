import 'package:flutter/material.dart';
import 'second.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<int> numbers = [1,2,3,4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        int last = numbers.last;
        setState(() {
          numbers.add(last+1);
        });
      },
        child: const Icon(Icons.plus_one, color: Colors.white,),
        backgroundColor: Colors.deepPurple,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Learning Provider", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.deepPurple,
      ),

      body: SizedBox(
        child: Column(
          children: [
            Text(numbers.last.toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Expanded(child: ListView.builder(itemCount: numbers.length,
            itemBuilder: (context, index){
              return Text(numbers[index].toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),);
            })),
            SizedBox(height: 10,),
            ElevatedButton(
            onPressed: (){



              Navigator.push(context, MaterialPageRoute(builder: (context)=> Second(numbers: numbers)));
            }, child: Text('Second Page')),
          ],
        ),
      ),
    );
  }
}
