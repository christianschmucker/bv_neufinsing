import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ProfileHeader(),
                const SizedBox(
                  width: double.infinity,
                  height: 50.0,
                ),
                ProfileListTile(
                    text: "Konto",
                    leadingIcon: Icons.attach_money,
                    color: const Color.fromRGBO(17, 50, 77, 1.0),
                    onTap: (){
                      debugPrint("pressed 1");
                    }
                ),
                ProfileListTile(
                    text: "Einstellungen",
                    leadingIcon: Icons.settings_outlined,
                    color: const Color.fromRGBO(17, 50, 77, 1.0),
                    onTap: (){
                      debugPrint("pressed 2");
                    }
                ),


              ],
            ),
          )
      )
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(100.0)),
              elevation: 5,
              child: SizedBox(
                width: 80,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                            )
                        )
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Christian Schmucker",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat",
            ),
          ),
        ],
      ),
    );
  }
}


class ProfileListTile extends StatelessWidget {
  final String text;
  final IconData leadingIcon;
  final Function() onTap;
  final Color color;
  const ProfileListTile({
    required this.text,
    required this.leadingIcon,
    required this.onTap,
    required this.color,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: color,
            child: Icon(
              leadingIcon,
              size: 25,
              color: Colors.white,
            ),
          ),
          title: Text(
            text,
            textScaleFactor: 1,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 25,
          ),
          selected: false,
          onTap: onTap,
        ),
      ),
      textColor: color,
      iconColor: color,

    );
  }
}