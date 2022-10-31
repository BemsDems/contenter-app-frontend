import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:contenter/config/size_config.dart';
import 'package:contenter/widgets/card_for_my_proposals.dart';
import 'package:contenter/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart' as colors;

class MyProposalsWidget extends StatefulWidget {
  const MyProposalsWidget({super.key});

  @override
  State<StatefulWidget> createState() => _MyProposalsWidgetState();
}

class _MyProposalsWidgetState extends State<MyProposalsWidget> with SingleTickerProviderStateMixin {
  final List businesses = [
    {'name': 'EarlyBird', 'type': 'Coffeeshop', 'linkImage': 'assets/images/erlyBird.png', 'count': 5},
    {'name': 'Pielands Restaurant', 'type': 'Coffeeshop', 'linkImage': 'assets/images/pielands.png', 'count': 15},
    {'name': 'Duck Coffee', 'type': 'Coffeeshop', 'linkImage': 'assets/images/duck.png', 'count': 25},
  ];

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: _tabController,
            indicatorColor: colors.blue,
            labelColor: colors.blue,
            labelPadding: EdgeInsets.zero,
            unselectedLabelColor: colors.gray02,
            indicator: ContainerTabIndicator(
                height: SizeConfig().getHeight(42),
                radius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                color: const Color.fromRGBO(60, 4, 228, 0.1)),
            onTap: (index) {
              setState(() {});
            },
            tabs: [
              CustomTab(tabController: _tabController, indexForChange: 0, nameTab: 'Listed', countOffers: 6),
              CustomTab(tabController: _tabController, indexForChange: 1, nameTab: 'Raid', countOffers: 3),
              CustomTab(tabController: _tabController, indexForChange: 2, nameTab: 'Rejected'),
            ]),
        SizedBox(height: 10),
        SizedBox(
          height: SizeConfig().getHeight(500),
          child: TabBarView(
            controller: _tabController,
            children: [
              CardForMyProposals(businesses: businesses),
              CardForMyProposals(businesses: businesses),
              SizedBox(),
            ],
          ),
        )
      ],
    );
  }
}
