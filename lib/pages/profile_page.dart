import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraryplus/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 40),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 75,
                    height: 75,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/ic_profile.png'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Hello, Avid',
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  width: 330,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person_add_alt_1_rounded,
                        size: 26,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        'Add Account',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 330,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 26,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        'Settings',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 330,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.key_rounded,
                        size: 26,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        'Change Password',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 330,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.privacy_tip_rounded,
                        size: 26,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        'Privacy Policy',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: ElevatedButton(
              onPressed: (){
                SystemNavigator.pop();
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Row( 
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                    ),
                  )
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () async {
              final Uri url = Uri.parse('https://rc.amikom.ac.id');
              if (await canLaunchUrl(url)) {
                await launchUrl(
                  url,
                  mode: LaunchMode.externalApplication,
                );
              }
              else {
                throw 'Cannot launch $url';
              }
            },
            child: SizedBox(
              height: 40,
              width: 350,
              child: Row(
                children: [
                  Icon(
                    Icons.web_rounded,
                    size: 26,
                  ),
                  SizedBox(width: 8,),
                  Text(
                    'Visit Out Website',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
          
          
          
        ],
      ),
    );
  }


}