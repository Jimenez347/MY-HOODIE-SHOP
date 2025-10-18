import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1E1E2C), // dark background
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 144, 87, 214), Color(0xFF880E4F)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/premium-photo/3d-rendered-photos-back-colored-hooded-sweatshirt-with-hood_1139417-146379.jpg", // hoodie style avatar
              ),
            ),
            accountName: const Text(
              "Hoodie Lover",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text("hoodieshop@example.com"),
          ),

          // 🔹 Drawer Items
          _buildDrawerItem(
            icon: Icons.store_rounded,
            text: 'Shop',
            onTap: () => Navigator.pushNamed(context, '/shop'),
          ),
          _buildDrawerItem(
            icon: Icons.newspaper_rounded,
            text: 'Newsstand',
            onTap: () => Navigator.pushNamed(context, '/newsstand'),
          ),
          _buildDrawerItem(
            icon: Icons.info_outline_rounded,
            text: 'Who we are',
            onTap: () => Navigator.pushNamed(context, '/info'),
          ),
          _buildDrawerItem(
            icon: Icons.person_outline_rounded,
            text: 'My Profile',
            onTap: () => Navigator.pushNamed(context, '/profile'),
          ),
          _buildDrawerItem(
            icon: Icons.shopping_basket_outlined,
            text: 'Basket',
            onTap: () => Navigator.pushNamed(context, '/basket'),
          ),

          const Spacer(),

          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              '© 2025 Hoodie Shop',
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurpleAccent),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      hoverColor: Colors.deepPurple.withOpacity(0.2),
    );
  }
}
