import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/constands.dart';
import 'package:flutter_application_1/widgets/circleavatar_widget_2.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ksizedbox20,
              Text(
                'Project',
                style: primaryfont,
              ),
              ksizedbox20,
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                                color: kwhite, fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: kblue,
                            borderRadius: BorderRadius.circular(23)),
                        height: 45,
                        width: 100,
                      ),
                      Text(
                        'Ongoing',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Completed    ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(23)),
                height: 45,
                width: double.infinity,
              ),
              ksizedbox20,
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UI/UX Design',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'To day shared by unknown',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: kgrey),
                      ),
                      ksizedbox10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Team',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                              ksizedbox20,
                              CircleAvatarWidget2(),
                            ],
                          ),
                          CircularPercentIndicator(
                            radius: 55,
                            maskFilter: MaskFilter.blur(BlurStyle.solid, 5),
                            lineWidth: 10,
                            restartAnimation: true,
                            linearGradient: LinearGradient(colors: [
                              kgreen,
                              Color.fromARGB(255, 114, 222, 92)
                            ]),
                            animation: true,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundWidth: 3,
                            animationDuration: 3000,
                            percent: 0.8,
                            rotateLinearGradient: false,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '85%',
                                  style: TextStyle(
                                      //  color: Color.fromARGB(255, 46, 43, 223),
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ksizedbox20,
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: kgrey,
                            size: 18,
                          ),
                          kwidth5,
                          Text(
                            'july 21 2023- june 23 2023',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: kgrey),
                          ),
                        ],
                      ),
                      ksizedbox20,
                    ],
                  ),
                ),
                width: double.infinity,
                //       height: 300,
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(16)),
              ),
              ksizedbox20,
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dashboar Design',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'To day shared by unknown',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: kgrey),
                      ),
                      ksizedbox10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Team',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                              ksizedbox20,
                              CircleAvatarWidget2(),
                            ],
                          ),
                          CircularPercentIndicator(
                            radius: 55,
                            maskFilter: MaskFilter.blur(BlurStyle.solid, 5),
                            lineWidth: 10,
                            restartAnimation: true,
                            linearGradient: LinearGradient(colors: [
                              kyellow,
                              Color.fromARGB(255, 240, 237, 52)
                            ]),
                            animation: true,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundWidth: 3,
                            animationDuration: 3000,
                            percent: 0.3,
                            rotateLinearGradient: false,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '35%',
                                  style: TextStyle(
                                      //  color: Color.fromARGB(255, 46, 43, 223),
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ksizedbox20,
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: kgrey,
                            size: 18,
                          ),
                          kwidth5,
                          Text(
                            'july 21 2023- june 23 2023',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: kgrey),
                          ),
                        ],
                      ),
                      ksizedbox20,
                    ],
                  ),
                ),
                width: double.infinity,
                //       height: 300,
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(16)),
              ),
              ksizedbox20,
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'App Animation',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'To day shared by unknown',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: kgrey),
                      ),
                      ksizedbox10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Team',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                              ksizedbox20,
                              CircleAvatarWidget2(),
                            ],
                          ),
                          CircularPercentIndicator(
                            radius: 55,
                            maskFilter: MaskFilter.blur(BlurStyle.solid, 5),
                            lineWidth: 10,
                            restartAnimation: true,
                            linearGradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 135, 135, 191),
                              Color.fromARGB(255, 94, 92, 222)
                            ]),
                            animation: true,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundWidth: 3,
                            animationDuration: 3000,
                            percent: 0.6,
                            rotateLinearGradient: false,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '65%',
                                  style: TextStyle(
                                      //  color: Color.fromARGB(255, 46, 43, 223),
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ksizedbox20,
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: kgrey,
                            size: 18,
                          ),
                          kwidth5,
                          Text(
                            'july 21 2023- june 23 2023',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: kgrey),
                          ),
                        ],
                      ),
                      ksizedbox20,
                    ],
                  ),
                ),
                width: double.infinity,
                //       height: 300,
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
