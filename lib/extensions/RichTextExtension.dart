library dolphin_flutter;

import 'package:flutter/material.dart';

extension RichTextExtension on RichText {
  /// Initializes [key] for subclasses.
  RichText setKey(Key key) => copyWith(key: key);

  /// The color to use when painting the text.
  ///
  /// Completely opaque white.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText white() => copyWith(style: TextStyle(color: Colors.white));

  /// The color to use when painting the text.
  ///
  /// Completely opaque black.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText black() => copyWith(style: TextStyle(color: Colors.black));

  /// The color to use when painting the text.
  ///
  /// The red primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText red() => copyWith(style: TextStyle(color: Colors.red));

  /// The color to use when painting the text.
  ///
  /// The pink primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText pink() => copyWith(style: TextStyle(color: Colors.pink));

  /// The color to use when painting the text.
  ///
  /// The purple primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText purple() => copyWith(style: TextStyle(color: Colors.purple));

  /// The color to use when painting the text.
  ///
  /// The deep purple primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText deepPurple() => copyWith(style: TextStyle(color: Colors.deepPurple));

  /// The color to use when painting the text.
  ///
  /// The indigo primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText indigo() => copyWith(style: TextStyle(color: Colors.indigo));

  /// The color to use when painting the text.
  ///
  /// The blue primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText blue() => copyWith(style: TextStyle(color: Colors.blue));

  /// The color to use when painting the text.
  ///
  /// The light blue primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText lightBlue() => copyWith(style: TextStyle(color: Colors.lightBlue));

  /// The color to use when painting the text.
  ///
  /// The cyan primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText cyan() => copyWith(style: TextStyle(color: Colors.cyan));

  /// The color to use when painting the text.
  ///
  /// The teal primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText teal() => copyWith(style: TextStyle(color: Colors.teal));

  /// The color to use when painting the text.
  ///
  /// The green primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText green() => copyWith(style: TextStyle(color: Colors.green));

  /// The color to use when painting the text.
  ///
  /// The light green primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText lightGreen() => copyWith(style: TextStyle(color: Colors.lightGreen));

  /// The color to use when painting the text.
  ///
  /// The lime primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText lime() => copyWith(style: TextStyle(color: Colors.lime));

  /// The color to use when painting the text.
  ///
  /// The yellow primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText yellow() => copyWith(style: TextStyle(color: Colors.yellow));

  /// The color to use when painting the text.
  ///
  /// The amber primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText amber() => copyWith(style: TextStyle(color: Colors.amber));

  /// The color to use when painting the text.
  ///
  /// The orange primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText orange() => copyWith(style: TextStyle(color: Colors.orange));

  /// The color to use when painting the text.
  ///
  /// The deep orange primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText deepOrange() => copyWith(style: TextStyle(color: Colors.deepOrange));

  /// The color to use when painting the text.
  ///
  /// The brown primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText brown() => copyWith(style: TextStyle(color: Colors.brown));

  /// The color to use when painting the text.
  ///
  /// The grey primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText grey() => copyWith(style: TextStyle(color: Colors.grey));

  /// The color to use when painting the text.
  ///
  /// The blue-grey primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText blueGrey() => copyWith(style: TextStyle(color: Colors.blueGrey));

  /// The color to use when painting the text.
  ///
  /// The red accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText redAccent() => copyWith(style: TextStyle(color: Colors.redAccent));

  /// The color to use when painting the text.
  ///
  /// The pink accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText pinkAccent() => copyWith(style: TextStyle(color: Colors.pinkAccent));

  /// The color to use when painting the text.
  ///
  /// The purple accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText purpleAccent() => copyWith(style: TextStyle(color: Colors.purpleAccent));

  /// The color to use when painting the text.
  ///
  /// The deep purple accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText deepPurpleAccent() =>
      copyWith(style: TextStyle(color: Colors.deepPurpleAccent));

