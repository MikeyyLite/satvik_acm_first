import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<FirstPage> createState() => _FirstPageState();
}

String orderStatus1 = 'Pending';
String orderStatus2 = 'Pending';
String orderStatus3 = 'Pending';
String orderStatus4 = 'Pending';

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                    height: 250,
                    width: 800,
                    child: Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 7.0,
                      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const SecondPage(title: 'SecondPage');
                              }
                              )
                          );
                        },
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(30.0,20.0,30.0,0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.timer,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 11.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.inventory_2,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 11.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        orderStatus1,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),

                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        '2 lbs',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        '8',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20), // Image border
                                          child: SizedBox.fromSize(
                                            size: const Size.fromRadius(70), // Image radius
                                            child: Image.asset('assets/food.jpg', fit: BoxFit.cover),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(Icons.done, color: Colors.brown, size: 40.0),
                                            tooltip: 'Click to Accept',
                                            onPressed: () {
                                              setState(() {
                                                orderStatus1 = 'Accepted';
                                              });
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(Icons.close, color: Colors.brown, size: 40.0),
                                            tooltip: 'Click to Reject',
                                            onPressed: () {
                                              setState(() {
                                                orderStatus1 = 'Rejected';
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )

                        ),
                      ),
                    )
                ),
                SizedBox(
                    height: 250,
                    width: 800,
                    child: Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 7.0,
                      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const SecondPage(title: 'SecondPage');
                              }));
                        },
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(30.0,20.0,30.0,0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.timer,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 11.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.inventory_2,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 11.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        orderStatus2,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),

                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        '2 lbs',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        '8',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20), // Image border
                                          child: SizedBox.fromSize(
                                            size: const Size.fromRadius(70), // Image radius
                                            child: Image.asset('assets/food.jpg', fit: BoxFit.cover),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(Icons.done, color: Colors.brown, size: 40.0),
                                            tooltip: 'Click to Accept',
                                            onPressed: () {
                                              setState(() {
                                                orderStatus2 = 'Accepted';
                                              });
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(Icons.close, color: Colors.brown, size: 40.0),
                                            tooltip: 'Click to Reject',
                                            onPressed: () {
                                              setState(() {
                                                orderStatus2 = 'Rejected';
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )

                        ),
                      ),
                    )
                ),
                SizedBox(
                    height: 250,
                    width: 800,
                    child: Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 7.0,
                      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const SecondPage(title: 'SecondPage');
                              }));
                        },
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(30.0,20.0,30.0,0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.timer,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 11.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.inventory_2,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 11.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        orderStatus3,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),

                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        '2 lbs',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        '8',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20), // Image border
                                          child: SizedBox.fromSize(
                                            size: const Size.fromRadius(70), // Image radius
                                            child: Image.asset('assets/food.jpg', fit: BoxFit.cover),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(Icons.done, color: Colors.brown, size: 40.0),
                                            tooltip: 'Click to Accept',
                                            onPressed: () {
                                              setState(() {
                                                orderStatus3 = 'Accepted';
                                              });
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(Icons.close, color: Colors.brown, size: 40.0),
                                            tooltip: 'Click to Reject',
                                            onPressed: () {
                                              setState(() {
                                                orderStatus3 = 'Rejected';
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )

                        ),
                      ),
                    )
                ),
                SizedBox(
                    height: 250,
                    width: 800,
                    child: Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 7.0,
                      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const SecondPage(title: 'SecondPage');
                              }));
                        },
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(30.0,20.0,30.0,0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.timer,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 11.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.inventory_2,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2.0, 11.0, 2.0, 8.0),
                                      child: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.pink,
                                        size: 24.0,
                                        semanticLabel: 'Text to announce in accessibility modes',
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        orderStatus4,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),

                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        '2 lbs',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        '8',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.brown, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20), // Image border
                                          child: SizedBox.fromSize(
                                            size: const Size.fromRadius(70), // Image radius
                                            child: Image.asset('assets/food.jpg', fit: BoxFit.cover),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(Icons.done, color: Colors.brown, size: 40.0),
                                            tooltip: 'Click to Accept',
                                            onPressed: () {
                                              setState(() {
                                                orderStatus4 = 'Accepted';
                                              });
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(Icons.close, color: Colors.brown, size: 40.0),
                                            tooltip: 'Click to Reject',
                                            onPressed: () {
                                              setState(() {
                                                orderStatus4 = 'Rejected';
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )

                        ),
                      ),
                    )
                ),
              ],
            ),
          ]
      ),
    );
  }
}