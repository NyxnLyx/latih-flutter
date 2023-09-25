import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/Contact.dart';
import 'package:flutter_project/Pages/Login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Widget profile(String a, String b, String c) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            a,
            style: const TextStyle(fontSize: 21),
          ),
          Text(
            b,
            style: const TextStyle(fontSize: 21),
          ),
          Text(
            c,
            style: const TextStyle(fontSize: 21),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Icon(Icons.face),
            SizedBox(width: 8),
            Text('Profile'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Profile Page',
              style: TextStyle(fontSize: 30),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(children: [
                      Icon(
                        Icons.person,
                        color: Color(0xFF5F0AE8),
                        size: 21,
                      ),
                      Icon(
                        Icons.badge,
                        color: Color(0xFF5F0AE8),
                        size: 21,
                      ),
                      Icon(
                        Icons.computer,
                        color: Color(0xFF5F0AE8),
                        size: 21,
                      ),
                    ]),
                    profile('Nama', 'NIM', 'Jurusan'),
                    profile(':', ':', ':'),
                    profile('Ahmad Yosi Herfanda', '310121012716',
                        'Sistem Informasi'),
                  ],
                ),
              ],
            ),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profil.jpg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 16, fontFamily: 'Inconsolata'),
                  ),
                  child: const Text('← Back'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Contact()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 16, fontFamily: 'Inconsolata'),
                  ),
                  child: const Text('Next →'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
