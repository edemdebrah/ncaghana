import 'package:flutter/material.dart';

import '../../widgets/ispListContainer.dart';
import '../../widgets/neuboxCustom.dart';

class MaritimeService extends StatefulWidget {
  const MaritimeService({Key? key}) : super(key: key);

  @override
  _MaritimeServiceState createState() => _MaritimeServiceState();
}

class _MaritimeServiceState extends State<MaritimeService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: const Text(
          'Martime Services',
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(4, 4),
                      blurRadius: 20,
                      spreadRadius: 1,
                      color: Colors.grey.shade900,
                    ),
                    BoxShadow(
                      offset: const Offset(-4, -4),
                      blurRadius: 15,
                      spreadRadius: 0,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                  child: Image.asset(
                    'assets/shipBanner5.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NeuBoxCustom(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        child: Image.asset(
                          'assets/correct5.png',
                          color: Colors.blue,
                        ),
                      ),
                      const Text(
                        "56 AUTHORISED OPERATORS",
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const IspListContainer(),
            const IspListContainer(),
            const IspListContainer(),
            const IspListContainer(),
            const IspListContainer(),
          ],
        ),
      ),
    );
  }
}
