## Simple Month Year Picker

Simple to use month/year picker for your apps with highly customisable options.

![screenshot1](https://github.com/user-attachments/assets/e8434e5c-5c74-4ff4-abf5-425122c92033)


## Getting started

Add this to your package's `pubspec.yaml` file

```yaml
dependencies:
  simple_month_year_picker: ^1.1.0
```

## Usage

Next, you just have to import the package using:

```dart
import 'package:simple_month_year_picker/simple_month_year_picker.dart';
```

```dart
  Widget build(BuildContext context) {
   return ElevatedButton(
              onPressed: () async {
                // This is in order to get the selected date.
                final selectedDate =
                    await SimpleMonthYearPicker.showMonthYearPickerDialog(
                        context: context,
                        titleTextStyle: TextStyle(),
                        monthTextStyle: TextStyle(),
                        yearTextStyle: TextStyle(),
                        disableFuture:
                            true // This will disable future years. it is false by default.
                        );
                // Use the selected date as needed
                print('Selected date: $selectedDate');
              },
              child: const Text('show dialog'),
            );
  }
```

## Additional information

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
