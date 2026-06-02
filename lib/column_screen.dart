import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Column screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(2),
          padding: const EdgeInsets.all(5),
          // MAIN ROW
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  LEFT COLUMN
              Container(
                width: 250,

                // COLUMN
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "Build bright University",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                      const SizedBox(height: 5),
                    // DESCRIPTION
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                      "Wellcome Build Bright University. \n Have 9 campus in Cambodia ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    ),

                    const SizedBox(height: 2),

                    // RATING ROW
                    Container(

                      // decoration: BoxDecoration(
                      //   border: Border.all(color: Colors.red, width: 2),
                      // ),

                      child: Row(

                        children: const [
                          Row(mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.star,
                                  color: Colors.orange),
                              Icon(Icons.star,
                                  color: Colors.orange),
                              Icon(Icons.star,
                                  color: Colors.orange),
                              Icon(Icons.star,
                                  color: Colors.orange),
                              Icon(Icons.star,
                                  color: Colors.black),
                            ],
                          ),
                          SizedBox(width: 30),
                              Text(
                                "99 Reviews",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),


                    // ================= ICON SECTION =================
                    Container(
                      padding: const EdgeInsets.all(5),
                      // decoration: BoxDecoration(
                      //   border: Border.all(color: Colors.red, width: 2),
                      // ),

                      // ROW INSIDE COLUMN
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: const [

                          // COLUMN 1
                          Column(
                            children: [
                              Icon(Icons.home,
                                  color: Colors.green),
                              SizedBox(height: 5),
                              Text("Administration"),
                              Text("PhomPenh"),
                            ],
                          ),

                          // COLUMN 2
                          Column(
                            children: [
                              Icon(Icons.book,
                                  color: Colors.green),
                              SizedBox(height: 5),
                              Text("Faculties"),
                              Text("8"),
                            ],
                          ),

                          // COLUMN 3
                          Column(
                            children: [
                              Icon(Icons.map,
                                  color: Colors.green),
                              SizedBox(height: 5),
                              Text("campus"),
                              Text("9"),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              // ================= RIGHT IMAGE =================

              Expanded(
                child: Image.asset(
                  "assets/images/logo.jpg",
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
