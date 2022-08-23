import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_practice/widgets/social_button.dart';

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
                  fontSize: screenSize.width > 400 ? 40 : 35),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Let's build something together :)",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SocialButton(
          //       alignment: Alignment.centerLeft,
          //       icon: FontAwesomeIcons.linkedin,
          //       color: Colors.white,
          //       iconSize: 20,
          //       onPressed: () {},
          //     ),
          //     const SizedBox(
          //       width: 12,
          //     ),
          //     SocialButton(
          //       alignment: Alignment.centerLeft,
          //       icon: FontAwesomeIcons.facebook,
          //       color: Colors.white,
          //       iconSize: 20,
          //       onPressed: () {},
          //     ),
          //     const SizedBox(
          //       width: 12,
          //     ),
          //     SocialButton(
          //       alignment: Alignment.centerLeft,
          //       icon: FontAwesomeIcons.instagram,
          //       color: Colors.white,
          //       iconSize: 20,
          //       onPressed: () {},
          //     ),
          //     const SizedBox(
          //       width: 12,
          //     ),
          //     SocialButton(
          //       alignment: Alignment.centerLeft,
          //       icon: FontAwesomeIcons.telegram,
          //       color: Colors.white,
          //       iconSize: 20,
          //       onPressed: () {},
          //     ),
          //   ],
          // ),
          // const SizedBox(
          //   height: 5,
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Phnom Penh, Cambodia",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "(+855) 77 560481",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "panhaheng76@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          const Text(
            "@2022 Built by Panha Heng",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                height: 1.5,
                fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Built using Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    fontSize: 12),
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                'assets/svg/flutter.svg',
                width: 15,
                height: 15,
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
