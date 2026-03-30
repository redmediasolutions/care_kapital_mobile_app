import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Column(
          children: [
            Text('Welcome Back, Josh!', style: Theme.of(context).textTheme.headlineSmall),
            Row(
              children: [
                Text('Rahul sharma', style: Theme.of(context).textTheme.titleMedium),
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/75.jpg'),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}