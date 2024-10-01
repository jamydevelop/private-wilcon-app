import "package:flutter/material.dart";

import "../../../widget/sidebar_widget.dart";
import "widget/homepage_appbar_container.widget.dart";
import "widget/homepage_body.widget.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ButtonClass buttonClass = ButtonClass();
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.white,
        endDrawer: CustomSidebar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.zero,
            child: Column(
              children: <Widget>[
                HomepageAppbarContainerWidget(),
                HomepageBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
