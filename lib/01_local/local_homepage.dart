import 'package:flutter/material.dart';

class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          children: [
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                child: Text(
                  '${_counter1 + _counter2 + _counter3 + _counter4}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Titel',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                child: Text(
                  '${_counter1 + _counter2 + _counter3 + _counter4}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        ),
                        onTap: () {
                          setState(() {
                            _counter4--;
                          });
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                        ),
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text(
                            '$_counter1',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        ),
                        onTap: () {
                          setState(() {
                            _counter4++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        ),
                        onTap: () {
                          setState(() {
                            _counter3--;
                          });
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                        ),
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text(
                            '$_counter2',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        ),
                        onTap: () {
                          setState(() {
                            _counter3++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        ),
                        onTap: () {
                          setState(() {
                            _counter2--;
                          });
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                        ),
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text(
                            '$_counter3',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        ),
                        onTap: () {
                          setState(() {
                            _counter2++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        ),
                        onTap: () {
                          setState(() {
                            _counter1--;
                          });
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                        ),
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text(
                            '$_counter4',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        ),
                        onTap: () {
                          setState(() {
                            _counter1++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
