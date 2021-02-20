import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Screens/PreviewCode.dart';
import 'package:fluix/Utils/Items.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';

class TypeList extends StatefulWidget {
  String type;
  TypeList({@required this.type});

  @override
  _TypeListState createState() => _TypeListState();
}

class _TypeListState extends State<TypeList> {
  List<Items> ui1;

  @override
  void initState() {
    if (widget.type == "Authentication") {
      ui1 = authentication;
    } else if (widget.type == "Settings/Profile") {
      ui1 = settings_profile;
    } else if (widget.type == "Introsliders") {
      ui1 = introslider;
    } else if (widget.type == "Drawer") {
      ui1 = drawer;
    } else if (widget.type == "Navigation") {
      ui1 = navigation;
    } else if (widget.type == "Lists") {
      ui1 = lists;
    } else if (widget.type == "Grids") {
      ui1 = grids;
    } else if (widget.type == "Miscellaneous"){
      ui1 = miscellaneous;
    }
    else if(widget.type == "Dashboard"){
      ui1 = dashboard;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          title: widget.type,
        ),
        preferredSize: Size.fromHeight(56),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: _buildItems(ui1, context),
        ),
      ),
    );
  }
}

List<Widget> _buildItems(List<Items> items, BuildContext context) {
  final List<Widget> item = [];
  items.forEach((i) => item.add(_buildItem(i, context)));
  return item;
}

Widget _buildItem(Items item, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => item.page));
    },
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        title: Text(
          item.title,
        ),
        leading: Icon(
          Icons.arrow_right,
          color: enableDarkMode ? Colors.teal : Colors.blue,
        ),
        trailing: IconButton(
          icon: Icon(Icons.code),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PreviewCode(page: item.page,path: item.path)));
          },
        ),
      ),
    ),
  );
}
