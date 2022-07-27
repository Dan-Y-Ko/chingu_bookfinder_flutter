import 'package:flutter/material.dart';

class ConfirmPasswordInput extends StatefulWidget {
  const ConfirmPasswordInput({Key? key}) : super(key: key);

  @override
  State<ConfirmPasswordInput> createState() => _ConfirmPasswordInputState();
}

class _ConfirmPasswordInputState extends State<ConfirmPasswordInput> {
  final TextEditingController searchInputController = TextEditingController();

  @override
  void dispose() {
    searchInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchInputController,
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
        hintText: 'Search',
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
