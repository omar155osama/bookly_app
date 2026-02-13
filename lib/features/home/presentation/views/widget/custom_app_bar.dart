import 'package:clean_boookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image(height: 18, image: AssetImage("assets/image/Logo.png")),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchScreen);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
