//  * Flutter Imports * //
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//  * Third Party Imports * //
import 'package:g_pack/src/g_export.dart';
import 'package:portfolio/gen/assets.gen.dart';

//  * Custom Imports * //

class HomeView extends StatefulWidget {
  //  * Parameters * //

  //  * Constructor * //
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //  * Variables * //

  //  * Functions * //

  //  * Overrides * //

  //  * Build * //
  @override
  Widget build(BuildContext context) {
    return GBlankViewOnlyWithBody(
      backgroundColor: Color(030303),
      resizeToAvoidBottomInset: true,
      safeAreaTop: true,
      safeAreaBottom: true,
      body: _bodyWidget(),
    );
  }

  //....
  ///
  /// ** Custom Widgets **
  ///
  //....
  Widget _bodyWidget() {
    return Column(
      children: [
        Stack(children: [
          iconWidget(Icons.menu, onPressed: () {}),
          Container(
            height: GResponsive().h * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              Assets.images.officeGirl.path,
            ))),
          ),
        ]),
        Spacer(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.d4x10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                fontAwesomeIconWidget(
                  FontAwesomeIcons.linkedin,
                  onPressed: () {},
                ),
                fontAwesomeIconWidget(
                  FontAwesomeIcons.stackOverflow,
                  onPressed: () {},
                ),
                fontAwesomeIconWidget(
                  FontAwesomeIcons.github,
                  onPressed: () {},
                ),
                fontAwesomeIconWidget(
                  FontAwesomeIcons.globe,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget iconWidget(IconData icon, {required void Function()? onPressed}) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }

  Widget fontAwesomeIconWidget(IconData icon,
      {required void Function()? onPressed}) {
    return IconButton(onPressed: onPressed, icon: FaIcon(icon));
  }
}
