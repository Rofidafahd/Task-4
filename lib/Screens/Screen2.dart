import 'package:flutter/material.dart';
import 'package:task_4/components/bmi_range_row.dart';
import 'package:task_4/components/bmi_calculator.dart';
import 'package:task_4/components/user_info_row.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
    required this.height,
    required this.weight,
    required this.age,
  });

  final int height;
  final int weight;
  final int age;

  @override
  Widget build(BuildContext context) {
    final bmiCalc = BMICalculator(height: height, weight: weight);
    final String bmiResult = bmiCalc.calculateBMI();
    final String category = bmiCalc.getCategory();

    return Scaffold(
      backgroundColor: Color(0xFF1D1E33),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E33),
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 5),
              // Circle BMI Display
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFCF248E),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'BMI',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        category,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7),
              // BMI Categories Table
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BMIRangeRow(
                      label: 'Underweight',
                      range: '< 18.5',
                      isCurrentCategory: category == 'Underweight'),
                  SizedBox(height: 4),
                  BMIRangeRow(
                      label: 'Normal',
                      range: '19 - 25',
                      isCurrentCategory: category == 'Normal'),
                  SizedBox(height: 4),
                  BMIRangeRow(
                      label: 'Overweight',
                      range: '25 - 30',
                      isCurrentCategory: category == 'Overweight'),
                  SizedBox(height: 4),
                  BMIRangeRow(
                      label: 'Obese Class I',
                      range: '30 - 35',
                      isCurrentCategory: category == 'Obese Class I'),
                  SizedBox(height: 4),
                  BMIRangeRow(
                      label: 'Obese Class II',
                      range: '35 - 40',
                      isCurrentCategory: category == 'Obese Class II'),
                  SizedBox(height: 4),
                  BMIRangeRow(
                      label: 'Obese Class III',
                      range: '> 40',
                      isCurrentCategory: category == 'Obese Class III'),
                ],
              ),
              SizedBox(height: 5),
              // User Info Row
              Padding(
                padding:EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoColumn(label: 'HEIGHT', value: '$height cm'),
                    InfoColumn(label: 'WEIGHT', value: '$weight kg'),
                    InfoColumn(label: 'AGE', value: '$age'),
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