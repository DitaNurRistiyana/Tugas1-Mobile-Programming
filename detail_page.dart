import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // untuk buka link eksternal

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  // Fungsi pembuka link
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Tidak dapat membuka $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E8FF),
      appBar: AppBar(
        title: const Text("Tentang Aku 💖"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 252, 128, 206),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // 🔹 Row profil ringkas
            Row(
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Dita Nur Ristiyana 🌸",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Mahasiswi Informatika, Universitas PGRI Semarang",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // 🔹 Column hobby
            const Text(
              "💡 Minat & Hobi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Column(
              children: const [
                Text("🎮 Bermain Game"),
                Text("🎨 Desain di CorelDRAW"),
                Text("🎧 Dengar Musik"),
                Text("💻 Eksperimen dengan Coding"),
              ],
            ),

            const SizedBox(height: 30),

            // 🔹 Row media sosial interaktif
            const Text(
              "📱 Temukan Aku di:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 🔸 Instagram
                InkWell(
                  onTap: () {
                    launchUrl(
                      Uri.parse("https://www.instagram.com/_.nadnrtaa/"),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.camera_alt,
                          color: Color.fromARGB(255, 247, 124, 220), size: 36),
                      SizedBox(height: 4),
                      Text("Instagram"),
                    ],
                  ),
                ),

                // 🔸 WhatsApp
                InkWell(
                  onTap: () {
                    launchUrl(
                      Uri.parse("https://wa.me/6285725438779"),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.chat_bubble, color: Colors.teal, size: 36),
                      SizedBox(height: 4),
                      Text("WhatsApp"),
                    ],
                  ),
                ),
              ],
            ),

            const Spacer(),

            // 🔹 Tombol kembali
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Kembali"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 242, 105, 187),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
