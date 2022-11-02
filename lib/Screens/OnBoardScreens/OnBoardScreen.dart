import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safepayments/utils/colors.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 50.0),
              child: Image.asset("assets/wallet.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.6),
              child: Image.asset("assets/secured.png"),
            ),
            Text("Safe Payments,",
                style: GoogleFonts.manrope(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: textColor)),
            Text("happy life",
                style: GoogleFonts.manrope(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: textColor)),
            SizedBox(height: 20),
            Text(
              "Make safe payments and keep your money wise with our help.",
              style: GoogleFonts.manrope(fontSize: 16.0, color: textLightColor),
            ),
            SizedBox(height: 30),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Container(
                  height: 48,
                  width: 168,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        primaryColor,
                        primaryColor2,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                    borderRadius: BorderRadius.circular(51),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Get Started",
                        style: GoogleFonts.manrope(
                          fontSize: 16.0,
                          color: primarytextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: primarytextColor,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
