import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_1/connection_page.dart';

class TrailPage extends StatelessWidget {
  const TrailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 237, 191),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.map_rounded,
                    color: Colors.black87,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Dayzer",
                    style: TextStyle(
                        fontFamily: "capital-gothic-bold",
                        fontSize: 35,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  textAlign: TextAlign.center,
                  "To simplify the way you work",
                  style:
                      TextStyle(fontFamily: "AllianceNo1-Bold", fontSize: 40),
                ),
              ),
            ),
            Opacity(opacity: 0.8, child: Image.asset('images/image.png')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "Controlling deliveries in reliable and no-hassle way.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConnectionPage()));
                  },
                  child: Text(
                    "Get free trail",
                    style:
                        TextStyle(fontFamily: "AllianceNo1-Bold", fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
