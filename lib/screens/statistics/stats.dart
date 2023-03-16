import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  StatsPage({super.key});

  final ScrollController hrznScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Scrollbar(
              controller: hrznScroll,
              child: SingleChildScrollView(
                controller: hrznScroll,
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.black26,
                    constraints: BoxConstraints(
                      minWidth: constraints.maxWidth,
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: constraints.maxWidth * .5,
                              width: constraints.maxWidth * .5,
                              color: Colors.amber[200],
                              constraints: const BoxConstraints(
                                maxHeight: 200,
                                maxWidth: 200,
                                minHeight: 100,
                                minWidth: 100,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: constraints.maxWidth * .5,
                              width: constraints.maxWidth * .5,
                              color: Colors.amber[200],
                              constraints: const BoxConstraints(
                                maxHeight: 200,
                                maxWidth: 200,
                                minHeight: 100,
                                minWidth: 100,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: constraints.maxWidth * .5,
                              width: constraints.maxWidth * .5,
                              color: Colors.amber[200],
                              constraints: const BoxConstraints(
                                maxHeight: 200,
                                maxWidth: 200,
                                minHeight: 100,
                                minWidth: 100,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: constraints.maxWidth * .5,
                              width: constraints.maxWidth * .5,
                              color: Colors.amber[200],
                              constraints: const BoxConstraints(
                                maxHeight: 200,
                                maxWidth: 200,
                                minHeight: 100,
                                minWidth: 100,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
