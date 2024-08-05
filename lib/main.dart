import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ) );
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();

  }

}
class HomeState extends State<Home>{
  var no1controlor= TextEditingController();
  var no2controlor= TextEditingController();
  var result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:  Center(
        child: Container(
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                controller: no1controlor,
                  style:TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 20),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2

                      ),
                    ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(11),
                     borderSide: BorderSide(
                       color: Colors.blueAccent,
                       width: 2
                     ),
                   ),

                  ),
                          ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: no2controlor,
                  keyboardType: TextInputType.number,
                  style:TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 20),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.white,
                            width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2
                      ),
                    ),

                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1=int.parse(no1controlor.text.toString());
                      var no2=int.parse(no2controlor.text.toString());

                      var sum =no1+no2;

                      result= "sum of $no1 and $no2 is $sum";
                      setState(() {});

                    }, style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,),
                        child: Text("Sum", style:TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 15), )),
                    ElevatedButton(onPressed: (){
                      var no1=int.parse(no1controlor.text.toString());
                      var no2=int.parse(no2controlor.text.toString());

                      var sum =no1-no2;

                      result= "Diff. of $no1 and $no2 is $sum";
                      setState(() {});

                    }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,),
                        child: Text("Diff", style:TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 15), )),

                    ElevatedButton(onPressed: (){
                      var no1=int.parse(no1controlor.text.toString());
                      var no2=int.parse(no2controlor.text.toString());

                      var sum =no1*no2;

                      result= "Multi. of $no1 and $no2 is $sum";
                      setState(() {});

                    }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,),
                        child: Text("Multi", style:TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 15), )),

                    ElevatedButton(onPressed: (){
                      var no1=int.parse(no1controlor.text.toString());
                      var no2=int.parse(no2controlor.text.toString());

                      var sum =no1/no2;

                      result= "Div of $no1 and $no2 is ${sum.toStringAsFixed(3)}";
                      setState(() {});

                    }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,),
                        child: Text("Div", style:TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 15), )),
                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(result, style:TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 20), ),
              ),
              ]
            ),
                      ),
                  ),

              );

  }

}