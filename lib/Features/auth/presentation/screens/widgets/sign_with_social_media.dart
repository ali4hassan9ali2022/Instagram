import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignWithSocialMedia extends StatelessWidget {
  const SignWithSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blueAccent),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.apple, color: Colors.blueGrey),
        ),
      ],
    );
  }
}
