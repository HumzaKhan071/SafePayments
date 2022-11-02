import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safepayments/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/avatar.png"),
                          SizedBox(width: 10),
                          Text.rich(
                            TextSpan(
                              text: "Hello, ",
                              style: GoogleFonts.manrope(
                                color: primarytextColor,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: "Sheldon",
                                  style: GoogleFonts.manrope(
                                    color: primarytextColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.horizontal_split, color: primarytextColor),
                    ],
                  ),
                  SizedBox(height: 20),
                  Image.asset("assets/Card 7.png")
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.35,
              left: size.width * 0.05,
              child: Container(
                height: 65,
                width: 157,
                decoration: BoxDecoration(
                  color: primarytextColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    "Transfer",
                    style: GoogleFonts.manrope(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.35,
              right: size.width * 0.05,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/qr");
                
                },
                child: Container(
                  height: 65,
                  width: 157,
                  decoration: BoxDecoration(
                    color: primarytextColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/scan-barcode.png"),
                        Text(
                          "QR Scan",
                          style: GoogleFonts.manrope(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.49,
              left: size.width * 0.05,
              child: Text(
                "History",
                style: GoogleFonts.manrope(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.50,
              right: size.width * 0.05,
              child: Icon(Icons.arrow_forward_rounded, color: textColor),
            ),
            Positioned(
                top: size.height * 0.55,
                left: size.width * 0.05,
                child: Container(
                  height: 80,
                  width: 327,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: primarytextColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Netflix.png"),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Netflix",
                                  style: GoogleFonts.manrope(
                                    color: textColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Nov 10, 2022",
                                  style: GoogleFonts.manrope(
                                    color: textColor2,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "-\$24.00",
                          style: GoogleFonts.manrope(
                            color: Color(0xffCB60A0),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                )),
            Positioned(
                top: size.height * 0.67,
                left: size.width * 0.05,
                child: Container(
                  height: 80,
                  width: 327,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: primarytextColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Frame 62.png"),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Amy Fowler",
                                  style: GoogleFonts.manrope(
                                    color: textColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Nov 10, 2022",
                                  style: GoogleFonts.manrope(
                                    color: textColor2,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "+\$40.00",
                          style: GoogleFonts.manrope(
                            color: Color(0xff188975),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                )),
            Positioned(
                top: size.height * 0.79,
                left: size.width * 0.05,
                child: Container(
                  height: 80,
                  width: 327,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: primarytextColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/Rectangle 328.png"),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Apple Music",
                                  style: GoogleFonts.manrope(
                                    color: textColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Nov 10, 2022",
                                  style: GoogleFonts.manrope(
                                    color: textColor2,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "-\$10.00",
                          style: GoogleFonts.manrope(
                            color: Color(0xffCB60A0),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                )),
          ],
        ),
      ),
    );
  }
}
