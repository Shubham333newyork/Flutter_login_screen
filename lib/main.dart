import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/light-1.png'))),
                      )),
                  Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/light-2.png'))),
                      )),
                  Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/clock.png'))),
                      )),
                  Positioned(
                    child: Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: const Center(
                        child: Text(
                          'PhantomHacker',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, 1),
                        blurRadius: 20.0,
                      )
                    ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(1.0),
                          decoration: const BoxDecoration(),
                          child: TextField(
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 20.0,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, 1),
                        blurRadius: 20.0,
                      )
                    ]),
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey[400])),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        
      ),
    );
  }
}
