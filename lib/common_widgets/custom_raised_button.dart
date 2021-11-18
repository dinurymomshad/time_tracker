import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? borderRadius;
  final double? height;
  final VoidCallback? onPressed;

  const CustomRaisedButton({
    Key? key,
    this.child,
    this.color,
    this.borderRadius = 2.0,
    this.height = 50.0,
    this.onPressed,
  })  : assert(borderRadius != null),
        assert(height != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius!),
              ),
            )),
        onPressed: onPressed,
      ),
    );
  }
}
