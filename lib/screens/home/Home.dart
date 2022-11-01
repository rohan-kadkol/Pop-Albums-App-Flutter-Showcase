import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Taylor Swift'),
      //   backgroundColor: Colors.black,
      // ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/taylor_swift_midnights.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Midnights',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Taylor Swift',
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                          // style: Theme.of(context).textTheme.,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   height: 300,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(
            //         'assets/taylor_swift_midnights.webp',
            //       ),
            //       fit: BoxFit.cover,
            //       // colorFilter: ColorFilter.mode(
            //       //     Colors.black.withOpacity(1), BlendMode.darken),
            //     ),
            //   ),
            // )
            Container(
              height: 1000,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
