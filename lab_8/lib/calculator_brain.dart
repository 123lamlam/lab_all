import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;  

  // Tính toán BMI
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);  
    return _bmi.toStringAsFixed(1); 
  }

  // Lấy kết quả BMI
  String getResult() {
    if (_bmi >= 25) {
      return 'Thừa cân';  
    } else if (_bmi >= 18.5) {
      return 'Bình thường';  
    } else {
      return 'Thiếu cân'; 
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Bạn có trọng lượng cơ thể cao hơn bình thường. Cố gắng tập thể dục nhiều hơn.'; 
    } else if (_bmi >= 18.5) {
      return 'Cân nặng bình thường';  
    } else {
      return 'Bạn có trọng lượng cơ thể thấp hơn bình thường. Bạn có thể ăn nhiều hơn một chút.';  
    }
  }
}
