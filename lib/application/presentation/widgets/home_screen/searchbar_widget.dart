import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: const CupertinoSearchTextField(
                padding: EdgeInsets.all(15),
              ),
            ),
          ),
        ),
        Image.asset(
          'assets/images/icons/filtter.png',
          height: MediaQuery.of(context).size.height * 0.06,
        ),
      ],
    );
  }
}