  /// The color to use when painting the text.
  ///
  /// The indigo accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText indigoAccent() => copyWith(style: TextStyle(color: Colors.indigoAccent));

  /// The color to use when painting the text.
  ///
  /// The blue accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText blueAccent() => copyWith(style: TextStyle(color: Colors.blueAccent));

  /// The color to use when painting the text.
  ///
  /// The light blue accent.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText lightBlueAccent() =>
      copyWith(style: TextStyle(color: Colors.lightBlueAccent));

  /// The color to use when painting the text.
  ///
  /// The cyan accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText cyanAccent() => copyWith(style: TextStyle(color: Colors.cyanAccent));

  /// The color to use when painting the text.
  ///
  /// The teal accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText tealAccent() => copyWith(style: TextStyle(color: Colors.tealAccent));

  /// The color to use when painting the text.
  ///
  /// The green accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText greenAccent() => copyWith(style: TextStyle(color: Colors.greenAccent));

  /// The color to use when painting the text.
  ///
  /// The light green accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText lightGreenAccent() =>
      copyWith(style: TextStyle(color: Colors.lightGreenAccent));

  /// The color to use when painting the text.
  ///
  /// The lime accent primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText limeAccent() => copyWith(style: TextStyle(color: Colors.limeAccent));

  /// The color to use when painting the text.
  ///
  /// The yellow accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText yellowAccent() => copyWith(style: TextStyle(color: Colors.yellowAccent));

  /// The color to use when painting the text.
  ///
  /// The amber primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText amberAccent() => copyWith(style: TextStyle(color: Colors.amberAccent));

  /// The color to use when painting the text.
  ///
  /// The orange accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText orangeAccent() => copyWith(style: TextStyle(color: Colors.orangeAccent));

  /// The color to use when painting the text.
  ///
  /// The deep orange accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  RichText deepOrangeAccent() =>
      copyWith(style: TextStyle(color: Colors.deepOrangeAccent));

  /// The color to use when painting the text.
  ///
  /// If [foreground] is specified, this value must be null. The [color] property
  /// is shorthand for `Paint()..color = color`.
  ///
  /// In [merge], [apply], and [lerp], conflicts between [color] and [foreground]
  /// specification are resolved in [foreground]'s favor - i.e. if [foreground] is
  /// specified in one place, it will dominate [color] in another.
  RichText setColor(Color color) => copyWith(style: TextStyle(color: color));

  /// The color to use as the background for the text.
  ///
  /// Completely opaque white.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgWhite() => copyWith(style: TextStyle(backgroundColor: Colors.white));

  /// The color to use as the background for the text.
  ///
  /// Completely opaque black.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgBlack() => copyWith(style: TextStyle(backgroundColor: Colors.black));

  /// The color to use as the background for the text.
  ///
  /// The red primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgRed() => copyWith(style: TextStyle(backgroundColor: Colors.red));

  /// The color to use as the background for the text.
  ///
  /// The pink primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgPink() => copyWith(style: TextStyle(backgroundColor: Colors.pink));

  /// The color to use as the background for the text.
  ///
  /// The purple primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgPurple() => copyWith(style: TextStyle(backgroundColor: Colors.purple));

  /// The color to use as the background for the text.
  ///
  /// The deep purple primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgDeepPurple() =>
      copyWith(style: TextStyle(backgroundColor: Colors.deepPurple));

  /// The color to use as the background for the text.
  ///
  /// The indigo primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgIndigo() => copyWith(style: TextStyle(backgroundColor: Colors.indigo));

  /// The color to use as the background for the text.
  ///
  /// The blue primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgBlue() => copyWith(style: TextStyle(backgroundColor: Colors.blue));

  /// The color to use as the background for the text.
  ///
  /// The light blue primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgLightBlue() =>
      copyWith(style: TextStyle(backgroundColor: Colors.lightBlue));

