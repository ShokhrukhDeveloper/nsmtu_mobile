import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Data/Entities/Depature.dart';

class DepartureLeaderInfoWidget extends StatelessWidget {
  const DepartureLeaderInfoWidget({Key? key, required this.departure}) : super(key: key);
  final Depature? departure;
  static const size = 32.0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
            padding: const EdgeInsets.only(right: 0, left: 10),
            child:  Text(
              departure?.nameUz??"",
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(
                  fontSize: 36, fontWeight: FontWeight.w400),
            )),

        const Divider(
          color: Colors.black,
        ),
        SizedBox(
          width: double.infinity,
          child: Center(
            child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Image.network(departure?.mudirPhoto??"")),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inf(
                  const Icon(
                    Icons.person,
                    size: size,
                  ),
                  departure?.mudirName??""),
              inf(
                  const Icon(
                    Icons.call,
                    size: size,
                  ),
                  departure?.mudirTelephone??""),
              inf(const Icon(Icons.email, size: size),
                  departure?.mudirEmail??""),
              inf(const Icon(Icons.history_edu_sharp, size: size),
                  departure?.mudirLavozimUz??""),
              inf(const Icon(Icons.location_on_rounded, size: size),
                  departure?.mudirLocation??""),
              inf(const Icon(Icons.science, size: size), departure?.mudirDarajaUz??""),
            ],
          ),
        )
      ],
    );
  }

  Widget inf(Widget ic, String text) {
    return Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ic,
          Flexible(
              child: Container(
                  padding: const EdgeInsets.only(right: 0, left: 10),
                  child: Text(
                    text,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w400),
                  )))
        ],
      ),
    );
  }
}
