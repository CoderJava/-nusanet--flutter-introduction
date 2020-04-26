import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(48.0),
                      bottomRight: Radius.circular(48.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/9051/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 154.0),
                    Center(
                      child: Container(
                        width: 92.0,
                        height: 92.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://api.bengkelrobot.net:8001/assets/images/yudi.jpeg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Column(
              children: <Widget>[
                Text(
                  'Yudi Setiawan',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Software Engineer - Android',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  WidgetPersonalInfo('Email', 'kolonel.yudisetiawan@gmail.com'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo('Gender', 'Male'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo('Place Of Birth', 'Medan'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo('Birth Date', '26 Dec 1994'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo('Mobile Phone', '+6285361118156'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo('Marital Status', 'Single'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo('Religion', 'Islam'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo(
                      'Citizen ID Address', 'Jl. Klambir 5 no.65 Medan'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo('Postal Code', '20125'),
                  Divider(thickness: 1.0),
                  WidgetPersonalInfo(
                      'Residential Address', 'Jl. Klambir 5 no.65 Medan'),
                  Divider(thickness: 1.0),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        'EDIT PROFILE',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        debugPrint('Button edit profile ditap');
                      },
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetPersonalInfo extends StatelessWidget {
  final String label;
  final String value;

  WidgetPersonalInfo(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(color: Colors.grey),
        ),
        Text(value)
      ],
    );
  }
}
