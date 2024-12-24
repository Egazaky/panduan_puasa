import 'package:flutter/material.dart';
import 'package:panduan_puasa/page_home/home_page.dart'; // Import halaman HomePage

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController cUser = TextEditingController();
  final TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  // Header
  Widget _header() {
    return Column(
      children: const [
        Text(
          "Assalamualaikum",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Masukkan Username dan Password untuk login"),
      ],
    );
  }

  // Input Fields
  Widget _inputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: cUser,
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Username masih kosong';
            }
            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: cPass,
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.lock),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password masih kosong';
            }
            return null;
          },
          obscureText: true,
        ),
        const SizedBox(height: 10),
       ElevatedButton(
          onPressed: () {
            // Kirim username ke HomePage
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(username: cUser.text),
              ),
            );
          },
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          
        ),
      ],
    );
  }

  // Forgot Password Section
  Widget _forgotPassword(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Lupa Password?"),
    );
  }

  // Sign Up Section
  Widget _signup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Belum punya akun? "),
        TextButton(
          onPressed: () {},
          child: const Text("Daftar Sekarang"),
        ),
      ],
    );
  }
}
