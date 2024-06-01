import 'package:flutter/material.dart';

class FacebookDividerWidget extends StatelessWidget {
  const FacebookDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.grey.withOpacity(1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Text(
              "or",
              style: TextStyle(color: Colors.black45),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
        ],
      ),
    );
  }
}