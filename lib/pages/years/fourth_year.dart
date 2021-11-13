import 'package:comsci_study_plan_flutter/models/subject41.dart';
import 'package:comsci_study_plan_flutter/models/subject42.dart';
import 'package:flutter/material.dart';

class FourthYear extends StatefulWidget {
  const FourthYear({Key? key}) : super(key: key);
  static const routeName = '/fourth_year';

  @override
  _FourthYearState createState() => _FourthYearState();
}

class _FourthYearState extends State<FourthYear> {
  int _selectedBottomNavIndex = 0;

  var items41 = [
    SubjectItem41(id: '517 493', name: 'โครงงานวิจัย 1', credit: 1,condition: '- โดยความยินยอมของภาควิชาคอมพิวเตอร'),
    SubjectItem41(id: '-', name: 'วิชาเลือกในหมวดวิชาเฉพาะ', credit: 6,
        condition: 'ไม่มี'),
    SubjectItem41(
        id: '-', name: 'วิชาบังคับเลือกในหมวดวิชาศึกษาทั่วไป', credit: 3,
        condition: 'ไม่มี'),
    SubjectItem41(id: '-', name: 'วิชาเลือกในหมวดวิชาเลือกเสรี', credit: 3,
        condition: 'ไม่มี'),
  ];

  var items42 = [
    SubjectItem42(id: '517 494', name: 'โครงงานวิจัย 2', credit: 2,condition: '- โครงงานวิจัย 1'),
    SubjectItem42(id: '-', name: 'วิชาเลือกในหมวดวิชาเลือกเสรี', credit: 3,
        condition: 'ไม่มี'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YEAR 4'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.table_rows,
              ),
              label: 'ภาคเรียนที่ 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_rows), label: 'ภาคเรียนที่ 2'),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // ไล่เฉดจากมุมบนซ้ายไปมุมล่างขวาของ Container
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // ไล่เฉดจากสีแดงไปสีน้ำเงิน
            colors: [
              Colors.white,
              Colors.orangeAccent.shade400,
            ],
          ),
        ),
        child: _buildSubPage(),
      ),
    );
  }

  ListView _buildListView1() {
    return ListView.builder(
      itemCount: items41.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items41[index];

        return Card(
          shadowColor: Colors.white54,
          elevation: 10,
          margin: const EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: InkWell(
            onTap: () {
              _showMaterialDialog('รายละเอียด', item.condition, item.credit);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.id,
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    item.name,
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  ListView _buildListView2() {
    return ListView.builder(
      itemCount: items42.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items42[index];

        return Card(
          shadowColor: Colors.white54,
          elevation: 10,
          margin: const EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: InkWell(
            onTap: () {
              _showMaterialDialog('รายละเอียด', item.condition, item.credit);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.id,
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    item.name,
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _buildSubPage() {
    switch (_selectedBottomNavIndex) {
      case 0: // home page
        return _buildListView1();
      case 1:
        return _buildListView2();
      default:
        return _buildListView1();
    }
  }
  void _showMaterialDialog(String title, String msg, int credit) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.school,
                  ),
                  const SizedBox(width: 6.0),
                  Text('หน่วยกิต: ${credit.toString()}'),
                ],
              ),
              const SizedBox(
                height: 6.0,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.error,
                  ),
                  SizedBox(width: 6.0),
                  Text('เงื่อนไขของวิชา'),
                ],
              ),
              Text(
                '$msg',
                textAlign: TextAlign.start,
              ),
            ],
          ),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
