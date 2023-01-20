import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget txt = Text('');
  Widget go = Text('');
  Widget con = Container();
  int sum = 0;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  int? val;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'Pizza menu',
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 400,
            width: 601,
            color: Colors.white,
            child: con,
          ),
          txt,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: RadioListTile(
                        title: Text('Small'),
                        value: 1,
                        groupValue: val,
                        onChanged: (v) {
                          setState(() {
                            // val = v!;
                            if (val == 2) sum -= 55;
                            if (val == 3) sum -= 65;
                            val = 1;
                            sum += 45;
                          });
                          setState(() {
                            con = Column(
                              children: [
                                Image.asset('image/pizza.jpg'),
                                Text(
                                  'Small pizza',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            );
                          });
                        }),
                  ),
                  Expanded(
                    child: RadioListTile(
                        title: Text(
                          'Medium',
                          style: TextStyle(fontSize: 11),
                        ),
                        value: 2,
                        groupValue: val,
                        onChanged: (v) {
                          setState(() {
                            // val = v!;
                            if (val == 1) sum -= 45;
                            if (val == 3) sum -= 65;
                            val = 2;
                            sum += 55;
                          });
                          setState(() {
                            con = Column(
                              children: [
                                Image.asset('image/pizza2.jpg'),
                                Text('Medium pizza',
                                    style: TextStyle(fontSize: 20)),
                              ],
                            );
                          });
                        }),
                  ),
                  Expanded(
                    child: RadioListTile(
                        title: Text(
                          'Largest',
                          style: TextStyle(fontSize: 11),
                        ),
                        value: 3,
                        groupValue: val,
                        onChanged: (v) {
                          setState(() {
                            // val = v!;
                            if (val == 2) sum -= 55;
                            if (val == 1) sum -= 45;
                            val = 3;
                            sum += 65;
                          });
                          setState(() {
                            con = Column(
                              children: [
                                Image.asset('image/pizza3.jpg'),
                                Text('Largest pizza',
                                    style: TextStyle(fontSize: 20)),
                              ],
                            );
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Checkbox(
                  value: val1,
                  onChanged: (hero1) {
                    setState(() {
                      val1 = hero1!;
                      if (val1) {
                        sum += 30;
                      } else
                        sum -= 30;
                    });
                  }),
              Text('Extra cheese'),
              Checkbox(
                  value: val2,
                  onChanged: (hero2) {
                    setState(() {
                      val2 = hero2!;
                      if (val2) {
                        sum += 15;
                      } else
                        sum -= 15;
                    });
                  }),
              Text('Onions'),
              Checkbox(
                  value: val3,
                  onChanged: (hero3) {
                    setState(() {
                      val3 = hero3!;
                      if (val3) {
                        sum += 20;
                      } else
                        sum -= 20;
                    });
                  }),
              Text('Chicken'),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  txt = Text(
                    'Please wait just a moment ...',
                    style: TextStyle(fontSize: 25, color: Colors.pink),
                  );
                  go = Text(
                    'Your pay:$sum ming so\'m',
                    style: TextStyle(fontSize: 35, color: Colors.red),
                  );
                });
              },
              child: Text('Finish')),
          go
        ],
      ),
    );
  }
}
