import 'package:flutter/material.dart';
import 'route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _singUp(context),
            ],
          ),
        ),
      )
    );
  }

  _header(contex) {
    return Column(
      children: const [
        Text("Selamat Datang", style: TextStyle(fontSize: 40,
        fontWeight: FontWeight.bold)),
        Text("Masukan akun anda untuk login"),
      ],
    );
  }
  _inputField(contex) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: 10,),
        TextField(
          obscureText: _isObscure,
          decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,),
              onPressed: (){
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MainRoute()));
        }, child: const Text("Login",
        style: TextStyle(fontSize: 20)),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        )
      ],
    );
  }
  _forgotPassword(context) {
    return TextButton(onPressed: (){}, child: const Text("Lupa Password"));
  }

  _singUp(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Belum punya akun? "),
        TextButton(onPressed: (){}, child: const Text("Sing Up"))
      ],
    );
  }
}

