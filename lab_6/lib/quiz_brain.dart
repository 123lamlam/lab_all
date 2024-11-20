import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
        Question('Loài chim cánh cụt không thể bay nhưng có thể bơi rất nhanh.', true),
    Question('Trái đất quay quanh Mặt trời trong 365 ngày và 6 giờ.', true),
    Question('Kim tự tháp lớn nhất thế giới nằm ở Ai Cập.', false),
    Question('Sao Kim là hành tinh nóng nhất trong hệ Mặt trời.', true),
    Question('Con người có 5 giác quan chính.', true),
    Question('Loài ong mật là loài duy nhất có thể sản xuất mật ong.', false), 
    Question('Cá mập là loài động vật có xương.', false), 
    Question('Cơ thể con người chứa khoảng 70% nước.', true),
    Question('Nhiệt độ thấp nhất từng được ghi nhận trên Trái Đất là dưới -100 độ C.', false), 
    Question('Tiếng cười có thể giúp giảm căng thẳng và cải thiện hệ miễn dịch.', true),
    Question('Dải Ngân hà là thiên hà duy nhất trong vũ trụ.', false), 
    Question('Tất cả loài dơi đều là động vật ăn thịt.', false), 
    Question('Núi Everest là ngọn núi cao nhất trên Trái Đất.', true),
    Question('Loài người đã từng sống cùng loài khủng long.', false),
    Question('Trong hệ Mặt trời, Sao Thổ có nhiều mặt trăng nhất.', false), 

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}