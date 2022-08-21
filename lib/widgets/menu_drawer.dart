import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    required this.onContactTap,
    required this.onEducationTap,
    required this.onHomeTap,
    required this.onSkillTap,
    Key? key,
  }) : super(key: key);
  final VoidCallback onHomeTap;
  final VoidCallback onEducationTap;
  final VoidCallback onSkillTap;
  final VoidCallback onContactTap;
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
                  onHomeTap();
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
                  onEducationTap();
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
                  onSkillTap();
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
                  onContactTap();
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
