import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();


  double result = 0.0;

  void calculateValue (){
    double value1 = double.tryParse(num1Controller.text) ?? 0.0;
    double value2 = double.tryParse(num2Controller.text) ?? 0.0;
    double value3 = double.tryParse(num3Controller.text) ?? 0.0;


    setState(() {
      result = value1+value2+value3;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text("sum: $result",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

            TextFormField(
              controller: num1Controller,
              decoration: InputDecoration(
                labelText: "Number 1"
              ),
            ),
            TextFormField(
              controller: num2Controller,
              decoration: InputDecoration(
                labelText: "Number 2"
              ),
            ),
            TextFormField(
              controller: num3Controller,
              decoration: InputDecoration(
                labelText: "Number 3"
              ),
            ),


            ElevatedButton(onPressed: (){
              calculateValue();
            },
                child: Text("Calculate"))


          ],
        ),
      ),
    );
  }
}
