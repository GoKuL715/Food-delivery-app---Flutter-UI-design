import 'package:flutter/material.dart';
import 'package:food_delivery_app/firstscreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("images/boy.jpg"),
          SizedBox(
            height: 5,
          ),
          Text(
            "Order Your Food Now!",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Order food and get delivery within a few munutes to your doorstep",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),),
            SizedBox(height: 80),
            InkWell(
              onTap: () {
               Navigator.push(context,MaterialPageRoute(builder: (context) => FirstScreen(),) ); 
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFF2F08),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Get Started",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size:20,
                      ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}