import 'package:example_rovider/src/providers/counter_provider.dart';
import 'package:example_rovider/src/screens/double_screen.dart';
import 'package:example_rovider/src/widgets/floating_actions_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    final counterInfo = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter provider'),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.trending_up),
            onPressed: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => DoubleScreen(),
                ),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            /*Text(
              '${counterInfo.get()}',
              style: Theme.of(context).textTheme.headline4,
            ),*/
            Text(
              '${context.watch<CounterProvider>().get()}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatinActionsWidget(
        counterInfo.decrement,
        counterInfo.increment,
      ),
    );
  }
}
