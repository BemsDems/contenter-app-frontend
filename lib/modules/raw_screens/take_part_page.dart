import 'package:contenter/style/buttons.dart' as style_buttons;
import 'package:contenter/style/colors.dart' as style_colors;
import 'package:contenter/widgets/base_page.dart';
import 'package:flutter/material.dart';

class TakePartPage extends StatelessWidget {
  const TakePartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: style_colors.gray03,
      body: SafeArea(
        child: BasePageWidget(
          child: LayoutBuilder(
            builder: (context, constraints) => Column(
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
                      'back to business',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 125,
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
                            '\$30',
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Text('To make a video of backstage of making a coffee.', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Reply to request'),
                  ),
                ),
                style_buttons.SecondaryButton(
                  onPressed: () {},
                  style: style_buttons.secondary.copyWith(fixedSize: MaterialStateProperty.all(Size(constraints.maxWidth, 50))),
                  child: Text(
                    'Upload file',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Max size – 65 MB, Duration – 15 sec',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 12, color: style_colors.gray01),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 16),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 150,
                      decoration: BoxDecoration(color: style_colors.gray04, borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        maxLines: 5,
                        maxLength: 300,
                        decoration: InputDecoration(border: InputBorder.none, hintText: 'Enter text'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                style_buttons.PrimaryButton(
                  onPressed: () {},
                  style: style_buttons.primary.copyWith(fixedSize: MaterialStateProperty.all(Size(constraints.maxWidth, 50))),
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
