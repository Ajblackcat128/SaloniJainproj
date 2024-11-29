import 'package:flutter/material.dart';
void main()
{
   runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
        title: "Add",
          home: Addcalc(),


        );

  }

}

class  Addcalc extends StatefulWidget {
  const Addcalc({super.key});

  @override
  State<Addcalc> createState() => _AddcalcState();

}


class _AddcalcState extends  State<Addcalc>{
 TextEditingController firstnumberController=TextEditingController();
 TextEditingController secondnumberController=TextEditingController();
String result='0';
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Addition"),
         centerTitle: true,


       ),

       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
           child: TextField(
             controller: firstnumberController,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               hintText:"First Number",
               suffixIcon: Icon(Icons.numbers),
               border:OutlineInputBorder(
                 borderRadius: BorderRadius.circular(7)
               )

             ),
           ),
         ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
             child: TextField(
               controller: secondnumberController,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                   hintText:"Second Number",
                   suffixIcon: Icon(Icons.numbers),
                   border:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(7)
                   )

               ),
             ),
           ),
SizedBox(height: 40),

 SizedBox(
      height:45,
        width:350,
        child: ElevatedButton(
        onPressed:(){
          int num1=int.parse(firstnumberController.text.toString());
          int num2=int.parse(secondnumberController.text.toString());
          int sum=num1+num2;
          setState(()
          {


            result=sum.toString();

          });


        },
            style:ElevatedButton.styleFrom(backgroundColor: Colors.green,
    shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(3)

    )),
    child: Text("add"))),
           SizedBox(height:20),
           Text(result, style:TextStyle(fontSize: 20) ),

           ], ),




         );









  }





  }

