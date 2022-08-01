/// Control type to manipulate the selection of text
enum SelectionControlType { copy, selectAll, cut, paste, other }

class CustomSelectableTextItem {
  /// The text to display.
  final String? label;

  /// The callback that is called when the item is tapped or otherwise activated.
  /// If this is set to null, the button will be disabled.
  final Function(String)? onPressed;

  /// Control type to manipulate the selection of text
  final SelectionControlType controlType;

  /// Creates a selectable text item
  ///
  /// [label] is allowed to be null if [SelectionControlType] is
  /// [SelectionControlType.copy] or [SelectionControlType.cut] or
  /// [SelectionControlType.paste] or [SelectionControlType.selectAll]
  ///
  /// If [label] is null, text will use localized resource values from
  /// [MaterialLocalizations]
  ///
  CustomSelectableTextItem({
    this.label,
    this.onPressed,
    required this.controlType,
  }) : assert(label != null || controlType != SelectionControlType.other,
            "Label is required when the controlType is SelectionControlType.other");
}
