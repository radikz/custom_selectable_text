import 'package:flutter/material.dart';

import '../custom_selectable_text.dart';
import 'custom_text_selection_controls.dart';

/// Creates a selectable text.
///
/// [data] is required
///
/// The [showCursor], [autofocus], [dragStartBehavior], [selectionHeightStyle],
/// [selectionWidthStyle] and [data] parameters must not be null. If specified,
/// the [maxLines] argument must be greater than zero.
class CustomSelectableText extends SelectableText {
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
