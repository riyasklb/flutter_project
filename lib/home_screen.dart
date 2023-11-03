import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/chart.dart';
import 'package:flutter_application_1/widgets/circleavatar_widget_2.dart';
import 'package:flutter_application_1/widgets/constands.dart';
import 'package:flutter_application_1/dashboard_screen.dart';
import 'package:flutter_application_1/daily_tasck_screen.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  changeindex(value) {
    setState(() {
      selectedindex = value;
    });
  }

  final List list = [
    const DailyTaskScreen(),
    const Workspace(),
    const DailyTaskScreen(),
    const Workspace(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400]!,
      body: list[selectedindex],
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              kblue,
              Color.fromARGB(255, 143, 157, 236),
            ])),
        child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DashboardScreen()),
              );
            },
            icon: const Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: changeindex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kblue,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/fittness/tab_1.png',
                  height: 40,
                ),
                activeIcon: Image.asset(
                  'assets/fittness/tab_1s.png',
                  height: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/fittness/tab_2.png',
                  height: 40,
                ),
                activeIcon: Image.asset(
                  'assets/fittness/tab_2s.png',
                  height: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/fittness/tab_3.png',
                  height: 40,
                ),
                activeIcon: Image.asset(
                  'assets/fittness/tab_3s.png',
                  height: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/fittness/tab_4.png',
                  height: 40,
                ),
                activeIcon: Image.asset(
                  'assets/fittness/tab_4s.png',
                  height: 40,
                ),
                label: ''),
          ]),
    );
  }
}

class Workspace extends StatefulWidget {
  const Workspace({super.key});

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      appBar: AppBar(
          backgroundColor: Colors.grey[100]!,
          actions: [
            Icon(
              Icons.more_vert,
              color: kgrey,
            )
          ],
          leading: Icon(
            Icons.arrow_back_ios,
            color: kgrey,
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ksizedbox30,
              Text(
                'Dashboard Design',
                style: primaryfont,
              ),
              ksizedbox10,
              Text(
                'Today Shared by - Unbox Digital',
                style: TextStyle(
                  color: kgrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ksizedbox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularPercentIndicator(
                    radius: 60,
                    maskFilter: MaskFilter.blur(BlurStyle.solid, 5),
                    lineWidth: 10,
                    restartAnimation: true,
                    linearGradient: LinearGradient(
                        colors: [kgreen, Color.fromARGB(255, 114, 222, 92)]),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Team',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      ksizedbox10,
                      CircleAvatarWidget2(),
                      ksizedbox10,
                      Text(
                        'Deadline',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      ksizedbox10,
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
                    ],
                  ),
                ],
              ),
              ksizedbox40,
              Text('Project Progress', style: primaryfont),
              ksizedbox20,
              Container(
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    ksizedbox20,
                    Row(
                      children: [
                        kwidth10,
                        Icon(
                          Icons.check_box,
                          color: kgrey,
                        ),
                        kwidth10,
                        Text(
                          'Creat user flow',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    ksizedbox10,
                    Row(
                      children: [
                        kwidth10,
                        Icon(
                          Icons.check_box,
                          color: kblue,
                        ),
                        kwidth10,
                        Text(
                          'Creat wireframe',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    ksizedbox10,
                    Row(
                      children: [
                        kwidth10,
                        Icon(
                          Icons.check_box,
                          color: kblue,
                        ),
                        kwidth10,
                        Text(
                          'Transform to visual design',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    ksizedbox20
                  ],
                ),
              ),
              ksizedbox20,
              Text(
                'Project Overview',
                style: primaryfont,
              ),
              LineChartSample2()
            ],
          ),
        ),
      ),
    );
  }
}
