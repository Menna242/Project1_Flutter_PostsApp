import 'di.dart';
import 'dart:io';

import 'msgs.dart';

void main() {
  while (true) {
    welcomeMsg();
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        getallpostsstate();
      case 2:
        getsinglePostState();
      case 3:
        addPostState();
      case 4:
        updatePostState();
      case 5:
        deletePostState();
      case 6:
        exit(0);
      default:
        print('Invalid choice. Please try again.');
    }
  }
}
