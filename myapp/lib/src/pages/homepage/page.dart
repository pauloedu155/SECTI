import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageHomePage extends StatefulWidget {
  const PageHomePage({
    Key? key,
    this.param1 = '0',
  }) : super(key: key);

  final String param1;

  @override
  _State createState() => _State();
}

class _State extends State<PageHomePage> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xFFFFFFFF), Color(0xFF000000)],
                stops: [0, 1],
              ),
            ),
            child: Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color(0xFF292929),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    '''https://i.imgur.com/uzrIK0O.png''',
                    width: 370,
                    height: 120,
                    fit: BoxFit.fill,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: Image.network(
                        '''https://i.imgur.com/QiciGoe.png''',
                        width: double.maxFinite,
                        height: 170,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                      ),
                      child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageChamado(),
                              ),
                            );
                          },
                          child: Container(
                              width: 300,
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color(0xFF67C375),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                '''Chamado para suporte''',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagesectisite(),
                              ),
                            );
                          },
                          child: Container(
                              width: 300,
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color(0xFF38B182),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                '''Site SECTI''',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageEmpty1(),
                              ),
                            );
                          },
                          child: Container(
                              width: 300,
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color(0xFF089E8E),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                '''Webmail''',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 100,
                      ),
                      child: Image.network(
                        '''https://i.imgur.com/xZSFyDq.png''',
                        width: 150,
                        height: 70,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Center(
                    child: Text('''© 2021 SECTI''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 1),
                  ),
                  Center(
                    child: Image.network(
                      '''https://i.imgur.com/jf1fa27.png''',
                      width: 400,
                      height: 125,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
