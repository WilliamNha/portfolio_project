import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenSize.height / 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Get in touch",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width > 400 ? 37 : 30),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Let's build something together :)",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: screenSize.width > 400 ? 14 : 10),
            ),
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: screenSize.width > 800
                        ? 30
                        : screenSize.width > 500
                            ? 25
                            : 22,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Phnom Penh, Cambodia",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: screenSize.width > 800
                            ? 12
                            : screenSize.width > 500
                                ? 10
                                : screenSize.width > 400
                                    ? 9
                                    : 8),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: screenSize.width > 800
                        ? 30
                        : screenSize.width > 500
                            ? 25
                            : 22,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "(+855) 77 560481",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: screenSize.width > 800
                            ? 12
                            : screenSize.width > 500
                                ? 10
                                : screenSize.width > 400
                                    ? 9
                                    : 8),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: screenSize.width > 800
                        ? 30
                        : screenSize.width > 500
                            ? 25
                            : 22,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "panhaheng76@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: screenSize.width > 800
                            ? 12
                            : screenSize.width > 500
                                ? 10
                                : screenSize.width > 400
                                    ? 9
                                    : 8),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          Text(
            "@2022 Built by Panha Heng",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                height: 1.5,
                fontSize: screenSize.width > 400 ? 12 : 10),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Built using Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    fontSize: screenSize.width > 400 ? 12 : 10),
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                'assets/svg/flutter.svg',
                width: screenSize.width > 400 ? 15 : 12,
                height: screenSize.width > 400 ? 15 : 12,
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height / 30,
          ),
        ],
      ),
    );
  }
}
