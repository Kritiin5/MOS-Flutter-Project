import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "MOS",
    home: MyStepperDemo(),
  ));
}

class MyStepperDemo extends StatelessWidget {
  const MyStepperDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Modern Operating Systems Directory",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 67, 125, 173),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pink,
                  color: const Color.fromARGB(255, 161, 197, 226),
                  margin: const EdgeInsets.all(32),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/poposimage.jpg",
                          fit: BoxFit.cover,
                          height:
                              2 * (MediaQuery.of(context).size.width - 20) / 4,
                          width: MediaQuery.of(context).size.width - 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Unit 1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Unit1Subs()));
                },
              ),

              /*    ---------------2nd CARD WIDGET-------------------------- */

              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pink,
                  color: const Color.fromARGB(255, 161, 197, 226),
                  margin: const EdgeInsets.all(32),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/unit2.png",
                          fit: BoxFit.cover,
                          height:
                              2 * (MediaQuery.of(context).size.width - 20) / 4,
                          width: MediaQuery.of(context).size.width - 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Unit 2",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Unit2Subs()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Unit1Subs extends StatefulWidget {
  const Unit1Subs({super.key});

  @override
  State<Unit1Subs> createState() => _Unit1SubsState();
}

class _Unit1SubsState extends State<Unit1Subs> {
  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Can't launch url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sub Units",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 67, 125, 173),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pink,
                  color: const Color.fromARGB(255, 161, 197, 226),
                  margin: const EdgeInsets.all(32),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/1.1.png",
                          fit: BoxFit.cover,
                          height:
                              2 * (MediaQuery.of(context).size.width - 64) / 4,
                          width: MediaQuery.of(context).size.width - 64,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "SubUnit 1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  _launchUrl(
                      "https://s1.santechz.com/mos/unit-1/1%20-%20Introduction%20to%20Operating%20Systems/#0");
                },
              ),
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pink,
                  color: const Color.fromARGB(255, 161, 197, 226),
                  margin: const EdgeInsets.all(32),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/1.2.png",
                          fit: BoxFit.cover,
                          height:
                              2 * (MediaQuery.of(context).size.width - 64) / 4,
                          width: MediaQuery.of(context).size.width - 64,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "SubUnit 2",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  _launchUrl(
                      "https://s1.santechz.com/mos/unit-1/7%20-%20Linux%20Commands%20Part%202/#0");
                },
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}

class Unit2Subs extends StatefulWidget {
  const Unit2Subs({super.key});

  @override
  State<Unit2Subs> createState() => _Unit2SubsState();
}

class _Unit2SubsState extends State<Unit2Subs> {
  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Can't launch url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sub Units",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 67, 125, 173),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pink,
                  color: const Color.fromARGB(255, 161, 197, 226),
                  margin: const EdgeInsets.all(32),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/2.1.png",
                          fit: BoxFit.cover,
                          height:
                              2 * (MediaQuery.of(context).size.width - 64) / 4,
                          width: MediaQuery.of(context).size.width - 64,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "SubUnit 1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  _launchUrl(
                      "https://s1.santechz.com/mos/unit-2/1%20-%20Shell%20Scripting/#0");
                },
              ),
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pink,
                  color: const Color.fromARGB(255, 161, 197, 226),
                  margin: const EdgeInsets.all(32),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/2.2.png",
                          fit: BoxFit.cover,
                          height:
                              2 * (MediaQuery.of(context).size.width - 64) / 4,
                          width: MediaQuery.of(context).size.width - 64,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "SubUnit 2",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  _launchUrl(
                      "https://s1.santechz.com/mos/unit-2/7%20-%20Cron%20Jobs/#0");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
