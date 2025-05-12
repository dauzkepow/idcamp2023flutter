import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input dengan Controller')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Write your name here..,',
                labelText: 'Your Name..,',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, ${_controller.text}'),
                    );
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

  //dispose controller
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
