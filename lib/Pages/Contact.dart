import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/Homepage.dart';
import 'package:flutter_project/Pages/Login.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    Widget profile(String a, String b) {
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
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Icon(Icons.contact_mail),
            SizedBox(width: 8),
            Text('Contact'),
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
            const Text('Contact Page', style: TextStyle(fontSize: 30)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        Icon(
                          Icons.email,
                          color: Color(0xFF5F0AE8),
                          size: 21,
                        ),
                        Icon(
                          Icons.phone,
                          color: Color(0xFF5F0AE8),
                          size: 21,
                        ),
                      ],
                    ),
                    profile('Email', 'Telp'),
                    profile(':', ':'),
                    profile('t.c.n@gmail.com', '+62895081397629')
                  ],
                )
              ],
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
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                      (_) => false,
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
