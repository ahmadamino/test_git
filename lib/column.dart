import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  var selectedCountry;
  bool usa = false;
  bool egy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 200,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent[700],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent[700],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent[700],
                        ),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    ),
                    Expanded(child: Container()),
                    Text(
                      '17 Reviws',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 3,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.restaurant,
                            color: Colors.green,
                            size: 40,
                          ),
                          Container(
                              padding: EdgeInsets.all(10), child: Text('feed')),
                          Text('2  - 4'),
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.category,
                            color: Colors.green,
                            size: 40,
                          ),
                          Container(
                              padding: EdgeInsets.all(10), child: Text('feed')),
                          Text('2  - 4'),
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.emoji_food_beverage,
                            color: Colors.green,
                            size: 40,
                          ),
                          Container(
                              padding: EdgeInsets.all(10), child: Text('feed')),
                          Text('2  - 4'),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: DropdownButton(
              hint: Text('اختر البلد من فضلك'),
              items: ['USA', 'UAE', 'SYR', 'EG']
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text('$e'),
                      value: e,
                    ),
                  )
                  .toList(),
              value: selectedCountry,
              onChanged: (val) {
                setState(() {
                  selectedCountry = val;
                });
              },
            ),
          ),
          CheckboxListTile(
              shape: Border.all(color: Colors.black),
              title: Text('USA'),
              subtitle: Text('English'),
              secondary: Icon(Icons.flag),
              checkColor: Colors.black,
              activeColor: Colors.green,
              value: usa,
              onChanged: (bal) {
                setState(() {
                  usa = bal!;
                });
              }),
          CheckboxListTile(
              shape: Border.all(color: Colors.black),
              title: Text('Egy'),
              subtitle: Text('Arabic'),
              secondary: Icon(Icons.flag),
              checkColor: Colors.black,
              activeColor: Colors.green,
              value: egy,
              onChanged: (bal) {
                setState(() {
                  egy = bal!;
                });
              }),
        ],
      ),
    );
  }
}