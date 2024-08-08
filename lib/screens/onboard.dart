import 'package:flutter/material.dart';
import 'package:todoey/screens/todo_list.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});
  @override
  Widget build(BuildContext context) {
    var forTitle = Theme.of(context)
        .textTheme
        .titleLarge!
        .copyWith(fontSize: 30, fontWeight: FontWeight.bold);

    var forSubTitle = Theme.of(context).textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 150, 150, 150),
        fontSize: 20);
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 50),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bg-two.png'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/avatar.png'),
          Column(
            children: [
              Text(
                'Task Management &',
                style: forTitle,
              ),
              Text(
                'To-Do List',
                style: forTitle,
              ),
            ],
          ),
          Text(
            'This productive tool is \n designed to help\n you better manage your task\nproject-wise conveniently!',
            textAlign: TextAlign.center,
            style: forSubTitle,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return const TodoList();
                  },
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                const Text(
                  'Let\'s Start ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.arrow_right_alt,
                  size: 25,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
