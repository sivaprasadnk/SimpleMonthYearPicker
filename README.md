

## Simple Month Year Picker

Simple to use month/year picker for your apps with highly customisable options.

![Image](https://github.com/sivaprasadnk/SimpleMonthYearPicker/blob/main/screenshots/screenshot.png)


## Getting started

Add this to your package's `pubspec.yaml` file

```yaml
dependencies:
  simple_month_year_picker: ^0.0.1
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
              await SimpleMonthYearPicker.showMonthYearPickerDialog(
                context: context,
                titleFontFamily: 'Rajdhani',
              );
            },
            child: const Text('show dialog'),
          );
  }
```
## Additional information

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
