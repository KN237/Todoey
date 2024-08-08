import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey/config/theme.dart';
import 'package:todoey/screens/todo.dart';
import 'package:todoey/widgets/list_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  'LIST OF TODO',
                  style: GoogleFonts.bebasNeue(color: rose, fontSize: 35),
                ),
                const Stack(
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: CircleAvatar(
                        backgroundColor: rose,
                        radius: 4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const ListItem(),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return const Todo();
                    },
                  ),
                );
              },
              child: const Text('ADD PROJECT'),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
