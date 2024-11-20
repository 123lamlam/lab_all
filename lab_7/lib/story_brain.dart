import 'story.dart';

class StoryBrain {
List<Story> _storyData = [
    Story(
    storyTitle:
        'Bạn đang đi bộ trong một khu rừng hoang vắng thì đột nhiên trời đổ mưa lớn. Bạn tìm thấy một túp lều nhỏ bên đường và quyết định vào trong để tránh mưa. Khi bước vào, bạn gặp một người đàn ông già với vẻ ngoài lạ lùng, ông ta nói: "Chào, cậu đang tìm gì?".',
    choice1: 'Tôi chỉ muốn tránh mưa, có thể ở lại đây không?',
    choice2: 'Cảm ơn, tôi sẽ đi tiếp.'),
Story(
    storyTitle: 'Người đàn ông nhìn bạn một lúc rồi mỉm cười.',
    choice1: 'Ông ta có vẻ hiền lành. Tôi sẽ ở lại đây một lát.',
    choice2: 'Không, tôi cảm thấy không an toàn, tôi sẽ ra ngoài.'),
Story(
    storyTitle:
        'Khi bạn ngồi xuống, người đàn ông bắt đầu kể về những câu chuyện kỳ lạ về khu rừng. Ông ta nói rằng có một bí mật trong khu rừng này, nhưng không ai dám nói ra. Bạn nhìn xung quanh và phát hiện một cánh cửa bí mật ẩn sau tấm ván.',
    choice1: 'Tôi sẽ hỏi ông ta về cánh cửa bí mật.',
    choice2: 'Tôi không muốn liên quan, tôi sẽ rời đi ngay.'),
Story(
    storyTitle:
        'Cánh cửa dẫn bạn vào một căn phòng tối tăm, trong đó có một chiếc rương cổ. Người đàn ông nói: "Cái này là của ông tôi, nhưng tôi không dám mở nó. Cậu có muốn thử không?"',
    choice1: 'Tôi sẽ mở rương và xem bên trong.',
    choice2: 'Tôi không muốn mở, tôi sẽ đi ra ngoài.'),
Story(
    storyTitle:
        'Trong rương là một cuốn sách cổ với những ký tự lạ. Khi bạn mở sách ra, một luồng ánh sáng mạnh mẽ tỏa ra và bạn cảm thấy mình bị cuốn vào một thế giới khác.',
    choice1: 'Chơi lại',
    choice2: ''),
Story(
    storyTitle:
        'Bạn rơi vào một thế giới kỳ lạ, nơi mọi thứ đều có màu sắc sáng chói và những sinh vật kỳ quái xung quanh bạn. Người đàn ông đứng bên cạnh nói: "Cậu đã mở cánh cửa, giờ thì cậu phải tìm đường ra."',
    choice1: 'Chơi lại',
    choice2: ''),
Story(
    storyTitle:
        'Bạn bước đi trong thế giới mới và tìm thấy một cánh cổng dẫn về thế giới cũ. Nhưng trước khi bước qua, người đàn ông gọi bạn lại và nói: "Cậu muốn ở lại đây, hay trở về thế giới thật?"',
    choice1: 'Tôi muốn trở về thế giới cũ.',
    choice2: 'Tôi sẽ ở lại đây để khám phá thêm.')
  ];

String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}