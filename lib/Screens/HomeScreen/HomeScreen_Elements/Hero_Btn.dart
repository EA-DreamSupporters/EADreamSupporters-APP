import 'package:flutter/material.dart';

class HeroBtn extends StatelessWidget {
  const HeroBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 15.0),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: (() => {}),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 234, 165, 81),
                ),
              ),
              child: Text('Buy Now'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    BorderSide(
                        color: Color.fromARGB(255, 26, 22, 104), width: 1.5),
                  ),
                ),
                onPressed: () => {},
                child: Text(
                  "Enquire Now",
                  style: TextStyle(color: Color.fromARGB(255, 26, 22, 104)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
