import 'package:flutter/widgets.dart';

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

  final Widget? icon;

  CustomSelectableTextItem._(
      {this.label, this.onPressed, required this.controlType, this.icon})
      : assert(
            label != null ||
                controlType != SelectionControlType.other ||
                icon != null,
            "Label is required when the controlType is SelectionControlType.other");

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
    String? label,
    Function(String)? onPressed,
    required SelectionControlType controlType,
  }) : this._(label: label, onPressed: onPressed, controlType: controlType);

  /// Creates a selectable text item with icon
  ///
  /// Typically the icon is an Icon or an ImageIcon widget
  CustomSelectableTextItem.icon(
      {Function(String)? onPressed,
      required Widget icon,
      SelectionControlType controlType = SelectionControlType.other})
      : this._(controlType: controlType, onPressed: onPressed, icon: icon);
}
