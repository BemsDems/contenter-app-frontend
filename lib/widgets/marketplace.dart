import 'package:contenter/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/colors.dart' as colors;
import '../style/fonts.dart' as font_styles;
import 'long_widget.dart';

enum _ViewType {
  map,
  list,
}

class _MarketplaceListViewItemWidget extends StatelessWidget {
  final Map<String, dynamic> business;

  const _MarketplaceListViewItemWidget({super.key, required this.business});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.gray04,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          SizedBox(
            width: SizeConfig().getWidth(40),
            height: SizeConfig().getWidth(40),
            child: CircleAvatar(
              backgroundImage: AssetImage(business['linkImage']),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${business['name']}',
                  style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  maxLines: 2,
                ),
                const SizedBox(height: 5),
                Text('${business['type']}',
                    style: GoogleFonts.openSans(textStyle: const TextStyle(color: colors.dark, fontSize: 14, fontWeight: FontWeight.w600))),
              ],
            ),
          ),
          SizedBox(width: SizeConfig().getWidth(20)),
          Container(
            height: SizeConfig().getHeight(40),
            constraints: BoxConstraints(minWidth: SizeConfig().getWidth(40)),
            decoration: BoxDecoration(
              color: colors.light,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('${business['count']}', style: GoogleFonts.openSans(textStyle: const TextStyle(color: colors.blue, fontSize: 14))),
                Image.asset('assets/icons/propertyCaretRight.png', color: colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MarketplaceListViewWidget extends StatelessWidget {
  final List businesses = [
    {'name': 'EarlyBird', 'type': 'Coffeeshop', 'linkImage': 'assets/images/erlyBird.png', 'count': 5},
    {
      'name': 'Pielands Restaurant very long very long very long very long very long very long very long very long very long very long very long very long',
      'type': 'Coffeeshop',
      'linkImage': 'assets/images/pielands.png',
      'count': 15
    },
    {'name': 'Duck Coffee', 'type': 'Coffeeshop', 'linkImage': 'assets/images/duck.png', 'count': 25},
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];

    for (var business in businesses) {
      list.add(_MarketplaceListViewItemWidget(business: business));
      list.add(const SizedBox(height: 20));
    }

    return Column(
      children: list,
    );
  }
}

class MarketplaceWidget extends StatefulWidget {
  const MarketplaceWidget({super.key});

  @override
  State<StatefulWidget> createState() => _MarketplaceWidgetState();
}

class _MarketplaceWidgetState extends State<MarketplaceWidget> {
  _ViewType viewType = _ViewType.list;

  void changeViewType(_ViewType viewType) {
    setState(() {
      this.viewType = viewType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Builder(builder: (_) {
                if (viewType == _ViewType.map) {
                  return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.map_outlined),
                          const SizedBox(width: 10),
                          Text('Map', style: font_styles.proposalsViewSettingsActive),
                        ],
                      ));
                } else {
                  return OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        changeViewType(_ViewType.map);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.map_outlined,
                            color: colors.blue,
                          ),
                          const SizedBox(width: 10),
                          Text('Map', style: font_styles.proposalsViewSettingsInactive),
                        ],
                      ));
                }
              }),
            ),
            Expanded(
              child: Builder(builder: (_) {
                if (viewType == _ViewType.list) {
                  return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImageIcon(AssetImage('assets/icons/propertyList.png')),
                          const SizedBox(width: 10),
                          Text('List', style: font_styles.proposalsViewSettingsActive),
                        ],
                      ));
                } else {
                  return OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        changeViewType(_ViewType.list);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImageIcon(AssetImage('assets/icons/propertyList.png'), color: colors.blue),
                          const SizedBox(width: 10),
                          Text('List', style: font_styles.proposalsViewSettingsInactive),
                        ],
                      ));
                }
              }),
            ),
            const SizedBox(width: 10),
            ElevatedButton(onPressed: () {}, child: const ImageIcon(AssetImage('assets/icons/propertyFadersHorizontal.png')))
          ],
        ),
        const SizedBox(height: 30),
        Builder(builder: (_) {
          if (viewType == _ViewType.map) {
            return const LongWidget();
          } else if (viewType == _ViewType.list) {
            return _MarketplaceListViewWidget();
          } else {
            throw Exception('Wrong tab index');
          }
        }),
      ],
    );
  }
}
