import 'package:flutter/material.dart';
import 'package:love_calculator/data.dart';
import 'package:love_calculator/data2.dart';
void main() => runApp(const LoveCal());

class LoveCal extends StatefulWidget {
  const LoveCal({Key? key}) : super(key: key);

  @override
  _LoveCalState createState() => _LoveCalState();
}
enum gender1 { male, female}
enum gender2 { male, female}
class _LoveCalState extends State<LoveCal>{
  gender1? _character1 = gender1.female;
  gender2? _character2 = gender2.male;
  final String _heart = '❤';
  var output=0;
  int result=0;

  //int percent = per();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  //int percent=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("         The Love Calculator $_heart", textAlign: TextAlign.center, style:
            const TextStyle(
              fontSize: 30,
              fontFamily: 'Festive',
              fontWeight: FontWeight.w700,
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(200, 0, 0, 0),
                ),
              ],
            ),
            ),
            backgroundColor: Colors.pinkAccent,
          ),
            body: Container(
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("pexels-photo-1517361.jpeg"),
                        fit: BoxFit.cover,
                        ),
                        ),
                 child: ListView(padding: const EdgeInsets.all(10.0),

                 children: [
                  //1st user
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.5,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                      ),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                                child: TextField(
                                  controller: myController1,
                                  decoration: const InputDecoration(labelText: "Your name"),
                                ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                                'Enter your gender:',
                              textAlign: TextAlign.left,
                            ),
                                  ListTile(
                                    title: const Text('Female'),
                                    leading: Radio<gender1>(
                                      value: gender1.female,
                                      groupValue: _character1,
                                      onChanged: (gender1? value) {
                                        setState(() {
                                          _character1 = value;
                                        });
                                      },
                                    ),
                                  ),
                            ListTile(
                              title: const Text('Male'),
                              leading: Radio<gender1>(
                                value: gender1.male,
                                groupValue: _character1,
                                onChanged: (gender1? value) {
                                  setState(() {
                                    _character1 = value;
                                  });
                                },
                              ),
                            ),
                    ],
                    ),
                    ),
                  const SizedBox(height: 10),
              //2nd user
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.5,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: TextField(
                              controller: myController2,
                              decoration: const InputDecoration(labelText: "Partner's name"),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Enter your partner's gender:",
                            textAlign: TextAlign.left,
                          ),
                          ListTile(
                            title: const Text('Female'),
                            leading: Radio<gender2>(
                              value: gender2.female,
                              groupValue: _character2,
                              onChanged: (gender2? value) {
                                setState(() {
                                  _character2 = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Male'),
                            leading: Radio<gender2>(
                              value: gender2.male,
                              groupValue: _character2,
                              onChanged: (gender2? value) {
                                setState(() {
                                  _character2 = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          child: const Text("Calculate"),
                          onPressed: () {
                            setState(() {
                              output= count(myController1.text);
                            });
                            myController1.clear();
                            myController2.clear();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                            side: const BorderSide(
                                width: 1,
                                color: Colors.white70), //border width and color
                            elevation: 3, //elevation of button
                            shape: const RoundedRectangleBorder(
                              //to set border radius to button
                                //borderRadius: BorderRadius.circular(15)
                              ),
                              padding: const EdgeInsets.all(5),
                              textStyle: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)

                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1.5,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                          ),
                            child:
                              Text("                         Your love percentage is: ${cal(output)} %",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),

                        ),
                   Container(
                     height: 225.0,
                     width: 125.0,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border.all(
                         width: 1.5,
                       ),
                       borderRadius: const BorderRadius.all(Radius.circular(15)),
                       image: const DecorationImage(
                         image: AssetImage("gip1.gif"),
                         fit: BoxFit.cover,
                     ),

                    ),
                ),


                  ],

                ),
                  ),
              ),
          );
  }
}