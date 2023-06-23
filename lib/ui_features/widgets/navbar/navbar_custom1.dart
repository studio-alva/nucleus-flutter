import 'package:flutter/material.dart';

class NavBarCustom1 extends StatelessWidget {
  const NavBarCustom1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [1, 2, 3, 4]
            .map(
              (e) => Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
