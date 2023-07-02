import 'package:flutter/material.dart';
import 'package:pmp/db/password.dart';
import 'package:pmp/pmp/app.dart';

class PasswordButtonListView extends StatelessWidget {
  final List<Password> passwords;
  final bool shouldSort;
  final void Function(Password password)? onPressed;

  const PasswordButtonListView({
    Key? key,
    required this.passwords,
    this.shouldSort = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (shouldSort) Sort.sortPasswords(passwords);
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [
        for (Password password in passwords)
          PmpPadding(PasswordButton(
            password: password,
            onPressed: () => onPressed?.call(password),
          )),
      ],
    );
  }
}
