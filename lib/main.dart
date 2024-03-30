import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = 'BMI CALCULATOR',s='',s1='YOUR RESULT';
  final h=TextEditingController();
  final w=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text(str,style: TextStyle(fontSize: 50),
                 ),


                 SizedBox(height: 50,),
                 Text('Enter your weight in kg',style: TextStyle(fontSize: 20),),
          
          
                 SizedBox(
                  width: 350,
                  child:TextField(
          
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink,width: 3.0),
                      ),
          
                      focusedBorder: OutlineInputBorder(
          
                      ),
                    ),
                    controller: w,
                  ) ,
                 ),
          
                  SizedBox(height: 10,),
                   Text('Enter your hight in cm',style: TextStyle(fontSize: 20),),
          
                   SizedBox(
                  width: 350,
                  child:TextField(
          
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink,width: 3.0),
                      ),
          
                      focusedBorder: OutlineInputBorder(
          
                      ),
                    ),
                    controller: h,
                  ) ,
                 ),
          
                 /*TextField(
                  controller: h,
                 ),
          
                 TextField(
                  controller: w,
                 ),*/
                  SizedBox(height: 20,),
                 new SizedBox(
                  height: 45,width: 350,
                  child:ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.pink),),
                  onPressed: (){
                  setState(() {
                   

                    double p=double.parse(w.text);
                    double q=double.parse(h.text);
                   // str=' BMI Caculator: ${int.parse(h.text) *int.parse(w.text)}';
                   double r=((p/(q*q))*10000);
                   s=r.toStringAsFixed(3);

                  });
                 }, 
                 child: Text('Click',style:TextStyle(color: Colors.white, fontSize: 30,),
                  ),
                 ),
                 ),
          
          
          
                 SizedBox(height:50 ,),
          
                 
              ],
            ),
          ),
          Container(
            width: 500,
            height: 270,
            color: Colors.pink,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$s1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
                SizedBox(height: 40,),
                 Text('$s',style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),

          ),
        ],
      ),

    );
  }
}