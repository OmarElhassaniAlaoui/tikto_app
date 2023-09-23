import 'package:flutter/material.dart';


class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
    required this.usernameController,
    required this.onSaved,
  });
  final TextEditingController usernameController;
  final Function onSaved;  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Form(
        key: key,
        child: TextFormField(
          controller: usernameController,
          onSaved: onSaved as void Function(String?)?,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Username cannot be empty';
            } else if (!value.startsWith('@')) {
              return 'Username must start with @';
            }
            return null;
          },
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            labelText: '@Username',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
