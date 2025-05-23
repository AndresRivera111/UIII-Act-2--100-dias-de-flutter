import 'package:flutter/material.dart';
import 'package:myapp/colors.dart';
import 'package:myapp/happy_toys_home_screen.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40),
          Image.network(
            'https://raw.githubusercontent.com/AndresRivera111/imagenes-para-APP-flutter-6J/refs/heads/main/Juguetes/Background.png',
            height: size.height * 0.68,
            fit: BoxFit.fill,
            width: size.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.75,
                  child: const Text(
                    'Happy Toys',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Consigue el juguete que tus hijos desean',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // Suggested code may be subject to a license. Learn more: ~LicenseLog:1473085745.
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HappyToysHomeScreen(),
                        ),
                      );
                    },
                    child: Material(
                      elevation: 15,
                      shadowColor: primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(200),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: primaryColor,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
