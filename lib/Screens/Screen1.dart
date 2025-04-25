import 'package:flutter/material.dart';
import 'Screen2.dart';
import 'package:task_4/components/genderCard.dart';

class Screen1 extends StatefulWidget {
  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool isMaleSelected = true;
  double Height = 150.0;
  int Weight = 60;
  int Age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1E33),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BMI CALCULATOR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: Row(
                  children: [
                    GenderCard(
                      icon: Icons.male,
                      label: "Male",
                      isSelected: isMaleSelected,
                      onTap: () {
                        setState(() {
                          isMaleSelected = true;
                        });
                      },
                    ),
                    const SizedBox(width: 15),
                    GenderCard(
                      icon: Icons.female,
                      label: "Female",
                      isSelected: !isMaleSelected,
                      onTap: () {
                        setState(() {
                          isMaleSelected = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF57094D),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Height.toStringAsFixed(0),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " cm",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF1D1E33),
                          activeTrackColor: Color(0xFFCF248E),
                          thumbColor: Color(0xFFCF248E),
                        ),
                        child: Slider(
                          value: Height,
                          min: 100,
                          max: 200,
                          onChanged: (double newValue) {
                            setState(() {
                              Height = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF57094D),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("WEIGHT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              Weight.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      Weight--;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    backgroundColor: Color(0xFFCF248E),
                                  ),
                                  child: Icon(Icons.remove),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      Weight++;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    backgroundColor: Color(0xFFCF248E),
                                  ),
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF57094D),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("AGE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              Age.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      Age--;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    backgroundColor: Color(0xFFCF248E),
                                  ),
                                  child: Icon(Icons.remove),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    backgroundColor: Color(0xFFCF248E),
                                  ),
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen2(
                        height: Height.toInt(),
                        weight: Weight,
                        age: Age,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFCF248E),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Center(
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
