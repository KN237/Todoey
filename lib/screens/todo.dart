import 'package:flutter/material.dart';
import 'package:todoey/config/theme.dart';
import 'package:todoey/widgets/custom_field.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    final titeController = TextEditingController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: const [
          Icon(
            Icons.settings,
            size: 30,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 100),
            decoration: const BoxDecoration(
              color: rose,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 5,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: titeController,
                  hintText: 'Title',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: titeController,
                  hintText: 'Description',
                  maxlines: 12,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: titeController,
                  hintText: 'Deadline (Optional)',
                  icon: Icons.calendar_month,
                  isGrey: true,
                  isEnabled: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: titeController,
                  hintText: 'Add Image (Optional)',
                  icon: Icons.image,
                  isGrey: true,
                  isEnabled: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: rose,
                    elevation: 1,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width / 1.13, 50),
                  ),
                  child: const Text('ADD TODO'),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
