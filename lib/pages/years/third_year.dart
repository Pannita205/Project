import 'package:comsci_study_plan_flutter/models/subject31.dart';
import 'package:comsci_study_plan_flutter/models/subject32.dart';
import 'package:flutter/material.dart';

class ThirdYear extends StatefulWidget {
  const ThirdYear({Key? key}) : super(key: key);
  static const routeName = '/third_year';

  @override
  _ThirdYearState createState() => _ThirdYearState();
}

class _ThirdYearState extends State<ThirdYear> {
  int _selectedBottomNavIndex = 0;

  var items31 = [
    SubjectItem31(
        id: '081 101',
        name: 'ภาษาไทยเพื่อการสื่อสาร',
        credit: 3,
        condition: 'ไม่มี'),
    SubjectItem31(
        id: '517 311',
        name: 'การวิเคราะห์และการออกแบบขั้นตอนวิธี',
        credit: 3,
        condition:
            '- โครงสร้างข้อมูล\n- โครงสร้างเชิงการคํานวณแบบไม่ต่อเนื่อง\n*อาจเรียนพร้อมกันได้'),
    SubjectItem31(
        id: '517 312',
        name: 'ระบบปฏิบัติการ',
        credit: 3,
        condition: '- โครงสร้างและสถาปัตยกรรมคอมพิวเตอร'),
    SubjectItem31(
        id: '517 321',
        name: 'หลักการภาษาโปรแกรม',
        credit: 3,
        condition: '- การพัฒนาซอฟต์แวร์เชิงวัตถ'),
    SubjectItem31(
        id: '520 212',
        name: 'กฎหมายและจรรยาบรรณสําหรับเทคโนโลยีสารสนเทศ',
        credit: 3,
        condition: '-  พื้นฐานคอมพิวเตอร์และวิทยาการสารสนเทศ'),
    SubjectItem31(
        id: '520 361',
        name: 'การวิเคราะห์และการออกแบบระบบงาน',
        credit: 3,
        condition: '- ระบบฐานข้อมูล'),
    SubjectItem31(
        id: '-',
        name: 'วิชาเลือกในหมวดวิชาเฉพาะ',
        credit: 3,
        condition: 'ไม่มี'),
  ];

  var items32 = [
    SubjectItem32(
        id: '517 313',
        name: 'ทฤษฎีการคํานวณ',
        credit: 3,
        condition: '- โครงสร้างเชิงการคํานวณแบบไม่ต่อเนื่อง '),
    SubjectItem32(
        id: '517 391',
        name: 'วิธีการวิจัย',
        credit: 3,
        condition: '-  โดยความยินยอมของภาควิชาคอมพิวเตอร์'),
    SubjectItem32(
        id: '520 351',
        name:
            'การปฎิสัมพันธ์ระหว่างมนุษย์กับคอมพิวเตอร์และการออกแบบส่วนต่อประสาน',
        credit: 3,
        condition: '- การพัฒนาซอฟต์แวร์เชิงวัตถุ'),
    SubjectItem32(
        id: '520 362',
        name: 'วิศวกรรมซอฟต์แวร์',
        credit: 3,
        condition: '- การวิเคราะห์และการออกแบบระบบงาน'),
    SubjectItem32(
        id: '-',
        name: 'วิชาเลือกในหมวดวิชาเฉพาะ',
        credit: 6,
        condition: 'ไม่มี'),
    SubjectItem32(
        id: '-',
        name: 'วิชาเลือกในรายวิชาศึกษาทั่วไปที่กําหนดโดยคณะวิทยาศาสตร์',
        credit: 3,
        condition: 'ไม่มี'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YEAR 3'),
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
      itemCount: items31.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items31[index];

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
      itemCount: items32.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items32[index];

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
