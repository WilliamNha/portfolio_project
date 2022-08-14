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
              "Let's work together.",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width > 500 ? 45 : 30),
            ),
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(
                alignment: Alignment.centerLeft,
                icon: FontAwesomeIcons.linkedin,
                color: Colors.white,
                iconSize: 20,
                onPressed: () {},
              ),
              const SizedBox(
                width: 12,
              ),
              SocialButton(
                alignment: Alignment.centerLeft,
                icon: FontAwesomeIcons.facebook,
                color: Colors.white,
                iconSize: 20,
                onPressed: () {},
              ),
              const SizedBox(
                width: 12,
              ),
              SocialButton(
                alignment: Alignment.centerLeft,
                icon: FontAwesomeIcons.instagram,
                color: Colors.white,
                iconSize: 20,
                onPressed: () {},
              ),
              const SizedBox(
                width: 12,
              ),
              SocialButton(
                alignment: Alignment.centerLeft,
                icon: FontAwesomeIcons.telegram,
                color: Colors.white,
                iconSize: 20,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 5,
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
              SizedBox(
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