import 'package:flutter/material.dart';
import 'package:todo/style/color_styles.dart';

class CustomCheckbox extends StatefulWidget {
  bool isChecked;
  Function onChanged;

  CustomCheckbox({super.key, required this.isChecked, required this.onChanged});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.all(ColorStyle.veryPeri),
      value: widget.isChecked,
      onChanged: (bool? value) => {
        setState(() {
          widget.onChanged();
        })
      },
    );
  }
}
