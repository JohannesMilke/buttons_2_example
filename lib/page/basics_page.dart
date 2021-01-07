import 'package:buttons_2_example/widget/tabbar_widget.dart';
import 'package:flutter/material.dart';

class BasicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: 'Buttons 2.0 Basics',
        tabs: [
          Tab(icon: Icon(Icons.color_lens), text: 'Colors'),
          Tab(icon: Icon(Icons.insert_emoticon), text: 'Icons'),
          Tab(icon: Icon(Icons.space_bar), text: 'Padding'),
          Tab(icon: Icon(Icons.photo_size_select_large), text: 'Size'),
          Tab(icon: Icon(Icons.art_track), text: 'Shadow'),
          Tab(icon: Icon(Icons.border_outer), text: 'Border'),
          Tab(icon: Icon(Icons.format_shapes), text: 'Shape'),
          Tab(icon: Icon(Icons.close), text: 'Disabled'),
        ],
        children: [
          buildColors(),
          buildIcons(),
          buildPadding(),
          buildSize(),
          buildShadow(),
          buildBorder(),
          buildShape(),
          buildDisabled(),
        ],
      );

  Widget buildColors() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                //backgroundColor: Colors.white, // background
                primary: Colors.pinkAccent, // foreground
              ),
              child: buildText('Text Button'),
              onPressed: () => print('Short Press!'),
              onLongPress: () => print('Long Press!'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.white, // foreground
              ),
              child: buildText('Elevated Button'),
              onPressed: () => print('Short Press!'),
              onLongPress: () => print('Long Press!'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                // backgroundColor: Colors.white,// background
                primary: Colors.orange, // foreground text
                side: BorderSide(color: Colors.orange), // foreground border
              ),
              child: buildText('Outlined Button'),
              onPressed: () => print('Short Press!'),
              onLongPress: () => print('Long Press!'),
            ),
          ],
        ),
      );

  Widget buildIcons() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.pinkAccent, // text + icon color
              ),
              icon: Icon(Icons.add, size: 32),
              label: buildText('Text Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.edit, size: 32),
              label: buildText('Elevated Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blue),
              ),
              icon: Icon(Icons.search, size: 32),
              label: buildText('Outlined Button'),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget buildPadding() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              ),
              child: buildText('Text Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              ),
              child: buildText('Elevated Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                side: BorderSide(color: Colors.blue), // foreground border
              ),
              child: buildText('Outlined Button'),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget buildSize() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(240, 80),
              ),
              child: buildText('Text Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(240, 80),
              ),
              child: buildText('Elevated Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(240, 80),
                side: BorderSide(color: Colors.blue), // foreground border
              ),
              child: buildText('Outlined Button'),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget buildShadow() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                elevation: 8,
                shadowColor: Colors.blue.withOpacity(0.5),
              ),
              child: buildText('Text Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 8,
                shadowColor: Colors.white,
              ),
              child: buildText('Elevated Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                elevation: 8,
                shadowColor: Colors.blue,
                side: BorderSide(color: Colors.blue), // foreground border
              ),
              child: buildText('Outlined Button'),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget buildBorder() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.blue),
              ),
              child: buildText('Text Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.white),
              ),
              child: buildText('Elevated Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.blue),
              ),
              child: buildText('Outlined Button'),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget buildShape() {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              side: BorderSide(width: 2, color: Colors.blue),
              shape: shape,
            ),
            child: buildText('Text Button'),
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: BorderSide(width: 2, color: Colors.white),
              shape: shape,
            ),
            child: buildText('Elevated Button'),
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2, color: Colors.blue),
              shape: shape,
            ),
            child: buildText('Outlined Button'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildDisabled() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                onSurface: Colors.white70,
              ),
              child: buildText('Text Button'),
              onPressed: null,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                onSurface: Colors.white,
              ),
              child: buildText('Elevated Button'),
              onPressed: null,
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                onSurface: Colors.white,
                side: BorderSide(width: 2, color: Colors.white30),
              ),
              child: buildText('Outlined Button'),
              onPressed: null,
            ),
          ],
        ),
      );

  Text buildText(String text) => Text(text, style: TextStyle(fontSize: 28));
}
