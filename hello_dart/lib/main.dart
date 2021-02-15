import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  print("Hello Dart");

  /*
  Basic Primitive Type
   */

  int number = 10;
  double antennaDiameter = 3.7;
  print(number);
  print(antennaDiameter);

  String name = "김승진";
  String link_str = 'Hello, $name';

  print(link_str);

  print(link_str.substring(0,6));

  // Dynimic Type
  var programmerType = 'iOS';
  programmerType = "AND";

  print(programmerType);

  //if null 연산자
  String loginAccount = null;
  String playerName = loginAccount ?? 'JinShine';
  print(playerName);

  // final, const, static

  //final : 한번 설정하면 변경될 수 없다는 의미
  final String nameStr = "jin";

  //nameStr = "shine" // error

  //const : 상수를 만드는 방법
  const String nameConst = "지니";

  const String PASSWORD = '123';
  String _input = '123';

  if (_input == PASSWORD) {
    print('로그인 성공');
  } else {
    print('로그인 실패');
  }

  //static : 인스턴스를 생성하지 않고 값을 출력
  print(Queue.maximumCount);

  // 클래스 생성
  Account account1 = Account("117-11-1123", 20000);
  print("account1 has ${account1.balance} won");

  // 기본 자료구조
  // 리스트(List, Map, Set)

  // 1. List
  List<String> strList = ["1", "2", "3", "4", "5"];
  List<int> numbers = [1,2,3,4,5];

  for (int number in numbers) {
    print(number);
  }

  numbers.forEach((element) {
    print(element);
  });

  print('first ${numbers[0]}');
  print('last ${numbers[numbers.length - 1]}');

  // 2. Map
  Map<String, int> phoneMap = {
    "김": 010,
    "승": 9911,
    "진": 9999
  };

  Map image = {
    'tags': ['saturn'],
    'url': '//path/to'
  };

  print(phoneMap["김"]);

  phoneMap.forEach((key, value) {
    print("KEY : ${key}");
    print("VALUE : ${value}");
  });

  // 3. Set은 생략


  // JSON 다루기
  jsonHandle();
}

/*
  function
 */





// 클래스
class Queue {
  static const int maximumCount = 10;
}

class Account {
  String accountNumber;
  int balance;

  Account(this.accountNumber, this.balance);

  bool withdraw(int amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    }

    return false;
  }

  bool deposit(int amount) {
    balance += amount;
    return true;
  }

  bool transfer(Account dest, int amount) {
    if (balance > amount) {
      balance -= amount;
      dest.deposit(amount);
      return true;
    }

    return false;
  }
}

void jsonHandle() {
  String jsonStr = """
  {
    "basket": {
      "apple" : 50,
      "banana" : 10,
      "grape" : 5
    }
  }
  """;

  Map json = jsonDecode(jsonStr);
  Map basket = json["basket"];
  print(basket);
  //{apple: 50, banana: 10, grape: 5}

  print(basket["apple"]);
  print(basket["banana"]);
  print(basket["grape"]);

}
