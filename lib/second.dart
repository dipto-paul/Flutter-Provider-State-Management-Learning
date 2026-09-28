import 'package:flutter/material.dart';
class Second extends StatefulWidget {
  final List<int> numbers;
  const Second({super.key, required this.numbers});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        int last = widget.numbers.last;
        setState(() {
          widget.numbers.add(last+1);
        });
      },
        child: const Icon(Icons.plus_one, color: Colors.white,),
        backgroundColor: Colors.deepPurple,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("This is Second Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.deepPurple,
      ),

      body: SizedBox(
        child: Column(
          children: [
            Text(widget.numbers.last.toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Expanded(child: ListView.builder(itemCount: widget.numbers.length,
                itemBuilder: (context, index){
                  return Text(widget.numbers[index].toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),);
                })),
          ],
        ),
      ),
    );
  }
}
