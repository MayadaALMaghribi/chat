import 'package:assignment6/custom_chat_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset("assests/arrow_back.png", width: 10),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assests/private_pic.jpg"),
              ),
              SizedBox(width: 16),
              Text(
                "John Safwat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xff168C4B),
          actions: [
            Image.asset("assests/Phone.png", width: 25),
            SizedBox(width: 20),
            Image.asset("assests/video.png", width: 25),
            SizedBox(width: 20),
            Image.asset("assests/More-vertical.png", width: 25),
          ],
        ),

        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,

              image: AssetImage("assests/background_pattern.jpg"),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: CustomChatBox(
                          colorName: Color(0xff168C4B),
                          text: "Hello !",
                        ),
                      ),
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: CustomChatBox(
                          colorName: Color(0xff232D36),
                          text: "Hello !",
                        ),
                      ),
                      Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: CustomChatBox(
                          text:
                              "Hey! Have you ever thought \n about how random moments \n can sometimes turn into the\n best memories? It’s like the \n universe loves to surprise us\n when we least expect it!",
                          colorName: Color(0xff168C4B),
                        ),
                      ),
                      Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: Color(0xff168C4B),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "What a Great Content Tp learn \nFlutter",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(16),
                                child: Image.asset(
                                  "assests/Route.jpg",
                                  width: 237,
                                  height: 171,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: CustomChatBox(
                          text: " What a Great Content Tp learn Flutter ",
                          colorName: Color(0xff232D36),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Color(0xff168C4B),
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Color(0xff168C4B),
                              width: 2,
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Image.asset(
                              "assests/Camera.png",
                              width: 20,
                              height: 20,
                            ),
                          ),

                          hintText: "type a Message .....",
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Image.asset(
                              "assests/Send.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff168C4B),
                      child: Image.asset("assests/Mic.png", width: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
