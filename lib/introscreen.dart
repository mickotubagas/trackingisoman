import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'login.dart';
import 'package:lottie/lottie.dart';

class IntorductionScreen extends StatelessWidget {
  const IntorductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Pentingnya Vaksin",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Apa anda terpapar covid!  itulah mengapa"
                  "\nvaksinasi   penting   untuk   semua  orang"
                  "\ndengan vaksinasi memungkinkan antibodi"
                  "\ntubuh  untuk   mempelajari  virus,  dengan"
                  "\nbegitu  tubuh  akan  mengenali  virus  dan"
                  "\nmengurani  resiko  terpapar  virus  lagi",
                  style: TextStyle(
                    height: 1.5, letterSpacing: 1.0,
                  ),
              ),
              ],
          ),
          image: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Lottie.asset('assets/lotties/vaccine.json', fit: BoxFit.contain),
            ),
          ),
        ),
        PageViewModel(
          title: "Isolasi Mandiri",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Stay at home adalah selogan yang sering"
                  "\ndiperguna di masa pandemi sekarang ini,"
                  "\nuntuk  orang  yang  telah  terkena  gejala"
                  "\novid19  ini  isolasi  mandiri  adalah  cara"
                  "\nterbaik untuk  meminimalisir penyebaran"
                  "\npenyakit nya , jadi  untuk  teman - teman"
                  "\nyang  sekiranya  memiliki  gejala  terkait"
                  "\ncovid19   diharapkan   untuk  melakukan"
                  "\nisolasi mandiri , guna kebaikan bersama",
                style: TextStyle(
                  height: 1.5, letterSpacing: 1.0,
                ),
              ),
            ],
          ),
          image: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Lottie.asset("assets/lotties/stayhome.json", fit: BoxFit.contain),
              ),
          ),
        ),
        PageViewModel(
          title: "Lokasi",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("App ini memberikan kemampuan tracking"
                  "\nuntuk  setiap  orang  yang  sedang dalam"
                  "\nmasa  isolasi mandiri untuk setiap lokasi"
                  "\ntertentu ,  dalam  hal  ini   mempermudah"
                  "\nmasyarakat   sekitar  untuk  menghindari"
                  "\norang yang sedang dalam gejala covid19",
                style: TextStyle(
                  height: 1.5, letterSpacing: 1.0,
                ),
              ),
            ],
          ),
          image: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Lottie.asset("assets/lotties/location.json", fit: BoxFit.contain),
            ),
          ),
        ),
        PageViewModel(
          title: "Autentikasi Data",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Sebelum  anda  memulai  & menggunakan"
                  "\napp  lebih  lanjut,  lengkapilah  pendataan"
                  "\natas   dasar   autentikasi   data  diri  anda"
                  "\nguna    kerperluan    pembeda    pengguna"
                  "\nuser  dan  penikmat fitur lanjutan aplikasi",
                style: TextStyle(
                  height: 1.5, letterSpacing: 1.0,
                ),
              ),
            ],
          ),
          image: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Lottie.asset("assets/lotties/emaillogin.json", fit: BoxFit.contain),
            ),
          ),
        ),
      ],
      showNextButton: true,
      next: const Text("Next >>"),
      done: const Text("Login", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      },
    );
  }
}