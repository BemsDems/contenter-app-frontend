import 'package:flutter/material.dart';

import 'colors.dart' as colors;
import 'fonts.dart' as fonts;

class PrimaryButton extends StatelessWidget {
  static final ButtonStyle _defStyle = ElevatedButton.styleFrom(
    foregroundColor: colors.light,
    backgroundColor: colors.blue,
    minimumSize: const Size(52, 52),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
  final void Function() onPressed;
  final Widget child;
  final ButtonStyle? style;

  PrimaryButton({super.key, required this.onPressed, ButtonStyle? style, required this.child}): style = style?.merge(_defStyle) ?? _defStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: onPressed,
      child: child,
    );
  }
}

class SecondaryButton extends StatelessWidget {
  static final ButtonStyle _defStyle = ElevatedButton.styleFrom(
    foregroundColor: colors.blue,
    backgroundColor: colors.gray04,
    textStyle: fonts.labelMedium,
    minimumSize: const Size(52, 52),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
  final void Function() onPressed;
  final Widget child;
  final ButtonStyle style;

  SecondaryButton({super.key, required this.onPressed, ButtonStyle? style, required this.child}): style = style?.merge(_defStyle) ?? _defStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: onPressed,
      child: child,
    );
  }
}

class RejectButton extends StatelessWidget {
  static final ButtonStyle _defStyle = TextButton.styleFrom(
    foregroundColor: colors.negative,
  );
  final void Function() onPressed;
  final Widget child;
  final ButtonStyle? style;

  RejectButton({super.key, required this.onPressed, ButtonStyle? style, required this.child}): style = style?.merge(_defStyle) ?? _defStyle;

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
      style: style,
      onPressed: onPressed,
      child: child,
    );
  }
}

final primary = ElevatedButton.styleFrom(
  foregroundColor: colors.light,
  backgroundColor: colors.blue,
  minimumSize: const Size(52, 52),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);

final secondary = ElevatedButton.styleFrom(
  foregroundColor: colors.blue,
  backgroundColor: colors.gray04,
  textStyle: fonts.labelMedium,
  minimumSize: const Size(52, 52),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
  ),
);

final onGray = secondary;

final onLight = ElevatedButton.styleFrom(
  foregroundColor: colors.blue,
  backgroundColor: colors.gray03,
  textStyle: fonts.labelMedium,
  minimumSize: const Size(52, 52),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);

final reject = ElevatedButton.styleFrom(
    foregroundColor: colors.negative
).merge(secondary);

final outlinedPrimary = OutlinedButton.styleFrom(
  foregroundColor: colors.light,
  minimumSize: const Size(52, 52),
  side: BorderSide(color: colors.blue, width: 2),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);

final text = TextButton.styleFrom(
  foregroundColor: colors.black,
  backgroundColor: null,
);