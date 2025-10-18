import 'package:flutter/material.dart';

class NewsstandPage extends StatelessWidget {
  const NewsstandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F3FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0015FF),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "New Arrivals 🧥",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _buildHoodieCard(
            "Classic Black Hoodie",
            "Soft cotton fabric with a minimalist style.",
            "https://i.pinimg.com/1200x/56/df/88/56df88d0eca476ed6033ba0b38cc1c69.jpg",
            "₱1,499",
          ),
          _buildHoodieCard(
            "Oversized Beige Hoodie",
            "Perfect for cozy days and neutral outfits.",
            "https://i.pinimg.com/1200x/37/2e/70/372e700802f433384679e6a3a8cf98ae.jpg",
            "₱1,299",
          ),
          _buildHoodieCard(
            "Streetwear Gray Hoodie",
            "Premium fleece with an urban look.",
            "https://i.etsystatic.com/60196368/r/il/e39d47/7005122480/il_1588xN.7005122480_cpaa.jpg",
            "₱1,799",
          ),
          _buildHoodieCard(
            "Zip-Up Navy Hoodie",
            "Lightweight design for any season.",
            "https://jkattire.co.uk/cdn/shop/files/NAVY6_63a4e830-d0fa-468d-89e5-cdba7a1cf5e6_800x1200.jpg?v=1728051942",
            "₱1,599",
          ),
        ],
      ),
    );
  }

  Widget _buildHoodieCard(
    String name,
    String desc,
    String imageUrl,
    String price,
  ) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111111),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  desc,
                  style: const TextStyle(color: Colors.black54, fontSize: 14),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E8B57),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add_shopping_cart),
                      label: const Text("Add"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0015FF),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
