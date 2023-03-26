import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:profilepage/article.dart';

import './screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Write App';
  // This widget is the root of your application.



    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController hobbyController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Padding(

        padding: const EdgeInsets.all(10),


        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Profile Page ',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),


    )),

            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please Enter Name',


                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please Enter Your Age',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(

                controller: genderController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please Enter Your Gender',

                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),

              child: TextField(

                controller: countryController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please Enter Your Country Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),

              child: TextFormField(

                controller: hobbyController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please Enter Your Favourite hobby ',
                ),


              ),
            ),

            Container(
                height: 80,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const article()),
            );
                  },
                )
            ),

          ],
        ));
  }
}