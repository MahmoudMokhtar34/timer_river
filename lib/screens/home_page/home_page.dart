import 'package:flutter/material.dart';
import 'package:timer_river/screens/home_page/widgets/my_clock.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final ScrollController hrznScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Scrollbar(
              controller: hrznScroll,
              child: SingleChildScrollView(
                controller: hrznScroll,
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: const Color.fromARGB(255, 239, 239, 239),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: constraints.maxHeight * .3,
                          constraints: BoxConstraints(
                            minHeight: max(constraints.maxHeight * .3, 200),
                            minWidth: max(constraints.maxHeight * .3, 200),
                          ),
                          child: const Center(
                            child: MyClock(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: constraints.maxHeight * .1,
                          child: const Controls(),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: (constraints.maxHeight -
                              max(constraints.maxHeight * .3, 200) -
                              (constraints.maxHeight * .1) -
                              20 -
                              20 -
                              20),
                          width: constraints.maxWidth * .9,
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                            minWidth: 200,
                            minHeight: 200,
                          ),
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[200],
                          ),
                          child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return const Card(
                                //color: Colors.blue[50],
                                child: ListTile(
                                  title: Text('data'),
                                ),
                              );
                            },
                          ),
                        )
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

class Controls extends StatelessWidget {
  const Controls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Start'),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Stop'),
        ),
      ],
    );
  }
}
