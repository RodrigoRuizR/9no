import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';

class AppBarTiendaWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarTiendaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsSelect.primaryColor,
      automaticallyImplyLeading: true,
      leading: const Icon(Icons.arrow_back, color: ColorsSelect.paginatorNext),
      title: const Text("Tienda"),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.backpack_sharp),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.add_alert),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
