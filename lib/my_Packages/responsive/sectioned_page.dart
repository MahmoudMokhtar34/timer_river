import 'package:flutter/material.dart';

class SectionedPage extends StatelessWidget {
  const SectionedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double scrnHeight = constraints.maxHeight;
            double scrnWidth = constraints.maxWidth;

            return SingleChildScrollView(
              child: Container(
                color: Colors.black26,
                constraints: BoxConstraints(
                  minHeight: scrnHeight,
                  minWidth: scrnWidth,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: scrnHeight * .5,
                          width: scrnWidth * .5,
                          color: Colors.amber[200],
                          constraints: const BoxConstraints(
                            maxHeight: 400,
                            maxWidth: 400,
                            minHeight: 100,
                            minWidth: 100,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: scrnHeight * .5,
                          width: scrnWidth * .5,
                          color: Colors.amber[200],
                          constraints: const BoxConstraints(
                            maxHeight: 400,
                            maxWidth: 400,
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
                          height: scrnHeight * .5,
                          width: scrnWidth * .5,
                          color: Colors.amber[200],
                          constraints: const BoxConstraints(
                            maxHeight: 400,
                            maxWidth: 400,
                            minHeight: 100,
                            minWidth: 100,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: scrnHeight * .5,
                          width: scrnWidth * .5,
                          color: Colors.amber[200],
                          constraints: const BoxConstraints(
                            maxHeight: 400,
                            maxWidth: 400,
                            minHeight: 100,
                            minWidth: 100,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
