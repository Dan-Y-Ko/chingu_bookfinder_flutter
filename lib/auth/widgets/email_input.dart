import 'package:flutter/material.dart';

class EmailInput extends StatefulWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  final TextEditingController emailInputController = TextEditingController();

  @override
  void dispose() {
    emailInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailInputController,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.all(17),
          child: Icon(Icons.search),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Email',
        hintStyle: TextStyle(
          color: Color.fromRGBO(87, 94, 131, 0.5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide.none,
        ),
      ),
      textInputAction: TextInputAction.done,
      onSubmitted: (_) {},
    );
  }
}
