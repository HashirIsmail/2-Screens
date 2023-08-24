import 'package:flutter/material.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({super.key});

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/Welcome.png",
                height: 300,
                width: 300,
                ),
            ),
            const Center(
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
            SizedBox(
              height: 15,
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
                    hintText: "Username or Email",
                      prefixIcon: Icon(Icons.person,),
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
              height: 22,
            ),
            const Center(
              child: SizedBox(
                width: 320,
                height: 45,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Color.fromARGB(255, 37, 51, 247),),
                  cursorWidth: 1,
                  decoration: InputDecoration(
                    // fillColor: Color.fromARGB(255, 235, 235, 235),
                    // filled: true,
                    hintText: "Password",
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
            Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 2),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 37, 51, 247),
                    ),
                    ),
                ),
                  onTap: () {
                    Navigator.pushNamed(
                        context,
                        'fp',
                    );
                  },
                ),
            ),
              SizedBox(
                height: 25,
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
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Center(
                child: Text(
                  "Or connect with social",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Facebook"),
                      style: ElevatedButton.styleFrom(
                      primary: Color(0xFF3b5998),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Google"),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    ),
                  ),
                ],
              ),
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