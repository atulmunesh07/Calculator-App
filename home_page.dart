
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //...............user give input....../
  var userInput = "";
  var answer = "";
  bool isEqualPress=false;
  // Her we creat function when click button
  void buttonClick(String but){
    setState(() {
      isEqualPress= false;
      if(but =="="){
        equalePressOperation();

      }
       else if(but =="AC"){
        userInput = " ";
        answer =" ";
      }else if(but =="DL") {
        if (userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length - 1);
        } else if (userInput.isEmpty) {
          answer = " ";
        }
      }else if("+-/.x%".contains(but)) {
        if(userInput.isNotEmpty && "+-/.x%".contains(userInput[userInput.length-1])){
          userInput=  userInput.substring(0,userInput.length-1)+but;
        }else{
          userInput += but;
        }

      }

      else {
        userInput += but;
      }


    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu,size: 40,),
            Text("Calculator",style: TextStyle(fontSize: 30),),
            Icon(Icons.settings,size: 40,)
          ],
        ),

      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // ...............input box ...................//
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerRight,

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: AutoSizeText("$userInput",style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: isEqualPress? 30:40,
                        color: isEqualPress ? Colors.black54:Colors.black

                      ),),
                    )),

                Container(
                  //..................Answer box.....................//
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerRight,

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: AutoSizeText("$answer",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isEqualPress? 40 : 30,
                        color:isEqualPress ?Colors.black :Colors.black54
                      ),),
                    ))
              ],
            ),
          ),
          //.............Calcuter button...........//
          //..................hear call button.........//
         Expanded(
           flex: 3,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("AC");
                        equalePressOperation();
                      });
                    },
                        child: const Text("AC",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Color(0xFFCC4122) ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("DL");
                        equalePressOperation();
                      });
                    },
                        child: const Text("DL",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ,color: Color(0xFFCC4122) ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("%");
                        equalePressOperation();
                      });
                    },
                        child: const Text("%",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color:  Color(0xE3D7755F)  ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("/");
                        equalePressOperation();
                      });
                    },
                        child: const Text("/",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color:  Color(0xE3D7755F)  ),)
                    ),
                  ),

                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("7");
                        equalePressOperation();
                      });
                    },
                        child: const Text("7",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {

                        buttonClick("8");
                        equalePressOperation();
                      });
                    },
                        child: const Text("8",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("9");
                        equalePressOperation();
                      });
                    },
                        child: const Text("9",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,

                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("x");
                        equalePressOperation();
                      });
                    },
                        child: const Text("x",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ,color:  Color(0xE3D7755F) ),)
                    ),
                  ),

                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("4");
                        equalePressOperation();
                      });
                    },
                        child: const Text("4",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("5");
                        equalePressOperation();
                      });
                    },
                        child: const Text("5",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("6");
                        equalePressOperation();
                      });
                    },
                        child: const Text("6",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("-");
                        equalePressOperation();
                      });
                    },
                        child: const Text("-",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color:  Color(0xE3D7755F) ),)
                    ),
                  ),

                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("1");
                        equalePressOperation();
                      });
                    },
                        child: const Text("1",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("2");
                        equalePressOperation();
                      });
                    },
                        child: const Text("2",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("3");
                        equalePressOperation();
                      });
                    },
                        child: const Text("3",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){ setState(() {
                      buttonClick("+");
                      equalePressOperation();
                    });},
                        child: const Text("+",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Color(0xE3D7755F) ),)
                    ),
                  ),

                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("0");
                        equalePressOperation();
                      });
                    },
                        child: const Text("0",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("00");
                        equalePressOperation();
                      });
                    },
                        child: const Text("00",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick(".");
                        equalePressOperation();
                      });
                    },
                        child: const Text(".",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 85,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        buttonClick("=");
                        equalePressOperation();
                        isEqualPress = true;
                      });
                    },
                        child: const Text("=",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Color(0xFFCC4122)  ),)
                    ),
                  ),

                 ],
               ),
             ],
           ),
         )
        ],
      ),

    );
  }
  void equalePressOperation(){
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll("x", "*").replaceAll('%', "/100");
    Parser p = Parser();
    Expression expression  = p.parse(finalUserInput) ;
    ContextModel contextModel =ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();


  }
}

