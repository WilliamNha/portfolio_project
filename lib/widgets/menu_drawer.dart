import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    required this.scrollController,
    Key? key,
  }) : super(key: key);
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  scrollController.animateTo(
                    0,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black12,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  scrollController.animateTo(
                    400,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                child: const Text(
                  'About Me',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black12,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  scrollController.animateTo(
                    780,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                child: const Text(
                  'Education',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black12,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  scrollController.animateTo(
                    1200,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                child: const Text(
                  'Skills',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black12,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  scrollController.animateTo(
                    scrollController.position.maxScrollExtent,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                child: const Text(
                  'Contact',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
