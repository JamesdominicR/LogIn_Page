
import 'package:flutter/material.dart';
import 'package:sample_login_screen/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 15),
              ),
              child: const Text(
                'Sign Out',
              ),
              onPressed: () {
                // showDialog(
                //   context: context,
                //   builder: (context) =>
                showAlertDialog(context);
                // );
              }),
          //  icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListView(
            children: [
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      'assets/images/image1.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  title: const Text(
                    'A flower is a seed-bearing part of a plant, consisting of reproductive organs (stamens and carpels',
                    style: TextStyle(fontFamily: 'IndieFlower'),
                  ),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('assets/images/image2.jpg'),
                  ),
                  title: Text(
                    'Cat\'s make great pets and are ideal companions for people who work full time or who live in an apartment.',
                    style: TextStyle(fontFamily: 'Hubballi'),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    child: Image.asset(
                      'assets/images/image3.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  title: const Text(
                    'Football, also called association football or soccer, is a game involving two teams of 11 players who try to maneuver the ball',
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('assets/images/image4.jpg'),
                  ),
                  title: Text(
                    'sport as "an athletic activity requiring skill or physical prowess". It goes on to specifically mention "racing, baseball, tennis, golf bowling, wrestling, hunting and fishing" as sports.',
                    style: TextStyle(fontFamily: 'BhuTukaExpandedOne'),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    child: Image.asset(
                      'assets/images/image5.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  title: const Text(
                    'There is a consensus of expert opinion that cricket may have been invented during Saxon or Norman times by children living in the Weald,',
                    style: TextStyle(fontFamily: 'Ramaraja'),
                  ),
                ),
              ),
             const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/image6.jpg'),
                  ),
                  title: Text(
                    'Emerson says that nature is beautiful because it is alive, moving, reproductive. In nature we observe growth and development in living things, contrasted with the static or deteriorating state of the vast majority of that which is man-made.',
                    style: TextStyle(fontFamily: 'IndieFlower'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedprefs = await SharedPreferences.getInstance();
    await _sharedprefs.clear();
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }

  showAlertDialog(BuildContext context) async {
    //set up the buttons
    Widget cancelButton = await TextButton(
      child: const Text('Cancel'),
      onPressed: () {
        Navigator.pop(context, false);
      },
    );
    Widget continueButton = await TextButton(
        child: const Text('OK'),
        onPressed: () {
          signout(context);
        });
    //setting the Alert Dialogue
    AlertDialog alert = AlertDialog(
      content: const Text('Are you sure want to sign out'),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    //showing the Dialogue
    // showAlertDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return alert;
    //   },
    //   );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
