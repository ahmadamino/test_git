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
  var country;
  bool syr = false;
  bool tal = false;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                                padding: EdgeInsets.all(10),
                                child: Text('feed')),
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
                                padding: EdgeInsets.all(10),
                                child: Text('feed')),
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
                                padding: EdgeInsets.all(10),
                                child: Text('feed')),
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
            RadioListTile(
              value: 'cal',
              groupValue: country,
              onChanged: (cal) {
                setState(() {
                  country = cal;
                });
              },
              title: Text('olabi'),
              subtitle: Text('aleppo'),
              activeColor: Colors.green,
              shape: Border.all(color: Colors.black),
            ),
            RadioListTile(
              value: 'gal',
              groupValue: country,
              onChanged: (cal) {
                setState(() {
                  country = cal;
                });
              },
              title: Text('abddul qader alnagar'),
              subtitle: Text('my techer'),
              secondary: Icon(Icons.handshake),
              activeColor: Colors.green,
              shape: Border.all(color: Colors.black),
            ),
            RadioListTile(
              value: 'sal',
              groupValue: country,
              onChanged: (cal) {
                setState(() {
                  country = cal;
                });
              },
              title: Text('amino'),
              subtitle: Text('student'),
              activeColor: Colors.green,
              shape: Border.all(color: Colors.black),
            ),
            SwitchListTile(
              value: tal,
              onChanged: (lap) {
                setState(() {
                  tal = lap;
                });
              },
              title: Text('arabic'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Container(
              color: Colors.grey,
              child: ListTile(
                title: Text('s23 ultra'),
                subtitle: Text('Samsung'),
                leading: Icon(Icons.flag),
                trailing: Text('price 200\$'),
              ),
            ),
            // snack bar
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Hay How Are You My Teacher MR. Abdul qader'),
                    duration: Duration(seconds: 7),
                    action: SnackBarAction(
                        label: 'undo',
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('رسالة الترحيب'),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: (){
                  showDialog(context: context, builder: (context)=>AlertDialog(
                    title: Text('title'),
                    content:Text ('content contenzf jkschhj'),
                  ));

                },
                child: Text('اضغط هنا'),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
