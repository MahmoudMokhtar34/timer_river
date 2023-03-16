import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});
  final ScrollController hrznScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: SafeArea(
          child: Container(
        color: Colors.black38,
        child: SafeArea(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Scrollbar(
                controller: hrznScroll,
                child: SingleChildScrollView(
                  controller: hrznScroll,
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth * .8,
                        child: const Text('hi'),
                      ),
                    ],
                  )),
                ),
              );
            },
          ),
        ),
      )),
    );
  }
}
