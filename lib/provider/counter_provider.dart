import 'package:flutter/material.dart';
import 'package:ticket_app/requests/requests.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}

class PostData extends ChangeNotifier {
  List<dynamic> _posts = [];
  List<dynamic> get posts => _posts;

  void getData() async {
    final response = await ApiService().get('/posts');
    _posts = response;
    notifyListeners();
  }
}
