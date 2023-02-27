import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBarWidget extends StatelessWidget {
  MenuBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(

      children: List.generate(
          5,
          (index) => Container(
            margin: const EdgeInsets.all(5),
              width: 100,
              height: 20,
              color: Theme.of(context).primaryColor,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon:  const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white),
                  isExpanded: true,
                  hint: Text(
                    "Menyu Item $index",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "ss",
                      child: Text(
                        "one",
                      ),
                    ),
                    DropdownMenuItem(
                      value: "Blinchik",
                      child: Text("two"),
                    ),
                  ],
                  onChanged: (Object? value) {},
                ),
              ))),
    );
  }
}

