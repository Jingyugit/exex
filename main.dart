import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xfffac0c0).withOpacity(0.2),
          toolbarHeight: 40,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('wine1.jpeg', width: 400, height: 300,),
              SizedBox(
                width: double.infinity,
                height: 30,
              ),
              Container(
                width: 250,
                height: 50,
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('오늘은 무슨 와인을 마실까??'),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
              ),
              Container(
                child: Row(
                  children: [
                    Flexible(child: Container(color: Colors.red), flex: 1,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('오늘의 추천 조합', style: TextStyle(fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('wine1.jpeg', width: 100, height: 100),
                              Image.asset('wine1.jpeg', width: 100, height: 100),
                              Image.asset('wine1.jpeg', width: 100, height: 100),
                            ],
                          ),
                        )
                      ],
                    ),
                    Flexible(child: Container(color: Colors.red), flex: 1,),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xfffac0c0).withOpacity(0.2),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.wine_bar, size: (32)), onPressed: (){},),
              IconButton(icon: Icon(Icons.home, size: (32)), onPressed: (){},),
              IconButton(icon: Icon(Icons.contact_page, size: (32)), onPressed: (){},),
            ],
          ),
        ),
      )
    );

  }
}


