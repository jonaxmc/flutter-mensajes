import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      ? 'http://10.0.2.2:3000/api'
      : 'http://localhost:3000/api';
  static String socketUrl =
      Platform.isAndroid ? 'http://10.0.2.2:3000' : 'http://localhost:3000';

  // static String apiUrl = Platform.isAndroid
  //     ? 'https://app-chat-jonaxmc.herokuapp.com/api'
  //     : 'https://app-chat-jonaxmc.herokuapp.com/api';
  // static String socketUrl = Platform.isAndroid
  //     ? 'https://app-chat-jonaxmc.herokuapp.com/'
  //     : 'https://app-chat-jonaxmc.herokuapp.com/';
}
