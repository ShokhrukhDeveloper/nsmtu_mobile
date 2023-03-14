import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DepartureTapbar extends StatefulWidget {

    const DepartureTapbar({Key? key}) : super(key: key);

  @override
  State<DepartureTapbar> createState() => _TapbarState();
}

class _TapbarState extends State<DepartureTapbar> with SingleTickerProviderStateMixin  {
  late  TabController controller;
  @override
  void initState(){
    controller=TabController(length: 5, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        children: <Widget>[
          Container(
            color: Colors.black26,
            child: const TabBar(
                indicatorColor: Colors.lime,
                dividerColor: Colors.blue,
                physics: BouncingScrollPhysics(),
                unselectedLabelStyle:TextStyle(color: Colors.black),
                labelColor: Colors.black,
                tabs: [
                  Tab(text: "Home",),
                  Tab(text: "Articles"),
                  Tab(text: "User"),
                  Tab(text: "Server"),
                  Tab(text: "ServerSide"),
                ]
            ),
          ),

          LimitedBox(
            maxHeight: 600,
            child: TabBarView(

                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Html(data: "sdfsdfsdgfsdfgsdfgsdfgsdfg"),
                  Html(data: "fgfjhdfgjrtkryoryuopri;ipriujl;ruk;tuk;tr"),
                  Html(data: "lgh"),
                  Html(data: "sdfhtipoipopopopop;tuk;tuk;rukgfsdfgsdfgsdfgsdfg"),
                  Html(data: "opopopopopopopo"),
                ]),
          ),
        ],
      ),
    );
  }
  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        children: <Widget>[
          Container(
            color: Colors.black26,
            child: const TabBar(
                indicatorColor: Colors.lime,
                dividerColor: Colors.blue,
                physics: BouncingScrollPhysics(),
                unselectedLabelStyle:TextStyle(color: Colors.black),
                labelColor: Colors.black,
                tabs: [
              Tab(text: "Home",),
              Tab(text: "Articles"),
              Tab(text: "User"),
              Tab(text: "Server"),
              Tab(text: "ServerSide"),
            ]
            ),
          ),
          
          LimitedBox(

            maxHeight: 600,
            child: TabBarView(

              physics: const NeverScrollableScrollPhysics(),
                children: [
                  Html(data: "sdfsdfsdgfsdfgsdfgsdfgsdfg"),
                  Html(data: "fgfjhdfgjrtkryoryuopri;ipriujl;ruk;tuk;tr"),
                  Html(data: "lgh"),
                  Html(data: "sdfhtipoipopopopop;tuk;tuk;rukgfsdfgsdfgsdfgsdfg"),
                  Html(data: "opopopopopopopo"),
            ]),
          ),
        ],
      ),
    );
  }
}
