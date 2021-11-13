import 'package:comsci_study_plan_flutter/models/subject11.dart';
import 'package:comsci_study_plan_flutter/models/subject12.dart';
import 'package:flutter/material.dart';

class FirstYear extends StatefulWidget {
  const FirstYear({Key? key}) : super(key: key);
  static const routeName = '/first_year';

  @override
  _FirstYearState createState() => _FirstYearState();
}

class _FirstYearState extends State<FirstYear> {
  int _selectedBottomNavIndex = 0;
  var items11 = [
    SubjectItem11(id: '081 102',
        name: 'ภาษาอังกฤษในชีวิตประจําวัน',
        credit: 3,
        condition: 'ไม่มี'),
    SubjectItem11(
        id: '511 100',
        name: 'ความรู้พื้นฐานสําหรับแคลคูลัส',
        credit: 3,
        condition: '**ไม่นับหน่วยกิต'),
    SubjectItem11(
        id: '511 108',
        name: 'แคลคูลัสสําหรับนักวิทยาศาสตร์คณนา 1',
        credit: 3,
        condition: '- ความรู้พื้นฐานสําหรับแคลคูลัส'),
    SubjectItem11(
        id: '514 107', name: 'ฟิสิกส์พื้นฐาน', credit: 4, condition: 'ไม่มี'),
    SubjectItem11(
        id: '517 121',
        name: 'ทักษะการเขียนโปรแกรมคอมพิวเตอร์ 1',
        credit: 4,
        condition: 'ไม่มี'),
    SubjectItem11(
        id: '520 101',
        name: 'พื้นฐานคอมพิวเตอร์และวิทยาการสารสนเทศ',
        credit: 3, condition: 'ไม่มี'),
  ];

  var items12 = [
    SubjectItem12(id: '081 103',
        name: 'การพัฒนาทักษะภาษาอังกฤษ',
        credit: 3,
        condition: 'ไม่มี'),
    SubjectItem12(
        id: '511 109',
        name: 'แคลคูลัสสําหรับนักวิทยาศาสตร์คณนา 2',
        credit: 3,
        condition: '- แคลคูลัสสําหรับนักวิทยาศาสตร์คณนา 1'),
    SubjectItem12(
        id: '515 201', name: 'สถิติพื้นฐาน', credit: 3, condition: 'ไม่มี'),
    SubjectItem12(
        id: '517 122',
        name: 'ทักษะการเขียนโปรแกรมคอมพิวเตอร์ 2',
        credit: 4,
        condition: '- ทักษะการเขียนโปรแกรมคอมพิวเตอร์ 1'),
    SubjectItem12(
        id: '-',
        name: 'วิชาบังคับเลือกในหมวดวิชาศึกษาทั่วไป ',
        credit: 6,
        condition: 'ไม่มี'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YEAR 1'),
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
      itemCount: items11.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items11[index];

        return Card(
          shadowColor: Colors.white54,
          elevation: 10,
          margin: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
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
      itemCount: items12.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items12[index];

        return Card(
          margin: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
          shadowColor: Colors.white54,
          elevation: 10,
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
              const SizedBox(height: 6.0,),
              Row(
                children: const [
                  Icon(
                    Icons.error,
                  ),
                  SizedBox(width: 6.0),
                  Text('เงื่อนไขของวิชา'),
                ],
              ),
              Text('$msg',textAlign: TextAlign.start,),
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

