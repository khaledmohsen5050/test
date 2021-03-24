import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduationp/providers/languageprovider.dart';
import 'package:page_transition/page_transition.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Porfile extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection:
            (Provider.of<Languageprovider>(context, listen: false).isEn)
                ? TextDirection.ltr
                : TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(3),
                      child: CircleAvatar(
                        radius: 50,
                        /*
                        backgroundImage: NetworkImage(
                            Provider.of<UserProvider>(context)
                                .userinfo
                                .data
                                .avatar),
                                */
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      child: Text(
                        'khaled',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      child: Text(
                        'has@gmail.com',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Color.fromRGBO(180, 172, 172, 1)),
                      ),
                    ),
                    Divider(
                      height: 22,
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      title:
                          (Provider.of<Languageprovider>(context, listen: false)
                                  .isEn)
                              ? Text(
                                  'Edit Information',
                                  style: GoogleFonts.roboto(),
                                )
                              : Text(
                                  'تعديل البيانات الشخصية',
                                  style: GoogleFonts.roboto(),
                                ),
                      leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          )),
                      onTap: () {
                        /*
                        Navigator.push(
                          context,
                          PageTransition(
                            duration: Duration(milliseconds: 600),
                            type: PageTransitionType.rightToLeftWithFade,
                            child: Editprofile(),
                          ),
                        );
                        */
                      },
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      title:
                          (Provider.of<Languageprovider>(context, listen: false)
                                  .isEn)
                              ? Text(
                                  'Settings',
                                  style: GoogleFonts.roboto(),
                                )
                              : Text(
                                  'الاعدادات',
                                  style: GoogleFonts.roboto(),
                                ),
                      leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                          )),
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      title:
                          (Provider.of<Languageprovider>(context, listen: false)
                                  .isEn)
                              ? Text(
                                  'Terms and services',
                                  style: GoogleFonts.roboto(),
                                )
                              : Text(
                                  'الشروط والاحكام',
                                  style: GoogleFonts.roboto(),
                                ),
                      leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          )),
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      title: Text(
                        'Fcabook',
                        style: GoogleFonts.roboto(),
                      ),
                      leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )),
                      onTap: () {
                        _launchURL('https://www.facebook.com/Royaltechni/');
                      },
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      title: Text(
                        'Instagram',
                        style: GoogleFonts.roboto(),
                      ),
                      leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      onTap: () {
                        _launchURL(
                            'https://instagram.com/royal_techni?igshid=78i7vouzufgs');
                      },
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(
                            FontAwesomeIcons.language,
                            color: Colors.white,
                          )),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('العربية'),
                          Switch(
                            value: Provider.of<Languageprovider>(context,
                                    listen: true)
                                .isEn,
                            onChanged: (value) {
                              Provider.of<Languageprovider>(context,
                                      listen: false)
                                  .changeLan(value);
                              //       Navigator.of(context).pop();
                            },
                            activeColor: Theme.of(context).primaryColor,
                          ),
                          Text('English'),
                        ],
                      ),
                    ),
                    ListTile(
                        title: (Provider.of<Languageprovider>(context,
                                    listen: false)
                                .isEn)
                            ? Text(
                                'Logout',
                                style: GoogleFonts.roboto(),
                              )
                            : Text(
                                'تسجيل خروج',
                                style: GoogleFonts.roboto(),
                              ),
                        leading: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Icon(
                              Icons.logout,
                              color: Colors.white,
                            )),
                        onTap: () {
                          /*
                        Provider.of<UserProvider>(context, listen: false)
                            .clearuserdata();
                        Navigator.of(context).pushReplacementNamed(Login.route);
                      },
                      */
                        }),
                    Divider(
                      height: 2,
                    ),
                    Divider(
                      height: 2,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
