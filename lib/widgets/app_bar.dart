import 'package:demo/models/imports.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu_rounded,
        color: Colors.black,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            size: 27,
            Icons.account_circle_rounded,
            color: Colors.black,
          ),
        )
      ],
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      titleTextStyle: const TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ),
      title: const Text('Employees'),
    );
  }
}
