import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/secon_screen.dart';

String city = "İstanbul";
String button="BUTON";
String ad="admin";
Color ankaraColor=Colors.red;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get yellow => null;

  @override
  Widget /*oluşturduğumuz herşey */build(BuildContext context) {
    return Scaffold(

        body: Container(//içerisine nesneler yerleştirebileceğimiz bir kutu


          child: /*bir tane eleman alır*/
          Column(mainAxisAlignment: MainAxisAlignment.center,//ortalıyor
              children: [//birden fazla eleman alabilir
                Text("1.text", style: TextStyle(
                    color: Colors.blue, fontSize: 30, letterSpacing: 5)),
                SizedBox(width: 50),

                Text(city,style: TextStyle(color: Colors.blue,fontSize: 21)),
                SizedBox(
                  width: 50,//genişlik
                ),
                Text(ad,style:TextStyle(color:Colors.deepPurpleAccent,fontSize:20,letterSpacing:2)),
                SizedBox(width: 15,height:2),

                Text("2.text",style:TextStyle(color:Colors.blue)),
                SizedBox(
                ),
                Text(
                    "HACER YILMAZ",style:TextStyle(
                    color:Colors.blue)),
                SizedBox(
                  height: 10,//yükseklik
                ),
                ElevatedButton(

                    onPressed: (){
                    if(ad=="admin"){
                      setState(() {
                        ad="admin";
                        button="asdk";

                      });
                    }
                    else
                      setState(() {
                        ad="HACER";
                        button="abcd";
                      });
                    }, child: Text(
                  button,
                  style: TextStyle(color:Colors.black,fontSize: 40),
                )),
                Center(
                  child:Container(width: 500,height: 100,color: Colors.red,
                  alignment: Alignment.center,
                  child:Text("CONTEİNER",style: TextStyle(color:Colors.black,fontSize: 25),)
                  )
                ),//container oluşturuldu

                ListView(shrinkWrap: true,//ihtiyacı kadar yer kaplamasını sağlar
                  children: [
                    Center(
                        child: GestureDetector(//hareket algılar
                            onTap: () {
                              Navigator.push(//diğer sayfaya geçmemiiz sağlar
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => seconscreen()));
                            },
                            child: Text(
                              "Listview text",
                              style: TextStyle(fontSize: 30),

                            )
                        )
                    ),


                    Center(child: Text("Listview Texti"),),
                    Center(child: Text("Listview Texti"),),
                    Center(child: Text("Listview Texti"),),
                    Center(child: Text("Listview Texti"),),
                    Center(child: Text("Listview Texti"),),
                    Center(child: Text("Listview Texti"),),
                    Center(
                      child:Text("HELLO WORLD", style: TextStyle(
                          color:Colors.blue,fontSize:30)),
                    )



                  ],),

                ElevatedButton(
                 style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.cyan)),

                    onPressed: () {
                      if (city == "İstanbul") {
                        setState(() {
                          city = "Ankara";
                          button = "istanbul";
                        });
                      }
                     else {
                        setState(() {
                          city ="İstanbul";
                          button="istanbul değil";
                          ankaraColor=Colors.red;
                        });

                      }
                    },
                    child: Text(
                      button,
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
                    )),
                TextButton(onPressed:(){},
                    child: Text("TEXT BUTTONDUR",style: TextStyle(color: Colors.black,
                fontSize: 15))),
                TextButton.icon(
                  onPressed: (){},
                  icon:Icon(Icons.access_alarms),
                  label: Text("İKON BUTONUDUR"),
                ),
                ElevatedButton(//buton oluşturma

                    onPressed: (){},
                    style:ElevatedButton.styleFrom(
                      primary: Colors.amber
                    ),

                  child: Text(
                  "BAÜN",style: TextStyle(color:Colors.green),),
                )
              ]),
        ));

  }
}




class SeconScreen {
}


class Navigatior {
}
