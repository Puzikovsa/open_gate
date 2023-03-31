import 'package:flutter/material.dart';
import 'package:open_gate/models/phone.dart';
import '../models/phone_access.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Phone> access = PhoneAccess().phoneAccess;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Открыть ворота'),
      ),
      body: ListView.builder(
          itemCount: access.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          access[index].name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          access[index].number,
                          style: const TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, color: Colors.blueAccent),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.red,
                      ),
                  ),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
