import 'package:flutter/material.dart';
import 'package:simple_month_year_picker/simple_month_year_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Month Picker Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleMonthYearPicker example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                var selectedDate =
                    await SimpleMonthYearPicker.showMonthYearPickerDialog(
                  context: context,
                  barrierDismissible: true,
                );
                debugPrint("month :" + selectedDate.month.toString());
                debugPrint("year :" + selectedDate.year.toString());
              },
              child: const Text('show dialog'),
            ),
          )
        ],
      ),
    );
  }
}
