import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageChamado extends StatefulWidget {
  const PageChamado({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageChamado> {
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
          Container(
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
                  width: 400,
                  height: 150,
                  fit: BoxFit.fill,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text('''TUTORIAL PARA FAZER CHAMADO''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 2),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: YoutubePlayerIFrame(
                      controller: YoutubePlayerController(
                        initialVideoId: '''3tjlHOrq6kA''',
                        params: YoutubePlayerParams(
                          startAt: Duration(seconds: 0),
                          showControls: true,
                          showFullscreenButton: true,
                          loop: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: GestureDetector(
                        onTap: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pagechamado2(),
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
                              '''Fazer Chamado''',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
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
                      top: 120,
                    ),
                    child: Image.network(
                      '''https://i.imgur.com/xZSFyDq.png''',
                      width: 100,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Center(
                  child: Text('''© 2021 SECTI''',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                ),
                Image.network(
                  '''https://i.imgur.com/jf1fa27.png''',
                  width: 400,
                  height: 160,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
