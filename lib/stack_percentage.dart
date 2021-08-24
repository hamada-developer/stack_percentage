library stack_percentage;

class Percent {

  /// put horizontal this border widget in the parent
  /// [ratio] the percentage of the parent
  /// [widthParent] size of parent just put width it
  static double borderHorizontalPosition({
    required double ratio,
    required double widthParent,
  }) {
    return ((widthParent * ratio) / 100);
  }

  /// put Vertical this border widget in the parent
  /// [ratio] the percentage of the parent
  /// [heightParent] size of parent just put height it
  static double borderVerticalPosition({
    required double ratio,
    required double heightParent,
  }) {
    return ((heightParent * ratio) / 100);
  }

  /// put horizontal this widget in the parent of real percentage
  /// [ratio] the percentage of the parent
  /// [widthParent] size of parent just put width it
  /// [widthChild] size of child just put width it
  ///
  static double widgetHorizontalPosition({
    required double ratio,
    required double widthChild,
    required double widthParent,
  }) {
    return -((widthChild / 2) - (widthParent * ratio) / 100);
  }

  /// put vertical this widget in the parent of real percentage
  /// [ratio] the percentage of the parent
  /// [heightParent] size of parent just put height it
  /// [heightChild] size of child just put height it
  ///
  static double widgetVerticalPosition({
    required double ratio,
    required double heightChild,
    required double heightParent,
  }) {
    return -((heightChild / 2) - (heightParent * ratio) / 100);
  }
}
