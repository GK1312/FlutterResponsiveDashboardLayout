import 'package:dashboard_res_ui/constants/constant.dart';
import 'package:dashboard_res_ui/util/box.dart';
import 'package:dashboard_res_ui/util/tile.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: defaultBackgroundColor,
      drawer: drawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // first 4 boxes in grid
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const Box();
                  },
                ),
              ),
            ),

            // list of previous days
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const Tile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
