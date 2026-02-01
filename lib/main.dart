import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page', style: TextStyle(fontFamily: 'Myfont')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/profile.png',
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 60),
            Row(
              children: [
                Icon(Icons.person, color: Colors.amber[700]),
                SizedBox(width: 10),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 18, fontFamily: 'Myfont'),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Icon(Icons.work, color: Colors.amber[700]),
                SizedBox(width: 10),
                Text(
                  'Software Engineer',
                  style: TextStyle(fontSize: 18, fontFamily: 'Myfont'),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Icon(Icons.email, color: Colors.amber[700]),
                SizedBox(width: 10),
                Text(
                  'john.doe@example.com',
                  style: TextStyle(fontSize: 18, fontFamily: 'Myfont'),
                ),
              ],
            ),
            SizedBox(height: 60),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Social Media:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Myfont',
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.facebook, color: Colors.amber[700]),
                SizedBox(width: 10),
                Text(
                  'facebook.com/johndoe',
                  style: TextStyle(fontSize: 18, fontFamily: 'Myfont'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.tiktok, color: Colors.amber[700]),
                SizedBox(width: 10),
                Text(
                  'tiktok.com/@johndoe',
                  style: TextStyle(fontSize: 18, fontFamily: 'Myfont'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.snapchat, color: Colors.amber[700]),
                SizedBox(width: 10),
                Text(
                  'snapchat.com/johndoe',
                  style: TextStyle(fontSize: 18, fontFamily: 'Myfont'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
