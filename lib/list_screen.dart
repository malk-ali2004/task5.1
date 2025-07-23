import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
    "1. الشلل التشنجي (Spastic Cerebral Palsy)",
    "2. الشلل الكنعي أو الحركي اللاإرادي (Dyskinetic / Athetoid CP)",
    "3. الشلل الترنحي (Ataxic CP)",
    "4. الشلل المختلط (Mixed CP)"

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("القائمة"),
        backgroundColor: const Color(0xFF0E88A0),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            title: Text(items[index]),
            leading: const Icon(Icons.list),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
