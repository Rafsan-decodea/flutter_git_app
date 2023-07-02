import 'package:flutter/material.dart';
import 'package:pmp/db/id_card.dart';
import 'package:pmp/pmp/app.dart';

class IDCardButtonListView extends StatelessWidget {
  final List<IDCard> idCards;
  final bool shouldSort;
  final void Function(IDCard idCard)? onPressed;

  const IDCardButtonListView({
    Key? key,
    required this.idCards,
    this.shouldSort = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (shouldSort) Sort.sortIDCards(idCards);
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [
        for (IDCard idCard in idCards)
          PmpPadding(IDCardButton(
            idCard: idCard,
            onPressed: () => onPressed?.call(idCard),
          )),
      ],
    );
  }
}
