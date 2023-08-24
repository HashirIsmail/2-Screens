import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/ForgotPassword.png",
                height: 340,
                width: 340,
                ),
            ),
            const Center(
              child: Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
            SizedBox(
              height: 25,
            ),
            const Center(
              child: SizedBox(
                width: 320,
                height: 45,
                child: TextField(
                  style: TextStyle(color: Color.fromARGB(255, 37, 51, 247),),
                  cursorWidth: 1,
                  decoration: InputDecoration(
                    // fillColor: Color.fromARGB(255, 235, 235, 235),
                    // filled: true,
                    hintText: "Enter new Password",
                      prefixIcon: Icon(Icons.lock,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 37, 51, 247),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  height: 45,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: Text("LOG IN",style: TextStyle(fontSize: 16),), 
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 37, 51, 247),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      )
                    )
                    ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  ),

              GestureDetector(
                child: Text(
                  "Login here",
                  style: TextStyle(
                  color: Color.fromARGB(255, 37, 51, 247),
                  ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                        context,
                        '/',
                    );
                  },
                ),
                ],
              )
          ],
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Color.fromARGB(255, 37, 51, 247),
        )
      ),
    );
  }
}