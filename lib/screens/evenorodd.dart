import 'package:flutter/material.dart';
class Evenorodd extends StatefulWidget {
  @override
  _EvenoroddState createState() => _EvenoroddState();
}

class _EvenoroddState extends State<Evenorodd> {
  TextEditingController getnum=TextEditingController();
  String check="";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: getnum,
            decoration: InputDecoration(
                hintText: "Enter a number",
                border: OutlineInputBorder()
            ),

          ),
          RaisedButton(
            color: Colors.green,
            onPressed: (){

              double checkresult=double.parse(getnum.text);

              setState(() {
                if(checkresult%2==0)
                {
                  check="Even Number";
                }
                else{
                  check="Odd Number";
                }

              });


            },
            child: Text("Check"),
          ),
          Text(check,style: TextStyle(fontSize: 30.0),),



        ],
      ),
    );
  }
}
