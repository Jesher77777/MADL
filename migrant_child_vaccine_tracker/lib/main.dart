import 'package:flutter/material.dart';

void main() {
  runApp(VaccineApp());
}

class VaccineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Migrant Child Vaccine Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}

// ------------------ HOME PAGE ------------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Center(
                child: Column(
                  children: [
                    Icon(Icons.health_and_safety, size: 80, color: Colors.teal),
                    SizedBox(height: 10),
                    Text(
                      "Migrant Child Vaccine Tracker",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[800],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // About Section
              Text(
                "📌 About the App",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.teal[700],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "This application is designed to track vaccination records "
                "of migrant children, ensuring they receive timely immunization "
                "regardless of location. It provides child registration, "
                "vaccination schedules, multilingual support, and healthcare worker tools.",
                style: TextStyle(fontSize: 16, height: 1.4),
              ),

              SizedBox(height: 20),

              // Features Section
              Text(
                "⚙️ Key Features",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.teal[700],
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FeatureItem("Child Registration with QR ID"),
                  FeatureItem("Vaccination history & schedule"),
                  FeatureItem("Smart reminders for parents"),
                  FeatureItem("Multilingual & offline support"),
                  FeatureItem("Healthcare worker portal"),
                ],
              ),

              SizedBox(height: 20),

              // SDGs Section
              Text(
                "🌍 SDG Goals Supported",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.teal[700],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "✔ SDG 3: Good Health & Well-being\n"
                "✔ SDG 10: Reduced Inequalities\n"
                "✔ SDG 16: Peace & Strong Institutions\n"
                "✔ SDG 9: Innovation & Infrastructure\n"
                "✔ SDG 17: Partnerships for Goals",
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              SizedBox(height: 40),

              // Login Button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom widget for features
class FeatureItem extends StatelessWidget {
  final String text;
  const FeatureItem(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.teal, size: 22),
          SizedBox(width: 8),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

// ------------------ LOGIN PAGE ------------------
class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // TODO: Add login logic
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login clicked")),
                );
              },
              child: Text("Login", style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
