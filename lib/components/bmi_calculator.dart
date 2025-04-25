class BMICalculator {
  final int height;
  final int weight;

  BMICalculator({required this.height, required this.weight});

  late double BMI;

  String calculateBMI() {
    BMI = weight /( (height / 100)* (height / 100));
    return BMI.toStringAsFixed(1);
  }

  String getCategory() {
    if ( BMI < 18.5) return 'Underweight';
    if ( BMI < 25) return 'Normal';
    if ( BMI < 30) return 'Overweight';
    if ( BMI < 35) return 'Obese Class I';
    if ( BMI < 40) return 'Obese Class II';
    return 'Obese Class III';
  }
}
