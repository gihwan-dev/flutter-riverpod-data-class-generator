import 'package:data_class_generator/models/user.dart';
import 'package:dio/dio.dart';

Future<List<User>> fetchUsers() async {
  try {
    final Response response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');

    final List userList = response.data;
    print(userList[0]);

    final users = userList.map((user) => User.fromMap(user)).toList();
    print(users[0]);

    return users;
  } catch (e) {
    rethrow;
  }
}
