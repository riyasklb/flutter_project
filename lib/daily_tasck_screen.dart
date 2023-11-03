import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/constands.dart';
import 'package:flutter_application_1/widgets/widget_circleavatar.dart';

class DailyTaskScreen extends StatelessWidget {
  const DailyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      appBar: AppBar(
        backgroundColor: Colors.grey[100]!,
        actions: [
          Icon(
            Icons.search,
            color: kgrey,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/fittness/runner.png'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 13, left: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ksizedbox10,
            Text('Hello', style: secondaryfont),
            ksizedbox10,
            Text('Allex Marconi', style: primaryfont),
            ksizedbox20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.timer,
                        color: kwhite,
                      ),
                      ksizedbox10,
                      Text(
                        'In progress',
                        style: TextStyle(fontSize: 14, color: kwhite),
                      )
                    ],
                  ),
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      color: kyellow, borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.repeat,
                        color: kwhite,
                      ),
                      ksizedbox10,
                      Text(
                        'Ongoing',
                        style: TextStyle(fontSize: 14, color: kwhite),
                      )
                    ],
                  ),
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      color: kblue, borderRadius: BorderRadius.circular(16)),
                )
              ],
            ),
            ksizedbox10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_present,
                        color: kwhite,
                      ),
                      ksizedbox10,
                      Text(
                        'Completed',
                        style: TextStyle(fontSize: 14, color: kwhite),
                      )
                    ],
                  ),
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      color: kgreen, borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_present,
                        color: kwhite,
                      ),
                      ksizedbox10,
                      Text(
                        'Cancel',
                        style: TextStyle(fontSize: 14, color: kwhite),
                      )
                    ],
                  ),
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      color: kred, borderRadius: BorderRadius.circular(16)),
                )
              ],
            ),
            ksizedbox30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daily Task',
                  style: primaryfont,
                ),
                Row(
                  children: [
                    Text(
                      'All Task',
                      style: secondaryfont,
                    ),
                    kwidth5,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: kgrey,
                    )
                  ],
                )
              ],
            ),
            ksizedbox20,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.verified,
                    color: kgrey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'App Animation',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      ksizedbox10,
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(15)),
                            height: 10,
                            width: 130,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: kgreen,
                                borderRadius: BorderRadius.circular(15)),
                            height: 10,
                            width: 110,
                          ),
                        ],
                      ),
                    ],
                  ),
                  kwidth10,
                  CircleAvatarWidget(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kgrey,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(15)),
              height: 70,
              width: double.infinity,
            ),
            ksizedbox10,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.verified,
                    color: kblue,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dashboard Design',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      ksizedbox10,
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(15)),
                            height: 10,
                            width: 130,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: kblue,
                                borderRadius: BorderRadius.circular(15)),
                            height: 10,
                            width: 60,
                          ),
                        ],
                      ),
                    ],
                  ),
                  kwidth10,
                  CircleAvatarWidget(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kgrey,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(15)),
              height: 70,
              width: double.infinity,
            ),
            ksizedbox10,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.verified,
                    color: kgrey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'UI/UX Design',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      ksizedbox10,
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(15)),
                            height: 10,
                            width: 130,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: kyellow,
                                borderRadius: BorderRadius.circular(15)),
                            height: 10,
                            width: 90,
                          ),
                        ],
                      ),
                    ],
                  ),
                  kwidth10,
                  CircleAvatarWidget(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kgrey,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(15)),
              height: 70,
              width: double.infinity,
            ),
            //  CircleAvatarWidget()
          ],
        ),
      ),
    );
  }
}
