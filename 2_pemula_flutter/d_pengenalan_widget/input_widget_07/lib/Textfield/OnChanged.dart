import 'package:flutter/material.dart';

class OnChanged extends StatefulWidget {
  const OnChanged({super.key});

  @override
  State<OnChanged> createState() => _OnChangedState();
}

//Penerapan TextField
class _OnChangedState extends State<OnChanged> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Widget')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Write your name here..,',
                labelText: 'Your Name',
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value; //nilai disimpan di _name
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //aksi yang dilakukan
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(content: Text('Hello, $_name'));
                  },
                );
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
