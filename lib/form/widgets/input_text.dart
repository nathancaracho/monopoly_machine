import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final FocusNode nodeFocus;
  final FocusNode nextNodeFocus;
  final controller;
  const InputText(
      {Key key,
      this.label,
      this.nodeFocus,
      this.nextNodeFocus,
      this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) => TextFormField(
        focusNode: this.nodeFocus,
        controller: this.controller,
        validator: (value) {
          if (value.isEmpty) return 'This field can\'t be null;';
          return null;
        },
        textInputAction:
            nextNodeFocus != null ? TextInputAction.next : TextInputAction.done,
        decoration: InputDecoration(
          labelText: this.label,
          focusColor: Colors.grey,
        ),
        onEditingComplete: () {
          this.nodeFocus.unfocus();
          if (this.nextNodeFocus != null) this.nextNodeFocus.requestFocus();
        },
      );
}
