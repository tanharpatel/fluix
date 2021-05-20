import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:fluix/Utils/CodeColorTheme.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

/*TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN*/


class PreviewCode extends StatefulWidget {
  Widget page;
  String path;
  PreviewCode({@required this.page, @required this.path});
  @override
  _PreviewCodeState createState() => _PreviewCodeState();
}

class _PreviewCodeState extends State<PreviewCode> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(tabs: <Widget>[
              Tab(
                child: Text(
                  "Code",
                  style: TextStyle(
                      color: enableDarkMode ? Colors.grey : Colors.black54),
                ),
                icon: Icon(Icons.code,
                    color: enableDarkMode ? Colors.grey : Colors.black54),
              ),
              Tab(
                child: Text(
                  "Preview",
                  style: TextStyle(
                      color: enableDarkMode ? Colors.grey : Colors.black54),
                ),
                icon: Icon(Icons.phone_android,
                    color: enableDarkMode ? Colors.grey : Colors.black54),
              ),
            ]),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            
            FutureBuilder(
              future: rootBundle.loadString(widget.path),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                print(snapshot);
                if(snapshot.hasData) {
                  return Scaffold(
                    body: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: _getCodeView(snapshot.data, context),
                    ),
                    floatingActionButton: AnimatedFloatingActionButton(
                      fabButtons: _buildFloatingButtons(),
                      colorStartAnimation: Colors.indigo,
                      colorEndAnimation: Colors.red,
                      animatedIconData: AnimatedIcons.menu_close,
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            widget.page,
          ],
        ),
      ),
    );
  }

  Widget _getCodeView(String codeContent, BuildContext context) {
    final SyntaxHighlighterStyle style = enableDarkMode
        ? SyntaxHighlighterStyle.darkThemeStyle()
        : SyntaxHighlighterStyle.lightThemeStyle();
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontFamily: 'monospace', fontSize: 12.0),
                  children: <TextSpan>[
                    DartSyntaxHighlighter(style).format(codeContent)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFloatingButtons() {
    return <Widget>[
      FloatingActionButton(
        heroTag: "copy",
        child: Icon(Icons.content_copy),
        tooltip: 'Share the code',
        onPressed: () => Share.share("Check this awesome UI which I found on FLUIX 💙\n https://github.com/zeeshanbhati/Fluix/blob/master/${widget.path}"),
      ),
      FloatingActionButton(
        heroTag: "open",
        child: Icon(Icons.open_in_new),
        tooltip: 'View code on github',
        onPressed: () => url_launcher.launch("https://github.com/zeeshanbhati/Fluix/blob/master/${widget.path}"),
      ),
    ];
  }
}