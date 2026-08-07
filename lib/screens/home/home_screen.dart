import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EcoChallenge CI 🇨🇮"),

        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: double.infinity,

              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),

                color: Colors.green,
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    "Un Abidjan plus propre 🌱",

                    style: TextStyle(
                      color: Colors.white,

                      fontSize: 26,

                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Chaque geste compte pour protéger notre environnement.",

                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Nos statistiques",

              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: _statCard("Participants", "1250", Icons.people),
                ),

                const SizedBox(width: 10),

                Expanded(child: _statCard("Défis", "340", Icons.eco)),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              "Défis près de toi",

              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: const Icon(Icons.delete, color: Colors.green),

                title: const Text("Nettoyage quartier Yopougon"),

                subtitle: const Text("+50 points"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.park, color: Colors.green),

                title: const Text("Planter un arbre à Abidjan"),

                subtitle: const Text("+100 points"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statCard(String title, String value, IconData icon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          children: [
            Icon(icon, color: Colors.green),

            const SizedBox(height: 8),

            Text(
              value,

              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            Text(title),
          ],
        ),
      ),
    );
  }
}
