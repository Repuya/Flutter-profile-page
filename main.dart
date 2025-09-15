import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //profile picture
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                border: Border.all(
                  color: Colors.white10,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 10,
                    offset: Offset(0, 5)
                  )
                ]
              ),
              child: ClipOval(
                child: Image.network('https://flxt.tmsimg.com/assets/p274928_b_v13_bd.jpg ',
                width: 150,
                  height: 150,
                fit: BoxFit.cover,) //insert image link
              ),
            ),
            //NAME
            SizedBox(height: 20),
            Text('Jessiah D. Repuya',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color:Colors.black87,
            ),
            ),

            //ABOUT ME SECTION

            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius : BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 8,
                    offset: Offset(0, 3)
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Me',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  ),
                  ),
                  SizedBox(height: 10),
                  Text('Gutom ma po ako, gusto ko na mag kape',
                  style:TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                    textAlign: TextAlign.left,
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