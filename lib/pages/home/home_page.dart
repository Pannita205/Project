import 'package:comsci_study_plan_flutter/pages/years/first_year.dart';
import 'package:comsci_study_plan_flutter/pages/years/fourth_year.dart';
import 'package:comsci_study_plan_flutter/pages/years/second_year.dart';
import 'package:comsci_study_plan_flutter/pages/years/third_year.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ตารางเรียน'),
        centerTitle: true,
      ),
      body: Container(
        //color: Colors.yellow.shade100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // ไล่เฉดจากมุมบนซ้ายไปมุมล่างขวาของ Container
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // ไล่เฉดจากสีแดงไปสีน้ำเงิน
            colors: [
              Colors.white,
              Colors.yellow.shade200,

            ],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/cpsu.png',
                    width: 130.0,
                  ),
                  const SizedBox(height: 20.0,),
                  const Text(
                    'มหาวิทยาลัยศิลปากร',
                    style: TextStyle(fontSize: 18.0, color: Colors.teal),
                  ),
                  const SizedBox(height: 6.0,),
                  const Text(
                    'คณะวิทยาศาสตร์ ภาควิชาวิทยาการคอมพิวเตอร์',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'เลือกชั้นปี',
                        style: TextStyle(fontSize: 28.0),
                      ),
                    ),
                  ),
                  //const SizedBox(height: 10.0),
                  Column(
                    children: [
                      buildYear(1),
                      buildYear(2),
                      buildYear(3),
                      buildYear(4),
                      const SizedBox(height: 10.0),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildYear(int year) {
    return InkWell(
      onTap: () {
        if(year == 1){
          Navigator.pushNamed(context, FirstYear.routeName);
        }else if(year == 2){
          Navigator.pushNamed(context, SecondYear.routeName);
        }else if(year == 3){
          Navigator.pushNamed(context, ThirdYear.routeName);
        }else{
          Navigator.pushNamed(context, FourthYear.routeName);
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'YEAR ${year.toString()}',
                style: const TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//EdgeInsets.symmetric(horizontal: 50.0,vertical: 16.0),
