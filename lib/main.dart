import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimePad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'TimePad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dsBackground,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              boxStorie(
                'Headings',
                [
                  Text(
                    'This is zetta',
                    style: dsHeadingZetta
                  ),
                  Text(
                    'This is exa',
                    style: dsHeadingExa
                  ),
                  Text(
                    'This is peta',
                    style: dsHeadingPeta
                  ),
                  Text(
                    'This is tera',
                    style: dsHeadingTera
                  ),
                  Text(
                    'This is giga',
                    style: dsHeadingGiga
                  ),
                  Text(
                    'This is mega',
                    style: dsHeadingMega
                  ),
                ]
              ),
              boxStorie(
                'Subheading',
                [
                  Text(
                    'This is giga',
                    style: dsSubHeadingGiga
                  ),
                  Text(
                    'This is mega',
                    style: dsSubHeadingMega
                  ),
                ]
              ),
              boxStorie(
                'Text',
                [
                  Text(
                    'This is giga',
                    style: dsTextGiga,
                  ),
                  Text(
                    'This is mega',
                    style: dsTextMega,
                  ),
                  Text(
                    'This is kilo',
                    style: dsTextKilo,
                  ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget boxStorie(String title, List<Widget> children) {
    return Container(
      margin: EdgeInsets.only(
        bottom: dsMedium
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: dsXSmall,
              horizontal: dsMedium
            ),
            child: Text(
              title,
              style: dsHeadingTera,
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
