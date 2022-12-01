import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({super.key, this.str});
  final str;
  final bool value = true;

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(widget.str),
          Switch(
              value: widget.value,
              onChanged: (value) {
                setState(() {
                  value = !widget.value;
                });
              })
        ],
      ),
    );
  }
}
