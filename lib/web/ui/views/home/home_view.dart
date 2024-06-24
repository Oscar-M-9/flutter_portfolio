import 'package:flutter/material.dart';
import 'package:flutter_app/web/ui/shared/widgets/max_width.dart';
import 'package:flutter_app/web/ui/views/footer/footer_view.dart';
import 'package:flutter_app/web/ui/views/home/section_1_home_view.dart';
import 'package:flutter_app/web/ui/views/home/section_2_home_view.dart';
import 'package:flutter_app/web/ui/shared/widgets/square_stack_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> squares = [
      SquareStack(
        top: -10,
        right: -20,
        blur: 5,
        opacity: .7,
        height: 150,
        width: 150,
      ),
      SquareStack(
        top: -10,
        right: 250,
        blur: 5,
        opacity: .5,
        height: 150,
        width: 150,
      ),
      SquareStack(
        top: 80,
        right: 150,
        blur: 5,
        opacity: .5,
        height: 150,
        width: 150,
      ),
      SquareStack(
        top: -10,
        right: -20,
        blur: 5,
        opacity: .7,
        height: 150,
        width: 150,
      ),
      SquareStack(
        top: 160,
        right: 100,
        blur: 10,
        opacity: .4,
        height: 80,
        width: 80,
      ),
      SquareStack(
        top: 260,
        right: 100,
        blur: 10,
        opacity: .7,
        height: 100,
        width: 100,
      ),
      SquareStack(
        top: 200,
        right: -20,
        blur: 10,
        opacity: .4,
        height: 150,
        width: 150,
      ),
      SquareStack(
        top: 250,
        right: 380,
        blur: 10,
        opacity: .6,
        height: 100,
        width: 100,
      ),
      SquareStack(
        top: 300,
        right: 200,
        blur: 10,
        opacity: .7,
        height: 140,
        width: 140,
      ),
    ];
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MaxWidth(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                const minWidth = 680;
                if (constraints.maxWidth > minWidth) {
                  return const Stack(
                    children: [
                      ...squares,
                      Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Section1HomeView(),
                      ),
                    ],
                  );
                } else {
                  return const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Section1HomeView(),
                  );
                }
              },
            ),
          ),
          const MaxWidth(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Section2HomeView(),
            ),
          ),
          const FooterView(),
        ],
      ),
    );
  }
}
