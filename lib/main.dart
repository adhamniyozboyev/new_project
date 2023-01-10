import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sum = 0;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  int? val;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('image/pizza.jpg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      // val = v!;
                      if(val==2)sum-=55;
                      if(val==3)sum-=65;
                      val=1;sum+=45;
                    });
                  }),
              Text('Small'),
              Radio(
                  value: 2,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      // val = v!;
                       if(val==1)sum-=45;
                      if(val==3)sum-=65;
                      val=2;sum+=55;
                    });
                  }),
              Text('Medium'),
              Radio(
                  value: 3,
                  groupValue: val,
                  onChanged: (v) {
                    setState(() {
                      // val = v!;
                       if(val==2)sum-=55;
                      if(val==1)sum-=45;
                      val=3;
                     sum+=65;
                    });
                  }),
              Text('Large')
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
          Text('Total:$sum  ming so`m')
        ],
      ),
    );
  }
}