  /// The color to use as the background for the text.
  ///
  /// The cyan primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgCyan() => copyWith(style: TextStyle(backgroundColor: Colors.cyan));

  /// The color to use as the background for the text.
  ///
  /// The teal primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgTeal() => copyWith(style: TextStyle(backgroundColor: Colors.teal));

  /// The color to use as the background for the text.
  ///
  /// The green primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgGreen() => copyWith(style: TextStyle(backgroundColor: Colors.green));

  /// The color to use as the background for the text.
  ///
  /// The light green primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgLightGreen() =>
      copyWith(style: TextStyle(backgroundColor: Colors.lightGreen));

  /// The color to use as the background for the text.
  ///
  /// The lime primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgLime() => copyWith(style: TextStyle(backgroundColor: Colors.lime));

  /// The color to use as the background for the text.
  ///
  /// The yellow primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgYellow() => copyWith(style: TextStyle(backgroundColor: Colors.yellow));

  /// The color to use as the background for the text.
  ///
  /// The amber primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgAmber() => copyWith(style: TextStyle(backgroundColor: Colors.amber));

  /// The color to use as the background for the text.
  ///
  /// The orange primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgOrange() => copyWith(style: TextStyle(backgroundColor: Colors.orange));

  /// The color to use as the background for the text.
  ///
  /// The deep orange primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgDeepOrange() =>
      copyWith(style: TextStyle(backgroundColor: Colors.deepOrange));

  /// The color to use as the background for the text.
  ///
  /// The brown primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgBrown() => copyWith(style: TextStyle(backgroundColor: Colors.brown));

  /// The color to use as the background for the text.
  ///
  /// The grey primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgGrey() => copyWith(style: TextStyle(backgroundColor: Colors.grey));

  /// The color to use as the background for the text.
  ///
  /// The blue-grey primary color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgBlueGrey() =>
      copyWith(style: TextStyle(backgroundColor: Colors.blueGrey));

  /// The color to use as the background for the text.
  ///
  /// The red accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgRedAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.redAccent));

  /// The color to use as the background for the text.
  ///
  /// The pink accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgPinkAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.pinkAccent));

  /// The color to use as the background for the text.
  ///
  /// The purple accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgPurpleAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.purpleAccent));

  /// The color to use as the background for the text.
  ///
  /// The deep purple accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgDeepPurpleAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.deepPurpleAccent));

  /// The color to use as the background for the text.
  ///
  /// The indigo accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgIndigoAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.indigoAccent));

  /// The color to use as the background for the text.
  ///
  /// The blue accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgBlueAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.blueAccent));

  /// The color to use as the background for the text.
  ///
  /// The light blue accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgLightBlueAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.lightBlueAccent));

  /// The color to use as the background for the text.
  ///
  /// The cyan accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgCyanAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.cyanAccent));

  /// The color to use as the background for the text.
  ///
  /// The teal accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgTealAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.tealAccent));

  /// The color to use as the background for the text.
  ///
  /// The green accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgGreenAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.greenAccent));

  /// The color to use as the background for the text.
  ///
  /// The light green accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgLightGreenAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.lightGreenAccent));

  /// The color to use as the background for the text.
  ///
  /// The lime accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgLimeAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.limeAccent));

  /// The color to use as the background for the text.
  ///
  /// The yellow accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgYellowAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.yellowAccent));

  /// The color to use as the background for the text.
  ///
  /// The amber accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgAmberAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.amberAccent));

  /// The color to use as the background for the text.
  ///
  /// The orange accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgOrangeAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.orangeAccent));

