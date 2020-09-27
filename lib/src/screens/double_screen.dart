import 'package:example_rovider/src/providers/counter_provider.dart';
import 'package:example_rovider/src/widgets/floating_actions_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoubleScreen extends StatefulWidget {
  DoubleScreen({Key key}) : super(key: key);

  @override
  _DoubleScreenState createState() => _DoubleScreenState();
}

class _DoubleScreenState extends State<DoubleScreen> {
  @override
  Widget build(BuildContext context) {
    final counterInfo = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter provider'),
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
        counterInfo.doubleDecrement,
        counterInfo.doubleIncrement,
      ),
    );
  }
}
