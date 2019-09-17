import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override 
  HomePageState createState() => HomePageState();
}


class HomePageState extends State<HomePage>{
  String result = "";
  String newRes = "";
  double num1;
  double num2;
  String currOpr = "";
  int oprCnt = 0;


  void appender(String txt){
    setState(() {
      result += txt;
    });

  }
  void clear(){
    setState(() {
      result = "";
    });
    
  }

  void delete(){
    String reResult = result.substring(0, result.length-1);
    setState(() {
      result = reResult;
    });
  }

  void doAdd(){
    num1 = double.parse(result);
    result = "";
    currOpr = "+";
  }

  void doSub(){
    num1 = double.parse(result);
    result = "";
    currOpr = "-";
  }

  void doMul(){
    num1 = double.parse(result);
    result = "";
    currOpr = "x";
  }

  void doDiv(){
    num1 = double.parse(result);
    result = "";
    currOpr = "/";
  }

  void doMod(){
    num1 = double.parse(result);
    result = "";
    currOpr = "%";
  }


  void doEqual(){
    num2 = double.parse(result);
    result = "";
    double res;

    switch (currOpr){
      case "+":{
        res = num1 + num2;
        setState(() {
          result = res.toString();
          currOpr = "";
          num1 = 0;
          num2 = 0;
        });        
      }break;

      case "-":{
        res = num1 - num2;
        setState(() {
          result = res.toString();
          currOpr = "";
          num1 = 0;
          num2 = 0;
        });        
      }break;

      case "x":{
        res = num1 * num2;
        setState(() {
          result = res.toString();
          currOpr = "";
          num1 = 0;
          num2 = 0;
        });        
      }break;

      case "/":{
        res = num1 / num2;
        setState(() {
          result = res.toString();
          currOpr = "";
          num1 = 0;
          num2 = 0;
        });        
      }break;

      case "%":{
        res = num1 % num2;
        int intRes = res.toInt();
        setState(() {
          result = intRes.toString();
          currOpr = "";
          num1 = 0;
          num2 = 0;
        });        
      }break;


    }
  }



  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),

      body: Container( 
          color: Colors.black.withOpacity(0.9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

                Container(
             
                  alignment: Alignment.bottomRight,
                  child: Text(
                    result,
                    maxLines: 1,
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                    
                ),
             
              
               
              Column(
                mainAxisAlignment: MainAxisAlignment.center,  
                children: <Widget>[
 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("C"),onPressed:(){
                          clear();
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("DEL"),onPressed:(){
                          delete();
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("%"),onPressed:(){
                          doMod();
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text('/'),onPressed:(){
                          doDiv();
                      }),),
                
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("7"),onPressed:(){
                          appender("7");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("8"),onPressed:(){
                          appender("8");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text('9'),onPressed:(){
                          appender("9");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("x"),onPressed:(){
                          doMul();
                      }),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("4"),onPressed:(){
                          appender("4");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("5"),onPressed:(){
                          appender("5");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("6"),onPressed:(){
                          appender("6");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("-"),onPressed:(){
                          doSub();
                      }),),
                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("1"),onPressed:(){
                          appender("1");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("2"),onPressed:(){
                          appender("2");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("3"),onPressed:(){
                          appender("3");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("+"),onPressed:(){
                          doAdd();
                      }),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                        width: 70,
                        child:RaisedButton(child: Text("0"),onPressed:(){
                          appender("0");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 70,
                        child: RaisedButton(child: Text("."),onPressed:(){
                          appender(".");
                      }),),
                      SizedBox(
                        height: 60,
                        width: 140,
                        child:RaisedButton(child: Text("="),onPressed:(){
                          doEqual();
                      }),),
                     
                    ],
                  ),


                ],
              ),
         
               

              
          
             
              
              
                
               
                

              
             
            ],
          ),
      ),
    );
  }
}