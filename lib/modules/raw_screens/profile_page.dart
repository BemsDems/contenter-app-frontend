import 'package:contenter/data_structs/profile.dart';
import 'package:contenter/style/buttons.dart' as style_buttons;
import 'package:contenter/style/colors.dart' as style_colors;
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final profile = ProfileData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Profile', style: TextStyle(color: style_colors.black, fontSize: 25)),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close_rounded, size: 30))
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: CircleAvatar(
                      backgroundColor: style_colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          style_buttons.SecondaryButton(
                            style: style_buttons.secondary.copyWith(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 10))),
                            onPressed: () {},
                            child: const Text(
                              'Change photo',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          style_buttons.SecondaryButton(
                            style: style_buttons.secondary,
                            child: Icon(Icons.delete_outline, color: Colors.red),
                            onPressed: () {},
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'PNG, JPG up to 4 MB',
                        style: TextStyle(fontSize: 12, color: style_colors.gray01),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name *',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: style_colors.gray04, borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                      ),
                      initialValue: profile.firstname,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  style_buttons.RejectButton(
                    onPressed: () {},
                    style: style_buttons.reject.copyWith(fixedSize: MaterialStateProperty.all(Size(175, 50))),
                    child: Text(
                      'Logout',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(width: 10),
                  style_buttons.PrimaryButton(
                    onPressed: () {},
                    style: style_buttons.primary.copyWith(fixedSize: MaterialStateProperty.all(Size(175, 50))),
                    child: Text(
                      'Update',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
