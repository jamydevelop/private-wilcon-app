import "package:flutter/material.dart";

import "homepage_card_container.widget.dart";

class HomepageBodyWidget extends StatefulWidget {
  const HomepageBodyWidget({super.key});

  @override
  State<HomepageBodyWidget> createState() => _HomepageBodyWidgetState();
}

class _HomepageBodyWidgetState extends State<HomepageBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: const Column(
          children: <Widget>[
            //SizedBox(height: 24),
            HomepageCardContainerWidget(),
          ],
        ),
      ),
    );
  }
}
