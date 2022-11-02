import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safepayments/utils/colors.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: 320,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primaryColor, primaryColor2],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:
                              Icon(Icons.arrow_back, color: primarytextColor)),
                      SizedBox(width: 100),
                      Text("QR Scan",
                          style: GoogleFonts.manrope(
                              color: primarytextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 64,
                    width: 327,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff9261E5).withOpacity(0.5),
                        primarytextColor.withOpacity(0.5)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Circles.png"),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Sheldon Cooper",
                                    style: GoogleFonts.manrope(
                                        color: textColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                Text("•• 1265",
                                    style: GoogleFonts.manrope(
                                        color: textColor2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ],
                            )
                          ],
                        ),
                        Image.asset("assets/Frame 67.png")
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Place the QR code inside the frame",
                    style: GoogleFonts.manrope(
                        color: primarytextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.22,
              left: size.width * 0.060,
              child: Container(
                height: 385,
                width: 327,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/Group 6.png")),
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.67,
              left: size.width * 0.27,
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
                    Image.asset(
                      "assets/scan-barcode.png",
                      color: Colors.white,
                    ),
                    Text(
                      "Generate QR",
                      style: GoogleFonts.manrope(
                        fontSize: 16.0,
                        color: primarytextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.77,
              left: size.width * 0.2,
              child: Container(
                  height: 88,
                  width: 96,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/flash.png"),
                      SizedBox(height: 5),
                      Text(
                        "Flash",
                        style: GoogleFonts.manrope(
                          fontSize: 14.0,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )),
            ),
            Positioned(
              top: size.height * 0.77,
              right: size.width * 0.17,
              child: Container(
                  height: 88,
                  width: 96,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/document-upload.png"),
                      SizedBox(height: 5),
                      Text(
                        "Upload",
                        style: GoogleFonts.manrope(
                          fontSize: 14.0,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
