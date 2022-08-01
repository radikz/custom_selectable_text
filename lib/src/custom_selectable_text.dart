import '../custom_selectable_text.dart';
import 'custom_text_selection_controls.dart';
import 'package:flutter/material.dart';

/// Creates a selectable text.
class CustomSelectableText extends SelectableText {
  /// Creates a selectable text.
  ///
  /// [data] is required
  CustomSelectableText(
    super.data, {
    Key? key,
    this.items = const [],
    super.focusNode,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.textScaleFactor,
    super.minLines,
    super.maxLines,
    super.cursorHeight,
    super.cursorRadius,
    super.cursorColor,
    super.onTap,
    super.scrollPhysics,
    super.semanticsLabel,
    super.textHeightBehavior,
    super.textWidthBasis,
    super.onSelectionChanged,
  }) : super(
            key: key,
            selectionControls: CustomTextSelectionControls(items: items));

  /// Creates an array of [CustomSelectableTextItem].
  final List<CustomSelectableTextItem> items;
}
