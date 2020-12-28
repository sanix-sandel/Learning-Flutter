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
  String _convertedMeasure;

  double _numberFrom;

  final TextStyle inputStyle=TextStyle(//Text style for TextFields, 
  //DropDownButtons and Button
    fontSize: 20,
    color:Colors.blue[900],
  );

  final TextStyle labelStyle=TextStyle(
    fontSize: 24,
    color:Colors.grey[700],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Measures Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Measures Converter'),
        ),

        body: Container(
          padding:EdgeInsets.symmetric(horizontal: 20),
          child:Column(
            children:[
            Spacer(),

            Text(
              'Value',
              style:labelStyle,
            ),

            Spacer(),

            TextField(
              style:inputStyle,
              decoration: InputDecoration(
                hintText: "Please insert the measure to be converted",
              ),

              onChanged:(text){
                var rv=double.tryParse(text);
                if(rv != null){
                  setState((){
                    _numberFrom=rv;
                    
                  });
                }
              }
          ), 

          Spacer(),

          Text(
            'From',
            style:labelStyle,
          ),

          DropdownButton(
              isExpanded:true,
              value:_startMeasure,
              style:inputStyle,
              items:_measures.map((String value){
                return DropdownMenuItem<String>(value:value, child:Text(value),);
              }).toList(), onChanged: (value){setState((){_startMeasure=value;}); print(_startMeasure);},
          ),

          Spacer(),

          Text(
            'To',
            style:labelStyle,
          ),

          Spacer(),

          DropdownButton(
              isExpanded:true,
              value:_convertedMeasure,
              style:inputStyle,

              items:_measures.map((String value){
                return DropdownMenuItem<String>(value:value, child:Text(value),);
              }).toList(), 
              
              onChanged: (value){setState((){_convertedMeasure=value;}); print("to $_startMeasure");},
          ),
          
          Spacer(flex:2,),

          RaisedButton(
            child:Text('Convert', style:inputStyle),
            onPressed: ()=>{print("trying to convert")},
          ),

          Spacer(flex:2,),

          Text(
            (_numberFrom==null) ? '' : _numberFrom.toString(),
            style:labelStyle
          ), 

          Spacer(flex:8,),
          
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