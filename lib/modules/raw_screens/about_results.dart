import 'package:contenter/style/buttons.dart' as style_buttons;
import 'package:contenter/style/colors.dart' as style_colors;
import 'package:contenter/widgets/base_page.dart';
import 'package:flutter/material.dart';

class AboutResults extends StatelessWidget {
  const AboutResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: style_colors.gray03,
        body: SafeArea(
          child: BasePageWidget(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                      ),
                    ),
                    Text(
                      'back to results',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 450,
                  decoration: BoxDecoration(color: style_colors.gray04, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: CircleAvatar(
                              backgroundColor: style_colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'EarlyBird',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Coffeeshop',
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 20),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 28,
                              ),
                              Text(
                                'Dubai, Abu-Dabi',
                                style: TextStyle(fontSize: 18, decoration: TextDecoration.underline, decorationColor: style_colors.gray01),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.tag_rounded,
                                size: 28,
                              ),
                              Text(
                                'Brandbook',
                                style: TextStyle(fontSize: 18, decoration: TextDecoration.underline, decorationColor: style_colors.gray01),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                          'A two-storey structure with cosy minimalist interiors and a pet-friendly terrace, LDC EarlyBird takes up a prime spot at Jumeirah Lakes Towers. The cafe-meets-bistro is a welcome addition for breakfast enthusiasts, coffee lovers and ice cream aficionados, with a menu packed with fresh selections. You’ll find everything from nutritious and naughty breakfast items to pizza, pasta, sandwiches, desserts and more. Pair these with an array of beverages, from iced or hot brews to detox juices.',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 15))
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 460,
                    child: TabBar(indicatorColor: style_colors.blue, labelColor: style_colors.blue, onTap: (index) {}, tabs: [
                      Tab(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('All', style: TextStyle(color: style_colors.blue)),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.center,
                            width: 20,
                            height: 30,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: style_colors.gray04),
                            child: Text('6'),
                          ),
                        ],
                      )),
                      Tab(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.videocam_outlined,
                            size: 23,
                          ),
                          SizedBox(width: 5),
                          Text('Video',
                              style: TextStyle(
                                color: style_colors.blue,
                              )),
                        ],
                      )),
                      Tab(
                          child: Row(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 23,
                          ),
                          SizedBox(width: 5),
                          Text('Photo', style: TextStyle(color: style_colors.blue)),
                        ],
                      )),
                      Tab(
                        child: Row(
                          children: [
                            Icon(
                              Icons.videocam_outlined,
                              size: 23,
                            ),
                            SizedBox(width: 5),
                            Text('Unclear', style: TextStyle(color: style_colors.blue)),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                    height: 225,
                    child: TabBarView(children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(20),
                        height: 150,
                        decoration: BoxDecoration(color: style_colors.gray04, borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.videocam_outlined,
                                      size: 30,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Story Video',
                                      style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Text(
                                  '\$20',
                                  style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 18),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Text('To make a video of backstage of making a coffee.', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18)),
                            SizedBox(height: 20),
                            LayoutBuilder(
                              builder: (context, c) => style_buttons.PrimaryButton(
                                onPressed: () {},
                                child: Text(
                                  'Take a part',
                                  style: TextStyle(fontSize: 15),
                                ),
                                style: style_buttons.primary.copyWith(fixedSize: MaterialStateProperty.all(Size(c.maxWidth, 50))),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(),
                      SizedBox(),
                      SizedBox()
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> alertBalance(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: style_colors.gray03,
            // titlePadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Balance', style: TextStyle(fontSize: 25)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close_rounded, size: 30))
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            actions: [
              Column(
                children: [
                  style_buttons.SecondaryButton(
                    child: Text('Read the Agreement', style: TextStyle(fontSize: 15)),
                    style: style_buttons.secondary.copyWith(fixedSize: MaterialStateProperty.all(Size(300, 50))),
                    onPressed: () {},
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      style_buttons.SecondaryButton(
                        child: Text('Cancel', style: TextStyle(fontSize: 15)),
                        style: style_buttons.secondary.copyWith(fixedSize: MaterialStateProperty.all(Size(150, 50))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      SizedBox(width: 10),
                      style_buttons.PrimaryButton(
                        child: Text('Ok', style: TextStyle(fontSize: 15)),
                        style: style_buttons.primary.copyWith(fixedSize: MaterialStateProperty.all(Size(150, 50))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  )
                ],
              ),
            ],
            content: Text(
              'Oopsie :)\n This is a dummy balance; please refer to your agreement to receive a cash voucher',
              textAlign: TextAlign.center,
            ),
            contentTextStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          );
        });
  }

