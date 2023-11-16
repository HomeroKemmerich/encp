import 'package:counter_app/pages/AboutAppPage/about_app_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int MAX_PEOPLE = 20;

  int counter = 0;

  bool get isEmpty => counter == 0;

  bool get isFull => counter == MAX_PEOPLE;

  int get availableSpots => MAX_PEOPLE - counter;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AboutApPage()));
              },
              icon: Icon(Icons.info))
        ],
      ),
      backgroundColor: const Color(0xFFF7ECEA),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_app.jpg'),
                fit: BoxFit.cover,
                opacity: 0.3)),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Controle de pessoas',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 4,
                  wordSpacing: 6,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text('$counter',
                style: const TextStyle(
                  color: Colors.brown,
                  fontSize: 100,
                  fontWeight: FontWeight.w900,
                )),
            const Text(
              'pessoas na festa',
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: isFull ? Colors.red : Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  isFull ? 'Lotado' : '$availableSpots vagas disponíveis',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: isEmpty ? null : decrement,
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(140, 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.red),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.remove_circle),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Saiu',
                          style: TextStyle(),
                        )
                      ],
                    )),
                ElevatedButton(
                    onPressed: isFull ? null : increment,
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(140, 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.green),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Entrou',
                          style: TextStyle(),
                        )
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
