import 'package:flutter/material.dart';
import 'package:sateeq/api/api_base_helper.dart';

class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  final ApiBaseHelper _helper = ApiBaseHelper();

  String ans = 'Text';
  List<TodoList> arr = [];

  void getData() async {
    try {
      final response = await _helper
          .get('https://jsonplaceholder.typicode.com/users/1/todos');

      setState(() {
        for (var item in response) {
          TodoList temp = TodoList(
              item['userId'], item['id'], item['title'], item['completed']);
          arr.add(temp);
        }
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(arr[index].title),
                    trailing: Checkbox(
                      value: arr[index].completed,
                      onChanged: null,
                    ),
                  );
                },
                itemCount: arr.length),
          ),
          FloatingActionButton(
            onPressed: (() => {getData()}),
            child: const Text('click'),
          )
        ],
      ),
    );
  }
}

class TodoList {
  TodoList(this.userid, this.id, this.title, this.completed);
  int userid;
  int id;
  String title;
  bool completed;
}
