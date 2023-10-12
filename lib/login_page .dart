import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telegram/home.dart';


const savedKey = 'userloggedin';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   final _number = TextEditingController(text: "91");
  bool userloggedin = false;


final _formKey=GlobalKey<FormState>();

 @override
  void initState() {
   checkloggedin();
    super.initState();
  }

 @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.white, Colors.blue],
      stops: [0.0, 1.0],
    ),
  ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 150,
                    
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/telegram logo.png',
                        height: 100,
                        width: 100,
                      ),
                      const Text(
                        'Your phone number',
                        style: TextStyle(
                          fontSize: 33,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text('Please confirm your country code'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('and enter your phone number'),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Form(
                              key:_formKey,
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Phone Number',
                                      style: TextStyle(),
                                    ),
                                  ),
                                  TextFormField(
                                   controller: _number,
                                   keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        contentPadding:
                                            EdgeInsets.all(10),
                                        border: OutlineInputBorder()),
                                          validator: (value) {
                                          if(value==null||value.isEmpty){
                                            return '*Enter your number' ;
                                          }else{
                                            return null;
                                          }
                                        },
                                  ),
                                  SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 250,
                                        top: 150,
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            _formKey.currentState!.validate();
                                           checklogin(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Icon(Icons.arrow_forward),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
 checklogin(BuildContext ctx) async {
    final phoneNumber = _number.text;
    if (phoneNumber == "918848866054") {
      final sharedprefs = await SharedPreferences.getInstance();    
      await sharedprefs.setBool(savedKey, true);
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (ctx)=>const home()));
    }else{
       ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(20),
          content: Text('Enter a valid phone number')));
    }
  }
  
   Future<void> checkloggedin() async {
    final sharedprefs = await SharedPreferences.getInstance();
    final userloggedin = sharedprefs.getBool(savedKey);
    if (userloggedin == null || userloggedin == false) {
    
    } else {
      Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (ctx1) => const home()));
    }
  }
  }
  

