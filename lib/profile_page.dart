import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _nameController = TextEditingController(text: "EJ Jimenez");
  final _emailController = TextEditingController(text: "ejjimenez@gmail.com");
  final _genderController = TextEditingController(text: "Custom");
  final _dobController = TextEditingController(text: "07/08/2004");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F3FF),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            const CircleAvatar(
              radius: 65,
              backgroundImage: NetworkImage(
                "https://scontent.fdvo2-1.fna.fbcdn.net/v/t39.30808-6/541299797_1845151349714800_3715212801059844203_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF_dEcA7khQ8IKqJ7FNYjtNlr4W2VUjeIuWvhbZVSN4i1ddCPpj8e9AvVjXn-UBqojIpR_ChDVSjJBYOLEIzBXe&_nc_ohc=djP9HvAcSDsQ7kNvwGjjaJu&_nc_oc=AdnQPnGtn9ji1SSNFh-kn6LkQMf-P9seT423UJVgjcpEMFy3CglhOoIEebBUOg6oZOJNm5IUqM_ASwsWx_3ZvLOD&_nc_zt=23&_nc_ht=scontent.fdvo2-1.fna&_nc_gid=uunV4LHQtQRrEFKkqUz-5Q&oh=00_AfeA6reNs4CsagqcwUsPme4xxvXM8_qljH0MIuytgX2_oA&oe=68F6D0BA",
              ),
            ),

            const SizedBox(height: 25),

            Text(
              _nameController.text,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            Text("@ejjimenez.com", style: TextStyle(color: Colors.grey[700])),

            const SizedBox(height: 30),

            _buildTextField("Full Name", _nameController, Icons.person),
            _buildTextField("Email", _emailController, Icons.email),
            _buildTextField("Gender", _genderController, Icons.male),
            _buildTextField(
              "Date of Birth",
              _dobController,
              Icons.calendar_today,
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Profile saved successfully!"),
                    backgroundColor: Colors.deepPurple,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 14,
                ),
              ),
              child: const Text(
                "Save Changes",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller,
    IconData icon,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.deepPurple),
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepPurpleAccent),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
