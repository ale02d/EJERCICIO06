import 'package:flutter/material.dart';
import 'widgets/category_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EL UNIVERSO"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 15),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            const SizedBox(height: 20),

            // 🔹 Título
            const Text(
              "¿QUÉ ES?",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Imagen principal
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://picsum.photos/400/200",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Texto descriptivo
            const Text(
              "El universo es el conjunto de todo lo que existe. "
              "Está lleno de galaxias, estrellas, planetas y fenómenos "
              "que aún no logramos comprender completamente.",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            // 🔹 Botón principal
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text("Ver más"),
            ),

            const SizedBox(height: 40),

            const Text(
              "CATEGORÍAS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Categorías personalizadas
            const CategoryBox(
              title: "Galaxias",
              subtitle: "Sistemas gigantes de estrellas",
              icon: Icons.public,
            ),

            const CategoryBox(
              title: "Planetas",
              subtitle: "Cuerpos celestes que orbitan estrellas",
              icon: Icons.circle,
            ),

            const CategoryBox(
              title: "Agujeros Negros",
              subtitle: "Regiones con gravedad extrema",
              icon: Icons.dark_mode,
            ),

            const CategoryBox(
              title: "Estrellas",
              subtitle: "Astros que emiten luz propia",
              icon: Icons.star,
            ),

            const CategoryBox(
              title: "Constelaciones",
              subtitle: "Grupos de estrellas en el cielo",
              icon: Icons.auto_awesome,
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
          ),
        ],
      ),
    );
  }
}