  /// The color to use as the background for the text.
  ///
  /// The deep orange accent color.
  ///
  /// If [background] is specified, this method should not be called.
  RichText bgDeepOrangeAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.deepOrangeAccent));

  /// The color to use as the background for the text.
  ///
  /// If [background] is specified, this value must be null. The
  /// [backgroundColor] property is shorthand for
  /// `background: Paint()..color = backgroundColor`.
  ///
  /// In [merge], [apply], and [lerp], conflicts between [backgroundColor] and [background]
  /// specification are resolved in [background]'s favor - i.e. if [background] is
  /// specified in one place, it will dominate [color] in another.
  RichText setBackgroundColor(Color color) =>
      copyWith(style: TextStyle(backgroundColor: color));

  /// The size of glyphs (in logical pixels) to use when painting the text.
  ///
  /// During painting, the [fontSize] is multiplied by the current
  /// `textScaleFactor` to let users make it easier to read RichText by increasing
  /// its size.
  ///
  /// [getParagraphStyle] will default to 14 logical pixels if the font size
  /// isn't specified here.
  RichText setFontSize(double fontSize) =>
      copyWith(style: TextStyle(fontSize: fontSize));

  /// The typeface thickness to use when painting the text
  ///
  /// Thin, the least thick - FontWeight.w100
  RichText thin() => copyWith(style: TextStyle(fontWeight: FontWeight.w100));

  /// The typeface thickness to use when painting the text
  ///
  /// Extra-light - FontWeight.w200
  RichText extraLight() => copyWith(style: TextStyle(fontWeight: FontWeight.w200));

  /// The typeface thickness to use when painting the text
  ///
  /// Light - FontWeight.w300
  RichText light() => copyWith(style: TextStyle(fontWeight: FontWeight.w300));

  /// The typeface thickness to use when painting the text
  ///
  /// Medium - FontWeight.w500
  RichText medium() => copyWith(style: TextStyle(fontWeight: FontWeight.w500));

  /// The typeface thickness to use when painting the text
  ///
  /// Semi-bold - FontWeight.w600
  RichText semiBold() => copyWith(style: TextStyle(fontWeight: FontWeight.w600));

  /// The typeface thickness to use when painting the text
  ///
  /// Bold - FontWeight.bold - FontWeight.w700
  RichText bold() => copyWith(style: TextStyle(fontWeight: FontWeight.bold));

  /// The typeface thickness to use when painting the text
  ///
  /// Extra-bold - FontWeight.w800
  RichText extraBold() => copyWith(style: TextStyle(fontWeight: FontWeight.w800));

  /// The typeface thickness to use when painting the text
  ///
  /// Black, the most thick - FontWeight.w900
  RichText boldBlack() => copyWith(style: TextStyle(fontWeight: FontWeight.w900));

  /// The typeface thickness to use when painting the text
  RichText setFontWeight(FontWeight fontWeight) => copyWith(style: TextStyle(fontWeight: fontWeight));

  /// The typeface variant to use when drawing the letters
  ///
  /// Use glyphs designed for slanting
  RichText italic() => copyWith(style: TextStyle(fontStyle: FontStyle.italic));

  /// The typeface variant to use when drawing the letters
  ///
  /// Use the upright glyphs
  RichText normal() => copyWith(style: TextStyle(fontStyle: FontStyle.normal));

  /// The typeface variant to use when drawing the letters
  RichText setFontStyle(FontStyle fontStyle) => copyWith(style: TextStyle(fontStyle: fontStyle));

  /// The amount of space (in logical pixels) to add between each letter.
  /// A negative value can be used to bring the letters closer.
  RichText setLetterSpacing(double letterSpacing) =>
      copyWith(style: TextStyle(letterSpacing: letterSpacing));

  /// The amount of space (in logical pixels) to add at each sequence of
  /// white-space (i.e. between each word). A negative value can be used to
  /// bring the words closer.
  RichText setWordSpacing(double wordSpacing) =>
      copyWith(style: TextStyle(wordSpacing: wordSpacing));

  /// The common baseline that should be aligned between this RichText span and its
  /// parent RichText span, or, for the root RichText spans, with the line box.
  ///
  /// The horizontal line used to align the bottom of glyphs for alphabetic characters.
  RichText alphabetic() =>
      copyWith(style: TextStyle(textBaseline: TextBaseline.alphabetic));

  /// The common baseline that should be aligned between this RichText span and its
  /// parent RichText span, or, for the root RichText spans, with the line box.
  ///
  /// The horizontal line used to align ideographic characters.
  RichText ideographic() =>
      copyWith(style: TextStyle(textBaseline: TextBaseline.ideographic));

  /// The common baseline that should be aligned between this RichText span and its
  /// parent RichText span, or, for the root RichText spans, with the line box.
  RichText setTextBaseline(TextBaseline textBaseline) =>
      copyWith(style: TextStyle(textBaseline: textBaseline));

  /// The height of this RichText span, as a multiple of the font size.
  ///
  /// When [height] is null or omitted, the line height will be determined
  /// by the font's metrics directly, which may differ from the fontSize.
  /// When [height] is non-null, the line height of the span of RichText will be a
  /// multiple of [fontSize] and be exactly `fontSize * height` logical pixels
  /// tall.
  ///
  /// For most fonts, setting [height] to 1.0 is not the same as omitting or
  /// setting height to null because the [fontSize] sets the height of the EM-square,
  /// which is different than the font provided metrics for line height. The
  /// following diagram illustrates the difference between the font-metrics
  /// defined line height and the line height produced with `height: 1.0`
  /// (which forms the upper and lower edges of the EM-square):
  ///
  /// ![RichText height diagram](https://flutter.github.io/assets-for-api-docs/assets/painting/text_height_diagram.png)
  ///
  /// Examples of the resulting line heights from different values of `TextStyle.height`:
  ///
  /// ![RichText height comparison diagram](https://flutter.github.io/assets-for-api-docs/assets/painting/text_height_comparison_diagram.png)
  ///
  /// See [StrutStyle] for further control of line height at the paragraph level.
  RichText setHeight(double height) => copyWith(style: TextStyle(height: height));

  /// The paint drawn as a foreground for the text.
  ///
  /// The value should ideally be cached and reused each time if multiple text
  /// styles are created with the same paint settings. Otherwise, each time it
  /// will appear like the style changed, which will result in unnecessary
  /// updates all the way through the framework.
  ///
  /// If [color] is specified, this value must be null. The [color] property
  /// is shorthand for `Paint()..color = color`.
  ///
  /// In [merge], [apply], and [lerp], conflicts between [color] and [foreground]
  /// specification are resolved in [foreground]'s favor - i.e. if [foreground] is
  /// specified in one place, it will dominate [color] in another.
  RichText setForeground(Paint foreground) =>
      copyWith(style: TextStyle(foreground: foreground));

  /// The paint drawn as a background for the text.
  ///
  /// The value should ideally be cached and reused each time if multiple text
  /// styles are created with the same paint settings. Otherwise, each time it
  /// will appear like the style changed, which will result in unnecessary
  /// updates all the way through the framework.
  ///
  /// If [backgroundColor] is specified, this value must be null. The
  /// [backgroundColor] property is shorthand for
  /// `background: Paint()..color = backgroundColor`.
  ///
  /// In [merge], [apply], and [lerp], conflicts between [backgroundColor] and
  /// [background] specification are resolved in [background]'s favor - i.e. if
  /// [background] is specified in one place, it will dominate [backgroundColor]
  /// in another.
  RichText setBackground(Paint background) =>
      copyWith(style: TextStyle(background: background));

  /// The decorations to paint near the RichText (e.g., an underline).
  ///
  /// Draw a line underneath each line of text
  RichText underline() =>
      copyWith(style: TextStyle(decoration: TextDecoration.underline));

  /// The decorations to paint near the RichText (e.g., an underline).
  ///
  /// Draw a line through each line of text
  RichText lineThrough() =>
      copyWith(style: TextStyle(decoration: TextDecoration.lineThrough));

  /// The decorations to paint near the RichText (e.g., an underline).
  ///
  /// Draw a line above each line of text
  RichText overline() =>
      copyWith(style: TextStyle(decoration: TextDecoration.overline));

  /// The decorations to paint near the RichText (e.g., an underline).
  ///
  /// Multiple decorations can be applied using [TextDecoration.combine].
  RichText setDecoration(TextDecoration decoration) =>
      copyWith(style: TextStyle(decoration: decoration));

  /// The color in which to paint the RichText decorations.
  RichText setDecorationColor(Color decorationColor) =>
      copyWith(style: TextStyle(decorationColor: decorationColor));

  /// The style in which to paint the RichText decorations (e.g., dashed).
  RichText setDecorationStyle(TextDecorationStyle decorationStyle) =>
      copyWith(style: TextStyle(decorationStyle: decorationStyle));

  /// The thickness of the decoration stroke as a multiplier of the thickness
  /// defined by the font.
  ///
  /// The font provides a base stroke width for [decoration]s which scales off
  /// of the [fontSize]. This property may be used to achieve a thinner or
  /// thicker decoration stroke, without changing the [fontSize]. For example,
  /// a [decorationThickness] of 2.0 will draw a decoration twice as thick as
  /// the font defined decoration thickness.
  ///
  /// {@tool sample}
  /// To achieve a bolded strike-through, we can apply a thicker stroke for the
  /// decoration.
  ///
  /// ```dart
  /// Text(
  ///   'This has a very BOLD strike through!',
  ///   style: TextStyle(
  ///     decoration: TextDecoration.lineThrough,
  ///     decorationThickness: 2.85,
  ///   ),
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// {@tool sample}
  /// We can apply a very thin and subtle wavy underline (perhaps, when words
  /// are misspelled) by using a [decorationThickness] < 1.0.
  ///
  /// ```dart
  /// Text(
  ///   'oopsIforgottousespaces!',
  ///   style: TextStyle(
  ///     decoration: TextDecoration.underline,
  ///     decorationStyle: TextDecorationStyle.wavy,
  ///     decorationColor: Colors.red,
  ///     decorationThickness: 0.5,
  ///   ),
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// The default [decorationThickness] is 1.0, which will use the font's base
  /// stroke thickness/width.
  RichText setDecorationThickness(double decorationThickness) =>
      copyWith(style: TextStyle(decorationThickness: decorationThickness));

  /// A human-readable description of this RichText style.
  ///
  /// This property is maintained only in debug builds.
  ///
  /// When merging ([merge]), copying ([copyWith]), modifying using [apply], or
  /// interpolating ([lerp]), the label of the resulting style is marked with
  /// the debug labels of the original styles. This helps figuring out where a
  /// particular RichText style came from.
  ///
  /// This property is not considered when comparing RichText styles using `==` or
  /// [compareTo], and it does not affect [hashCode].
  RichText setDebugLabel(String debugLabel) =>
      copyWith(style: TextStyle(debugLabel: debugLabel));

  /// {@macro flutter.painting.textPainter.strutStyle}
  RichText setStrutStyle(StrutStyle strutStyle) => copyWith(strutStyle: strutStyle);

  /// How the RichText should be aligned horizontally.
  ///
  /// Align the RichText on the left edge of the container.
  RichText left() => copyWith(textAlign: TextAlign.left);

  /// How the RichText should be aligned horizontally.
  ///
  /// Align the RichText on the right edge of the container.
  RichText right() => copyWith(textAlign: TextAlign.right);

  /// How the RichText should be aligned horizontally.
  ///
  /// Align the RichText in the center of the container.
  RichText center() => copyWith(textAlign: TextAlign.center);

  /// How the RichText should be aligned horizontally.
  ///
  /// Stretch lines of RichText that end with a soft line break to fill the width of
  /// the container.
  ///
  /// Lines that end with hard line breaks are aligned towards the [start] edge.
  RichText justify() => copyWith(textAlign: TextAlign.justify);

  /// How the RichText should be aligned horizontally.
  ///
  /// Align the RichText on the leading edge of the container.
  ///
  /// For left-to-right RichText ([TextDirection.ltr]), this is the left edge.
  ///
  /// For right-to-left RichText ([TextDirection.rtl]), this is the right edge.
  RichText start() => copyWith(textAlign: TextAlign.start);

  /// How the RichText should be aligned horizontally.
  ///
  /// Align the RichText on the trailing edge of the container.
  ///
  /// For left-to-right RichText ([TextDirection.ltr]), this is the right edge.
  ///
  /// For right-to-left RichText ([TextDirection.rtl]), this is the left edge.
  RichText end() => copyWith(textAlign: TextAlign.end);

  /// How the RichText should be aligned horizontally.
  RichText setTextAlign(TextAlign textAlign) => copyWith(textAlign: textAlign);

  /// The directionality of the text.
  ///
  /// The RichText flows from right to left (e.g. Arabic, Hebrew).
  RichText rtl() => copyWith(textDirection: TextDirection.rtl);

  /// The directionality of the text.
  ///
  /// The RichText flows from left to right (e.g., English, French).
  RichText ltr() => copyWith(textDirection: TextDirection.ltr);

  /// The directionality of the text.
  ///
  /// This decides how [textAlign] values like [TextAlign.start] and
  /// [TextAlign.end] are interpreted.
  ///
  /// This is also used to disambiguate how to render bidirectional text. For
  /// example, if the [data] is an English phrase followed by a Hebrew phrase,
  /// in a [TextDirection.ltr] conRichText the English phrase will be on the left
  /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
  /// context, the English phrase will be on the right and the Hebrew phrase on
  /// its left.
  ///
  /// Defaults to the ambient [Directionality], if any.
  RichText setTextDirection(TextDirection textDirection) =>
      copyWith(textDirection: textDirection);

  /// The locale used to select region-specific glyphs.
  ///
  /// This property is rarely set. Typically the locale used to select
  /// region-specific glyphs is defined by the RichText widget's [BuildContext]
  /// using `Localizations.localeOf(context)`. For example [RichText] defines
  /// its locale this way. However, a rich RichText widget's [TextSpan]s could
  /// specify RichText styles with different explicit locales in order to select
  /// different region-specific glyphs for each RichText span.
  RichText setLocale(Locale locale) => copyWith(locale: locale);

  /// Whether the RichText should break at soft line breaks.
  ///
  /// If false, the glyphs in the RichText will be positioned as if there was unlimited horizontal space.
  RichText setSoftWrap(bool softWrap) => copyWith(softWrap: softWrap);

  /// Render overflowing RichText outside of its container.
  RichText visible() => copyWith(overflow: TextOverflow.visible);

  /// Clip the overflowing RichText to fix its container.
  RichText clip() => copyWith(overflow: TextOverflow.clip);

  /// Fade the overflowing RichText to transparent.
  RichText fade() => copyWith(overflow: TextOverflow.fade);

  /// Use an ellipsis to indicate that the RichText has overflowed.
  RichText ellipsis() => copyWith(overflow: TextOverflow.ellipsis);

  /// How visual overflow should be handled.
  RichText setOverflow(TextOverflow overflow) => copyWith(overflow: overflow);

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the RichText scale factor is 1.5, RichText will be 50% larger than
  /// the specified font size.
  ///
  /// The value given to the constructor as textScaleFactor. If null, will
  /// use the [MediaQueryData.textScaleFactor] obtained from the ambient
  /// [MediaQuery], or 1.0 if there is no [MediaQuery] in scope.
  RichText setTextScaleFactor(double textScaleFactor) =>
      copyWith(textScaleFactor: textScaleFactor);

  /// An optional maximum number of lines for the RichText to span, wrapping if necessary.
  /// If the RichText exceeds the given number of lines, it will be truncated according
  /// to [overflow].
  ///
  /// If this is 1, RichText will not wrap. Otherwise, RichText will be wrapped at the
  /// edge of the box.
  ///
  /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
  /// an explicit number for its [DefaultTextStyle.maxLines], then the
  /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
  /// widget directly to entirely override the [DefaultTextStyle].
  RichText setMaxLines(int maxLines) => copyWith(maxLines: maxLines);

  /// An alternative semantics label for this text.
  ///
  /// If present, the semantics of this widget will contain this value instead
  /// of the actual text. This will overwrite any of the semantics labels applied
  /// directly to the [TextSpan]s.
  ///
  /// This is useful for replacing abbreviations or shorthands with the full
  /// RichText value:
  ///
  /// ```dart
  /// Text(r'$$', semanticsLabel: 'Double dollars')
  /// ```
  RichText setSemanticsLabel(String semanticsLabel) =>
      copyWith(semanticsLabel: semanticsLabel);

  /// The width will be exactly enough to contain the longest line and no
  /// longer. A common use case for this is chat bubbles.
  RichText longestLine() => copyWith(textWidthBasis: TextWidthBasis.longestLine);

  /// Multiline RichText will take up the full width given by the parent. For single
  /// line text, only the minimum amount of width needed to contain the text
  /// will be used. A common use case for this is a standard series of
  /// paragraphs.
  RichText parent() => copyWith(textWidthBasis: TextWidthBasis.parent);

  /// The different ways of measuring the width of one or more lines of text.
  ///
  /// {@macro flutter.painting.textPainter.textWidthBasis}
  RichText setTextWidthBasis(TextWidthBasis textWidthBasis) =>
      copyWith(textWidthBasis: textWidthBasis);

  /// The name of the font to use when painting the RichText (e.g., Roboto). If the
  /// font is defined in a package, this will be prefixed with
  /// 'packages/package_name/' (e.g. 'packages/cool_fonts/Roboto'). The
  /// prefixing is done by the constructor when the `package` argument is
  /// provided.
  ///
  /// The value provided in [fontFamily] will act as the preferred/first font
  /// family that glyphs are looked for in, followed in order by the font families
  /// in [fontFamilyFallback]. When [fontFamily] is null or not provided, the
  /// first value in [fontFamilyFallback] acts as the preferred/first font
  /// family. When neither is provided, then the default platform font will
  /// be used.
  RichText setFontFamily(String fontFamily) =>
      copyWith(style: TextStyle(fontFamily: fontFamily));

  /// If non-null, the style to use for this text.
  ///
  /// If the style's "inherit" property is true, the style will be merged with
  /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
  /// replace the closest enclosing [DefaultTextStyle].
  RichText setStyle(TextStyle style) => copyWith(style: style);

  /// Wraps this RichText with an Expanded widget
  Expanded expanded() => Expanded(child: copyWith());

  /// Wraps this RichText with an Opacity widget
  Opacity opacity(double opacity) =>
      Opacity(opacity: opacity, child: copyWith());

  /// Wraps this RichText with a Padding widget
  Padding padding(EdgeInsetsGeometry padding) =>
      Padding(padding: padding, child: copyWith());

  /// Creates a copy of this RichText but the given fields will be replaced with
  /// the new values.
  RichText copyWith(
      {Key? key,
        InlineSpan? text,
        StrutStyle? strutStyle,
        TextAlign? textAlign,
        TextDirection textDirection = TextDirection.ltr,
        Locale? locale,
        bool? softWrap,
        TextOverflow? overflow,
        double? textScaleFactor,
        int? maxLines,
        String? semanticsLabel,
        TextWidthBasis? textWidthBasis,
        TextStyle? style}) {
    return RichText(text: this.text,
        key: key ?? this.key,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        textDirection: textDirection ?? this.textDirection,
        locale: locale ?? this.locale,
        softWrap: softWrap ?? this.softWrap,
        overflow: overflow ?? this.overflow,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        maxLines: maxLines ?? this.maxLines,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis);
  }
}