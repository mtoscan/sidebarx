import 'package:flutter/material.dart';

class SidebarXTheme {
  const SidebarXTheme({
    this.width = 70,
    this.height = double.infinity,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.decoration,
    this.iconTheme,
    this.selectedIconTheme,
    this.textStyle,
    this.selectedTextStyle,
    this.itemDecoration,
    this.selectedItemDecoration,
    this.itemMargin,
    this.selectedItemMargin,
    this.itemPadding,
    this.selectedItemPadding,
    this.itemTextPadding,
    this.selectedItemTextPadding,
  });

  final double width;
  final double height;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final BoxDecoration? decoration;

  final IconThemeData? iconTheme;
  final IconThemeData? selectedIconTheme;
  final TextStyle? textStyle;
  final TextStyle? selectedTextStyle;
  final BoxDecoration? itemDecoration;
  final BoxDecoration? selectedItemDecoration;
  final EdgeInsets? itemMargin;
  final EdgeInsets? selectedItemMargin;
  final EdgeInsets? itemPadding;
  final EdgeInsets? selectedItemPadding;
  final EdgeInsets? itemTextPadding;
  final EdgeInsets? selectedItemTextPadding;

  /// Method to get default flutter theme settings
  SidebarXTheme mergeFlutterTheme(BuildContext context) {
    final theme = Theme.of(context);
    final mergedTheme = SidebarXTheme(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration ?? BoxDecoration(color: theme.cardColor),
      iconTheme: iconTheme ?? theme.iconTheme,
      selectedIconTheme: selectedIconTheme ??
          theme.iconTheme.copyWith(color: theme.primaryColor),
      textStyle: textStyle ?? theme.textTheme.bodyMedium,
      selectedTextStyle: selectedTextStyle ??
          theme.textTheme.bodyMedium?.copyWith(color: theme.primaryColor),
      itemDecoration: itemDecoration,
      selectedItemDecoration: selectedItemDecoration,
      itemMargin: itemMargin,
      selectedItemMargin: selectedItemMargin,
      itemPadding: itemPadding,
      selectedItemPadding: selectedItemPadding,
      itemTextPadding: itemTextPadding,
      selectedItemTextPadding: selectedItemTextPadding,
    );
    return mergedTheme;
  }

  SidebarXTheme mergeWith(
    SidebarXTheme theme,
  ) {
    return SidebarXTheme(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      itemTextPadding: itemTextPadding ?? theme.itemTextPadding,
      selectedItemTextPadding:
          selectedItemTextPadding ?? theme.selectedItemTextPadding,
      decoration: decoration ?? theme.decoration,
      iconTheme: iconTheme ?? theme.iconTheme,
      selectedIconTheme: selectedIconTheme ?? theme.selectedIconTheme,
      textStyle: textStyle ?? theme.textStyle,
      selectedTextStyle: selectedTextStyle ?? theme.selectedTextStyle,
      itemMargin: itemMargin ?? theme.itemMargin,
      selectedItemMargin: selectedItemMargin ?? theme.selectedItemMargin,
      itemPadding: itemPadding ?? theme.itemPadding,
      selectedItemPadding: selectedItemPadding ?? theme.selectedItemPadding,
      itemDecoration: itemDecoration ?? theme.itemDecoration,
      selectedItemDecoration:
          selectedItemDecoration ?? theme.selectedItemDecoration,
    );
  }

  SidebarXTheme copyWith({
    double? width,
    double? height,
    EdgeInsets? padding,
    EdgeInsets? margin,
    BoxDecoration? decoration,
    IconThemeData? iconTheme,
    IconThemeData? selectedIconTheme,
    TextStyle? textStyle,
    TextStyle? selectedTextStyle,
    BoxDecoration? itemDecoration,
    BoxDecoration? selectedItemDecoration,
    EdgeInsets? itemMargin,
    EdgeInsets? selectedItemMargin,
    EdgeInsets? itemPadding,
    EdgeInsets? selectedItemPadding,
    EdgeInsets? itemTextPadding,
    EdgeInsets? selectedItemTextPadding,
  }) {
    return SidebarXTheme(
      width: width ?? this.width,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      decoration: decoration ?? this.decoration,
      iconTheme: iconTheme ?? this.iconTheme,
      selectedIconTheme: selectedIconTheme ?? this.selectedIconTheme,
      textStyle: textStyle ?? this.textStyle,
      selectedTextStyle: selectedTextStyle ?? this.selectedTextStyle,
      itemDecoration: itemDecoration ?? this.itemDecoration,
      selectedItemDecoration:
          selectedItemDecoration ?? this.selectedItemDecoration,
      itemMargin: itemMargin ?? this.itemMargin,
      selectedItemMargin: selectedItemMargin ?? this.selectedItemMargin,
      itemPadding: itemPadding ?? this.itemPadding,
      selectedItemPadding: selectedItemPadding ?? this.selectedItemPadding,
      itemTextPadding: itemTextPadding ?? this.itemTextPadding,
      selectedItemTextPadding:
          selectedItemTextPadding ?? this.selectedItemTextPadding,
    );
  }

  @override
  String toString() {
    return 'SidebarXTheme(width: $width, height: $height, padding: $padding, margin: $margin, decoration: $decoration, iconTheme: $iconTheme, selectedIconTheme: $selectedIconTheme, textStyle: $textStyle, selectedTextStyle: $selectedTextStyle, itemDecoration: $itemDecoration, selectedItemDecoration: $selectedItemDecoration, itemMargin: $itemMargin, selectedItemMargin: $selectedItemMargin, itemPadding: $itemPadding, selectedItemPadding: $selectedItemPadding, itemTextPadding: $itemTextPadding, selectedItemTextPadding: $selectedItemTextPadding)';
  }
}
