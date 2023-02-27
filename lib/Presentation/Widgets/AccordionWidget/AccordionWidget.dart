import 'package:accordion/accordion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccordionWidget extends StatelessWidget {
  const AccordionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.white54,
            blurRadius: 0.5,
            offset: Offset(0.3, 0.3),
            spreadRadius: 0.3
          )
        ]
      ),
      child: Accordion(
        paddingBetweenOpenSections: 0,
          paddingListBottom: 0,
          paddingListHorizontal: 0,
          paddingListTop: 0,
          paddingBetweenClosedSections:0,
          children: List.generate(6, (index) =>
              AccordionSection(
                contentBorderRadius: 0,
                contentBorderWidth: 0,
                headerBorderRadius: 0,
                headerBackgroundColorOpened: Colors.black12,
                headerPadding: EdgeInsets.zero,
                paddingBetweenClosedSections: 0,
                headerBackgroundColor: Colors.white,
          header: Container(
            height: 40,
            padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black26),
                  left: BorderSide(color: Colors.black26),
                  right: BorderSide(color: Colors.black26),

                )
              ),
              child: const Text("Blag")),

          content: Column(
            children: [
              Text("sALOMLAE"),
              Text("sALOMLAE"),
              Text("sALOMLAE"),
              Text("sALOMLAE"),
              Text("sALOMLAE"),
              Text("sALOMLAE"),
            ],
          ))),
      ),
    );
  }
}
