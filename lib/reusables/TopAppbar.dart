import 'package:flutter/material.dart';
import 'package:myekigai/theme/theme.dart';
class TopAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String toptitle;
  const TopAppbar({super.key,required this.toptitle});
@override
Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(  backgroundColor: Colors.white,
      titleSpacing: 0,
      centerTitle: false,
      elevation: 4,
      shadowColor: const Color.fromRGBO(171, 171, 171, 0.25),
      title: Text(
      toptitle,
        style: const TextStyle(
          color: Color(0xFF1C1C1C),
          fontSize: 21,
          fontFamily: 'Sen',
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_sharp,
            color: Color(0xFF1C1C1C)),
        onPressed: () {
          Navigator.pop(context);
        },
      ),);
  }
}
