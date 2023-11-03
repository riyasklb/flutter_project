import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/constands.dart';

class CircleAvatarWidget2 extends StatefulWidget {
  const CircleAvatarWidget2({super.key});

  @override
  State<CircleAvatarWidget2> createState() => _CircleAvatarWidgetState();
}

class _CircleAvatarWidgetState extends State<CircleAvatarWidget2> {
  List RandomImages = [
    'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
    'https://pbs.twimg.com/profile_images/1249432648684109824/J0k1DN1T_400x400.jpg',
    'https://i0.wp.com/thatrandomagency.com/wp-content/uploads/2021/06/headshot.png?resize=618%2C617&ssl=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaOjCZSoaBhZyODYeQMDCOTICHfz_tia5ay8I_k3k&s'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < RandomImages.length; i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0),
                    child: Align(
                        widthFactor: 0.5,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: NetworkImage(
                              RandomImages[i],
                            ),
                          ),
                        )),
                  )
              ],
            ),
            // SizedBox(
            //   width: 20,
            // ),
            CircleAvatar(
              backgroundColor: korange,
              radius: 12,
              child: Center(
                  child: Icon(
                Icons.add,
                color: kwhite,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
