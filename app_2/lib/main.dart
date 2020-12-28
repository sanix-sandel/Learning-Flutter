import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
class MyAppState extends State<MyApp> {

  final List<String> _measures=[
    'measures',
    'kilometers',
    'grams',
    'kilograms',
    'feet',
    'miles',
    'pounds',
    'ounces',
  ];

  String _startMeasure;

  double _numberFrom;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Measures Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Measures Converter'),
        ),
        body: Center(child:Column(
          children:[
            DropdownButton(
            value:_startMeasure,
            items:_measures.map((String value){
              return DropdownMenuItem<String>(value:value, child:Text(value),);
            }).toList(), onChanged: (value){setState((){_startMeasure=value;}); print(_startMeasure);},
            ),

            TextField(
            onChanged:(text){
              var rv=double.tryParse(text);
              if(rv != null){
                setState((){
                  _numberFrom=rv;
                  
                });
              }
            }
          ), Text((_numberFrom==null) ? '' : _numberFrom.toString()),
          
          ],
        )),
      ),
    );
  }

  @override
  void initState(){
    _numberFrom=0;
    super.initState();
  }
}