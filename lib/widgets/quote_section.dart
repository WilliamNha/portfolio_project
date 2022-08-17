import 'package:flutter/material.dart';

class QuoteSection extends StatelessWidget {
  const QuoteSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenSize.height / 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Text(
                "“The only good is knowledge and the only evil is ignorance.”",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    fontSize: screenSize.width > 600 ? 28 : 25),
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height / 60,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenSize.width / 2.3),
            child: Text(
              "~Socrates",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                  fontSize: screenSize.width > 600 ? 28 : 20),
            ),
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 0,
              right: 0,
            ),
            child: Image.asset(
              'assets/images/socrats.png',
              height: screenSize.width > 600
                  ? (screenSize.height / 3)
                  : (screenSize.height / 4),
              fit: BoxFit.fitHeight,
            ),
          ),
          // SizedBox(
          //   height: screenSize.height / 20,
          // ),
        ],
      ),
    );
  }
}
