library dolphin_flutter;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextSpanExtension on TextSpan {
  /// The color to use when painting the text.
  ///
  /// Completely opaque white.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan white() => copyWith(style: TextStyle(color: Colors.white));

  /// The color to use when painting the text.
  ///
  /// Completely opaque black.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan black() => copyWith(style: TextStyle(color: Colors.black));

  /// The color to use when painting the text.
  ///
  /// The red primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan red() => copyWith(style: TextStyle(color: Colors.red));

  /// The color to use when painting the text.
  ///
  /// The pink primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan pink() => copyWith(style: TextStyle(color: Colors.pink));

  /// The color to use when painting the text.
  ///
  /// The purple primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan purple() => copyWith(style: TextStyle(color: Colors.purple));

  /// The color to use when painting the text.
  ///
  /// The deep purple primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan deepPurple() => copyWith(style: TextStyle(color: Colors.deepPurple));

  /// The color to use when painting the text.
  ///
  /// The indigo primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan indigo() => copyWith(style: TextStyle(color: Colors.indigo));

  /// The color to use when painting the text.
  ///
  /// The blue primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan blue() => copyWith(style: TextStyle(color: Colors.blue));

  /// The color to use when painting the text.
  ///
  /// The light blue primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan lightBlue() => copyWith(style: TextStyle(color: Colors.lightBlue));

  /// The color to use when painting the text.
  ///
  /// The cyan primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan cyan() => copyWith(style: TextStyle(color: Colors.cyan));

  /// The color to use when painting the text.
  ///
  /// The teal primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan teal() => copyWith(style: TextStyle(color: Colors.teal));

  /// The color to use when painting the text.
  ///
  /// The green primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan green() => copyWith(style: TextStyle(color: Colors.green));

  /// The color to use when painting the text.
  ///
  /// The light green primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan lightGreen() => copyWith(style: TextStyle(color: Colors.lightGreen));

  /// The color to use when painting the text.
  ///
  /// The lime primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan lime() => copyWith(style: TextStyle(color: Colors.lime));

  /// The color to use when painting the text.
  ///
  /// The yellow primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan yellow() => copyWith(style: TextStyle(color: Colors.yellow));

  /// The color to use when painting the text.
  ///
  /// The amber primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan amber() => copyWith(style: TextStyle(color: Colors.amber));

  /// The color to use when painting the text.
  ///
  /// The orange primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan orange() => copyWith(style: TextStyle(color: Colors.orange));

  /// The color to use when painting the text.
  ///
  /// The deep orange primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan deepOrange() => copyWith(style: TextStyle(color: Colors.deepOrange));

  /// The color to use when painting the text.
  ///
  /// The brown primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan brown() => copyWith(style: TextStyle(color: Colors.brown));

  /// The color to use when painting the text.
  ///
  /// The grey primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan grey() => copyWith(style: TextStyle(color: Colors.grey));
  TextSpan darkGrey() => copyWith(style: TextStyle(color: Color(0xFF666666)));


  /// The color to use when painting the text.
  ///
  /// The blue-grey primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan blueGrey() => copyWith(style: TextStyle(color: Colors.blueGrey));

  /// The color to use when painting the text.
  ///
  /// The red accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan redAccent() => copyWith(style: TextStyle(color: Colors.redAccent));

  /// The color to use when painting the text.
  ///
  /// The pink accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan pinkAccent() => copyWith(style: TextStyle(color: Colors.pinkAccent));

  /// The color to use when painting the text.
  ///
  /// The purple accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan purpleAccent() => copyWith(style: TextStyle(color: Colors.purpleAccent));

  /// The color to use when painting the text.
  ///
  /// The deep purple accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan deepPurpleAccent() =>
      copyWith(style: TextStyle(color: Colors.deepPurpleAccent));

  /// The color to use when painting the text.
  ///
  /// The indigo accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan indigoAccent() => copyWith(style: TextStyle(color: Colors.indigoAccent));

  /// The color to use when painting the text.
  ///
  /// The blue accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan blueAccent() => copyWith(style: TextStyle(color: Colors.blueAccent));

  /// The color to use when painting the text.
  ///
  /// The light blue accent.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan lightBlueAccent() =>
      copyWith(style: TextStyle(color: Colors.lightBlueAccent));

  /// The color to use when painting the text.
  ///
  /// The cyan accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan cyanAccent() => copyWith(style: TextStyle(color: Colors.cyanAccent));

  /// The color to use when painting the text.
  ///
  /// The teal accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan tealAccent() => copyWith(style: TextStyle(color: Colors.tealAccent));

  /// The color to use when painting the text.
  ///
  /// The green accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan greenAccent() => copyWith(style: TextStyle(color: Colors.greenAccent));

  /// The color to use when painting the text.
  ///
  /// The light green accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan lightGreenAccent() =>
      copyWith(style: TextStyle(color: Colors.lightGreenAccent));

  /// The color to use when painting the text.
  ///
  /// The lime accent primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan limeAccent() => copyWith(style: TextStyle(color: Colors.limeAccent));

  /// The color to use when painting the text.
  ///
  /// The yellow accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan yellowAccent() => copyWith(style: TextStyle(color: Colors.yellowAccent));

  /// The color to use when painting the text.
  ///
  /// The amber primary color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan amberAccent() => copyWith(style: TextStyle(color: Colors.amberAccent));

  /// The color to use when painting the text.
  ///
  /// The orange accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan orangeAccent() => copyWith(style: TextStyle(color: Colors.orangeAccent));

  /// The color to use when painting the text.
  ///
  /// The deep orange accent color.
  ///
  /// If [foreground] is specified, this method should not be called.
  TextSpan deepOrangeAccent() =>
      copyWith(style: TextStyle(color: Colors.deepOrangeAccent));

  /// The color to use when painting the text.
  ///
  /// If [foreground] is specified, this value must be null. The [color] property
  /// is shorthand for `Paint()..color = color`.
  ///
  /// In [merge], [apply], and [lerp], conflicts between [color] and [foreground]
  /// specification are resolved in [foreground]'s favor - i.e. if [foreground] is
  /// specified in one place, it will dominate [color] in another.
  TextSpan setColor(Color color) => copyWith(style: TextStyle(color: color));

  /// The color to use as the background for the text.
  ///
  /// Completely opaque white.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgWhite() => copyWith(style: TextStyle(backgroundColor: Colors.white));

  /// The color to use as the background for the text.
  ///
  /// Completely opaque black.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgBlack() => copyWith(style: TextStyle(backgroundColor: Colors.black));

  /// The color to use as the background for the text.
  ///
  /// The red primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgRed() => copyWith(style: TextStyle(backgroundColor: Colors.red));

  /// The color to use as the background for the text.
  ///
  /// The pink primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgPink() => copyWith(style: TextStyle(backgroundColor: Colors.pink));

  /// The color to use as the background for the text.
  ///
  /// The purple primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgPurple() => copyWith(style: TextStyle(backgroundColor: Colors.purple));

  /// The color to use as the background for the text.
  ///
  /// The deep purple primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgDeepPurple() =>
      copyWith(style: TextStyle(backgroundColor: Colors.deepPurple));

  /// The color to use as the background for the text.
  ///
  /// The indigo primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgIndigo() => copyWith(style: TextStyle(backgroundColor: Colors.indigo));

  /// The color to use as the background for the text.
  ///
  /// The blue primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgBlue() => copyWith(style: TextStyle(backgroundColor: Colors.blue));

  /// The color to use as the background for the text.
  ///
  /// The light blue primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgLightBlue() =>
      copyWith(style: TextStyle(backgroundColor: Colors.lightBlue));

  /// The color to use as the background for the text.
  ///
  /// The cyan primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgCyan() => copyWith(style: TextStyle(backgroundColor: Colors.cyan));

  /// The color to use as the background for the text.
  ///
  /// The teal primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgTeal() => copyWith(style: TextStyle(backgroundColor: Colors.teal));

  /// The color to use as the background for the text.
  ///
  /// The green primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgGreen() => copyWith(style: TextStyle(backgroundColor: Colors.green));

  /// The color to use as the background for the text.
  ///
  /// The light green primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgLightGreen() =>
      copyWith(style: TextStyle(backgroundColor: Colors.lightGreen));

  /// The color to use as the background for the text.
  ///
  /// The lime primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgLime() => copyWith(style: TextStyle(backgroundColor: Colors.lime));

  /// The color to use as the background for the text.
  ///
  /// The yellow primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgYellow() => copyWith(style: TextStyle(backgroundColor: Colors.yellow));

  /// The color to use as the background for the text.
  ///
  /// The amber primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgAmber() => copyWith(style: TextStyle(backgroundColor: Colors.amber));

  /// The color to use as the background for the text.
  ///
  /// The orange primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgOrange() => copyWith(style: TextStyle(backgroundColor: Colors.orange));

  /// The color to use as the background for the text.
  ///
  /// The deep orange primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgDeepOrange() =>
      copyWith(style: TextStyle(backgroundColor: Colors.deepOrange));

  /// The color to use as the background for the text.
  ///
  /// The brown primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgBrown() => copyWith(style: TextStyle(backgroundColor: Colors.brown));

  /// The color to use as the background for the text.
  ///
  /// The grey primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgGrey() => copyWith(style: TextStyle(backgroundColor: Colors.grey));

  /// The color to use as the background for the text.
  ///
  /// The blue-grey primary color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgBlueGrey() =>
      copyWith(style: TextStyle(backgroundColor: Colors.blueGrey));

  /// The color to use as the background for the text.
  ///
  /// The red accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgRedAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.redAccent));

  /// The color to use as the background for the text.
  ///
  /// The pink accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgPinkAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.pinkAccent));

  /// The color to use as the background for the text.
  ///
  /// The purple accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgPurpleAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.purpleAccent));

  /// The color to use as the background for the text.
  ///
  /// The deep purple accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgDeepPurpleAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.deepPurpleAccent));

  /// The color to use as the background for the text.
  ///
  /// The indigo accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgIndigoAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.indigoAccent));

  /// The color to use as the background for the text.
  ///
  /// The blue accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgBlueAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.blueAccent));

  /// The color to use as the background for the text.
  ///
  /// The light blue accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgLightBlueAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.lightBlueAccent));

  /// The color to use as the background for the text.
  ///
  /// The cyan accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgCyanAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.cyanAccent));

  /// The color to use as the background for the text.
  ///
  /// The teal accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgTealAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.tealAccent));

  /// The color to use as the background for the text.
  ///
  /// The green accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgGreenAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.greenAccent));

  /// The color to use as the background for the text.
  ///
  /// The light green accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgLightGreenAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.lightGreenAccent));

  /// The color to use as the background for the text.
  ///
  /// The lime accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgLimeAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.limeAccent));

  /// The color to use as the background for the text.
  ///
  /// The yellow accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgYellowAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.yellowAccent));

  /// The color to use as the background for the text.
  ///
  /// The amber accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgAmberAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.amberAccent));

  /// The color to use as the background for the text.
  ///
  /// The orange accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgOrangeAccent() =>
      copyWith(style: TextStyle(backgroundColor: Colors.orangeAccent));

  /// The color to use as the background for the text.
  ///
  /// The deep orange accent color.
  ///
  /// If [background] is specified, this method should not be called.
  TextSpan bgDeepOrangeAccent() =>
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
  TextSpan setBackgroundColor(Color color) =>
      copyWith(style: TextStyle(backgroundColor: color));

  /// The size of glyphs (in logical pixels) to use when painting the text.
  ///
  /// During painting, the [fontSize] is multiplied by the current
  /// `textScaleFactor` to let users make it easier to read TextSpan by increasing
  /// its size.
  ///
  /// [getParagraphStyle] will default to 14 logical pixels if the font size
  /// isn't specified here.
  TextSpan setFontSize(double fontSize) =>
      copyWith(style: TextStyle(fontSize: fontSize));

  /// The typeface thickness to use when painting the text
  ///
  /// Thin, the least thick - FontWeight.w100
  TextSpan thin() => copyWith(style: GoogleFonts.ubuntu(fontWeight: FontWeight.w100));

  /// The typeface thickness to use when painting the text
  ///
  /// Extra-light - FontWeight.w200
  TextSpan extraLight() => copyWith(style: GoogleFonts.ubuntu(fontWeight: FontWeight.w200));

  /// The typeface thickness to use when painting the text
  ///
  /// Light - FontWeight.w300
  TextSpan light() => copyWith(style: GoogleFonts.ubuntu(fontWeight: FontWeight.w300));

  /// The typeface thickness to use when painting the text
  ///
  /// Medium - FontWeight.w500
  TextSpan medium() => copyWith(style: GoogleFonts.ubuntu(fontWeight: FontWeight.w500));

  /// The typeface thickness to use when painting the text
  ///
  /// Semi-bold - FontWeight.w600
  TextSpan semiBold() => copyWith(style: GoogleFonts.ubuntu(fontWeight: FontWeight.w600));

  /// The typeface thickness to use when painting the text
  ///
  /// Bold - FontWeight.bold - FontWeight.w700
  TextSpan bold() => copyWith(style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold));

  /// The typeface thickness to use when painting the text
  ///
  /// Extra-bold - FontWeight.w800
  TextSpan extraBold() => copyWith(style: GoogleFonts.ubuntu(fontWeight: FontWeight.w800));

  /// The typeface thickness to use when painting the text
  ///
  /// Black, the most thick - FontWeight.w900
  TextSpan boldBlack() => copyWith(style: GoogleFonts.ubuntu(fontWeight: FontWeight.w900));

  /// The typeface thickness to use when painting the text
  TextSpan setFontWeight(FontWeight fontWeight) => copyWith(style: GoogleFonts.ubuntu(fontWeight: fontWeight));

  /// The typeface variant to use when drawing the letters
  ///
  /// Use glyphs designed for slanting
  TextSpan italic() => copyWith(style: TextStyle(fontStyle: FontStyle.italic));

  /// The typeface variant to use when drawing the letters
  ///
  /// Use the upright glyphs
  TextSpan normal() => copyWith(style: TextStyle(fontStyle: FontStyle.normal));

  /// The typeface variant to use when drawing the letters
  TextSpan setFontStyle(FontStyle fontStyle) => copyWith(style: TextStyle(fontStyle: fontStyle));

  /// How the text should be aligned horizontally.
  ///
  /// Align the text in the center of the container.
  TextSpan center() => copyWith(textAlign: TextAlign.center);

  /// The amount of space (in logical pixels) to add between each letter.
  /// A negative value can be used to bring the letters closer.
  TextSpan setLetterSpacing(double letterSpacing) =>
      copyWith(style: TextStyle(letterSpacing: letterSpacing));

  /// The amount of space (in logical pixels) to add at each sequence of
  /// white-space (i.e. between each word). A negative value can be used to
  /// bring the words closer.
  TextSpan setWordSpacing(double wordSpacing) =>
      copyWith(style: TextStyle(wordSpacing: wordSpacing));

  /// The common baseline that should be aligned between this TextSpan span and its
  /// parent TextSpan span, or, for the root TextSpan spans, with the line box.
  ///
  /// The horizontal line used to align the bottom of glyphs for alphabetic characters.
  TextSpan alphabetic() =>
      copyWith(style: TextStyle(textBaseline: TextBaseline.alphabetic));

  /// The common baseline that should be aligned between this TextSpan span and its
  /// parent TextSpan span, or, for the root TextSpan spans, with the line box.
  ///
  /// The horizontal line used to align ideographic characters.
  TextSpan ideographic() =>
      copyWith(style: TextStyle(textBaseline: TextBaseline.ideographic));

  /// The common baseline that should be aligned between this TextSpan span and its
  /// parent TextSpan span, or, for the root TextSpan spans, with the line box.
  TextSpan setTextBaseline(TextBaseline textBaseline) =>
      copyWith(style: TextStyle(textBaseline: textBaseline));

  /// The height of this TextSpan span, as a multiple of the font size.
  ///
  /// When [height] is null or omitted, the line height will be determined
  /// by the font's metrics directly, which may differ from the fontSize.
  /// When [height] is non-null, the line height of the span of TextSpan will be a
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
  /// ![TextSpan height diagram](https://flutter.github.io/assets-for-api-docs/assets/painting/text_height_diagram.png)
  ///
  /// Examples of the resulting line heights from different values of `TextStyle.height`:
  ///
  /// ![TextSpan height comparison diagram](https://flutter.github.io/assets-for-api-docs/assets/painting/text_height_comparison_diagram.png)
  ///
  /// See [StrutStyle] for further control of line height at the paragraph level.
  TextSpan setHeight(double height) => copyWith(style: TextStyle(height: height));

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
  TextSpan setForeground(Paint foreground) =>
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
  TextSpan setBackground(Paint background) =>
      copyWith(style: TextStyle(background: background));

  /// The decorations to paint near the TextSpan (e.g., an underline).
  ///
  /// Draw a line underneath each line of text
  TextSpan underline() =>
      copyWith(style: TextStyle(decoration: TextDecoration.underline));

  /// The decorations to paint near the TextSpan (e.g., an underline).
  ///
  /// Draw a line through each line of text
  TextSpan lineThrough() =>
      copyWith(style: TextStyle(decoration: TextDecoration.lineThrough));

  /// The decorations to paint near the TextSpan (e.g., an underline).
  ///
  /// Draw a line above each line of text
  TextSpan overline() =>
      copyWith(style: TextStyle(decoration: TextDecoration.overline));

  /// The decorations to paint near the TextSpan (e.g., an underline).
  ///
  /// Multiple decorations can be applied using [TextDecoration.combine].
  TextSpan setDecoration(TextDecoration decoration) =>
      copyWith(style: TextStyle(decoration: decoration));

  /// The color in which to paint the TextSpan decorations.
  TextSpan setDecorationColor(Color decorationColor) =>
      copyWith(style: TextStyle(decorationColor: decorationColor));

  /// The style in which to paint the TextSpan decorations (e.g., dashed).
  TextSpan setDecorationStyle(TextDecorationStyle decorationStyle) =>
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
  TextSpan setDecorationThickness(double decorationThickness) =>
      copyWith(style: TextStyle(decorationThickness: decorationThickness));

  /// The name of the font to use when painting the TextSpan (e.g., Roboto). If the
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
  TextSpan setFontFamily(String fontFamily) =>
      copyWith(style: TextStyle(fontFamily: fontFamily));

  /// If non-null, the style to use for this text.
  ///
  /// If the style's "inherit" property is true, the style will be merged with
  /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
  /// replace the closest enclosing [DefaultTextStyle].
  TextSpan setStyle(TextStyle style) => copyWith(style: style);

  /// Creates a copy of this TextSpan but the given fields will be replaced with
  /// the new values.
  TextSpan copyWith(
      {String? text,
        TextStyle? style,
        List<InlineSpan>? children,
        String? semanticsLabel,
        TextAlign? textAlign}) {
    return TextSpan(text: this.text,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        children: this.children,
        style: style != null ? this.style?.merge(style) ?? style : this.style);
  }
}