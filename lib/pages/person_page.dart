import 'package:data_class_generator/models/person.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  Person generatePerson(
      {required int id, required String name, required String email}) {
    return Person(
      id: id,
      name: name,
      email: email,
    );
  }

  @override
  Widget build(BuildContext context) {
    const person1 = Person(name: 'John', id: 1, email: 'john@naver.com');
    final person2 = person1.copyWith(id: 2, name: "james");
    final person3 =
        generatePerson(id: 1, name: 'John', email: 'john@naver.com');
    print('person 1: $person1');
    print('person 2: $person2');
    print('person 3: $person3');
    print(person1 == person3);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
    );
  }
}
