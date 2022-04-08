import 'package:comsci_study_plan_flutter/models/subject21.dart';
import 'package:comsci_study_plan_flutter/models/subject22.dart';
import 'package:flutter/material.dart';

class SecondYear extends StatefulWidget {
  const SecondYear({Key? key}) : super(key: key);
  static const routeName = '/second_year';

  @override
  _SecondYearState createState() => _SecondYearState();
}

class _SecondYearState extends State<SecondYear> {
  int _selectedBottomNavIndex = 0;

  var items21 = [
    SubjectItem21(id: '510 201',
        name: 'ภาษาอังกฤษเชิงวิทยาศาสตร์',
        credit: 3,
        condition: 'ไม่มี'),
    SubjectItem21(
        id: '515 232 ',
        name: 'ความน่าจะเป็นสําหรับนักวิทยาการคอมพิวเตอร์',
        credit: 3, condition: '- แคลคูลัสสําหรับนักวิทยาศาสตร์คณนา 2'),
    SubjectItem21(id: '517 211',
        name: 'โครงสร้างข้อมูล',
        credit: 4,
        condition: '- ทักษะการเขียนโปรแกรมคอมพิวเตอร์ 2'),
    SubjectItem21(id: '517 212',
        name: 'การออกแบบวงจรตรรกะเชิงเลข',
        credit: 4,
        condition: '- พื้นฐานคอมพิวเตอร์และวิทยาการสารสนเทศ'),
    SubjectItem21(
        id: '517 213',
        name: 'โครงสร้างเชิงการคํานวณแบบไม่ต่อเนื่อง',
        credit: 3, condition: '- แคลคูลัสสําหรับนักวิทยาศาสตร์คณนา 2'),
    SubjectItem21(
        id: '520 215',
        name: 'การเขียนโปรแกรมเพื่อการเรียนรู้เชิงสถิติสําหรับข้อมูลขนาดใหญ่',
        credit: 3, condition: '- ทักษะการเขียนโปรแกรมคอมพิวเตอร์ 2'),
  ];

  var items22 = [
    SubjectItem22(id: '510 202',
        name: 'ภาษาอังกฤษสําหรับการสื่อสาร',
        credit: 3,
        condition: 'ไม่มี'),
    SubjectItem22(
        id: '511 242',
        name: 'พีชคณิตเชิงเส้นและการประยุกต์',
        credit: 3,
        condition: '- แคลคูลัสสําหรับนักวิทยาศาสตร์คณนา 1'),
    SubjectItem22(id: '517 221',
        name: 'การพัฒนาซอฟต์แวร์เชิงวัตถุ',
        credit: 3,
        condition: '- โครงสร้างข้อมูล'),
    SubjectItem22(
        id: '517 222',
        name: 'โครงสร้างและสถาปัตยกรรมคอมพิวเตอร์',
        credit: 4,
        condition: '- ทักษะการเขียนโปรแกรมคอมพิวเตอร์ 1\n- การออกแบบวงจรตรรกะเชิงเลข'),
    SubjectItem22(
        id: '517 241',
        name: 'การสื่อสารข้อมูลและเครือข่ายคอมพิวเตอร์',
        credit: 4,
        condition
        :'- ทักษะการเขียนโปรแกรมคอมพิวเตอร์ 2\n- พื้นฐานคอมพิวเตอร์และวิทยาการสารสนเทศ'),
    SubjectItem22(
        id: '520 221', name: 'ระบบฐานข้อมูล', credit: 4,condition: '- ทักษะการเขียนโปรแกรมคอมพิวเตอร์ 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('นักศึกษาปีที่ 2'),
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
      itemCount: items21.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items21[index];

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
                    style: const TextStyle(fontSize: 16.0,
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
      itemCount: items22.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items22[index];

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
                    style: const TextStyle(fontSize: 16.0,
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
                  Text('เงื่อนไขของวิชา: '),
                ],
              ),
              Text('$msg',textAlign: TextAlign.start,),
            ],
          ),
        );
      },
    );
  }
}
