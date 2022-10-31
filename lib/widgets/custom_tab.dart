import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../style/colors.dart' as colors;

class CustomTab extends StatelessWidget {
  CustomTab({Key? key, required this.tabController, required this.indexForChange, required this.nameTab, this.countOffers}) : super(key: key);

  final TabController tabController;
  int indexForChange;
  String nameTab;
  int? countOffers;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nameTab,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              if (countOffers != null) SizedBox(width: 10),
              if (countOffers != null)
                AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: tabController.index == indexForChange ? colors.gray04 : colors.gray02,
                  ),
                  child: Text(
                    countOffers.toString(),
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: tabController.index == indexForChange ? colors.blue : colors.dark, fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                )
            ],
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: EdgeInsets.symmetric(horizontal: tabController.index == indexForChange ? 0 : 10),
          height: 2,
          color: tabController.index == indexForChange ? colors.blue : colors.gray02,
        ),
      ],
    );
  }
}