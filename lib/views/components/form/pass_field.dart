import 'package:deliverer/views/components/form/text_field.dart';
import 'package:flutter/material.dart';

class DPassField extends StatefulWidget {
  final String hint;
  final bool? isLast;
  final IconData? prefix;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const DPassField({
    Key? key,
    required this.hint,
    this.isLast = false,
    this.onChanged,
    this.onSubmitted,
    this.prefix,
  }) : super(key: key);

  @override
  State<DPassField> createState() => _DPassFieldState();
}

class _DPassFieldState extends State<DPassField> {
  bool see = false;

  @override
  Widget build(BuildContext context) {
    return DTextField(
      hint: widget.hint,
      obscureText: !see,
      prefix: widget.prefix ?? Icons.key,
      suffix: IconButton(
        onPressed: () {
          setState(() {
            see = !see;
          });
        },
        icon: Icon(
          see ? Icons.visibility : Icons.visibility_off,
          color: Colors.white,
        ),
      ),
    );
  }
}
