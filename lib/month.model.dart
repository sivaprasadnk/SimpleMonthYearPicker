/// A model representing a month with an index and name.
///
/// This is used to store month-related data, such as its numerical index (1 for January, 2 for February, etc.)
/// and its corresponding short name (e.g., "Jan", "Feb").
class MonthModel {
  /// The numerical index of the month (e.g., 1 for January, 2 for February).
  int index;

  /// The short name of the month (e.g., "Jan", "Feb").
  String name;

  /// Creates a [MonthModel] with the specified [index] and [name].
  ///
  /// Both parameters are required.
  MonthModel({
    required this.index,
    required this.name,
  });
}
