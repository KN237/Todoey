import 'package:flutter/material.dart';
import 'package:todoey/config/theme.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      width: 380,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (_, index) {
          return Container(
            height: 160,
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: index == 1 ? rose.withOpacity(0.7) : rose),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Design Logo',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.schedule,
                      size: 18,
                      color: Colors.white,
                    )
                  ],
                ),
                Text(
                  'Make logo for the mini project',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Created at 1 Sept 2021',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w200),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
