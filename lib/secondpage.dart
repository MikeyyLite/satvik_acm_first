import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: const Text("Orders"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.0,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(200), // Image radius
              child: Image.asset('assets/food.jpg', fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,0,0,3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 30.0, 4.0, 0.0),
                  child: CircularPercentIndicator(
                    radius: 78,
                    lineWidth: 10,
                    backgroundColor: Colors.green,
                    progressColor: Colors.green,
                    percent: 0.47,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '47%',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 37,
                          ),
                        ),
                        Text(
                          'Progress',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    animation: true,
                    animationDuration: 2000,
                    backgroundWidth: 1.5,
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: 90,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      side: const BorderSide(width: 1.0, color: Colors.black),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(2),
                    ),
                    child: const Icon(
                      Icons.flash_on,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: 90,
                  child: ElevatedButton(

                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      side: const BorderSide(width: 1.0, color: Colors.black),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(2),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}