
import 'package:animate_do/animate_do.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';
import 'package:statergile_todoapp/Dialogbox.dart';
import 'package:statergile_todoapp/components/bottom_nav.dart';
import 'package:statergile_todoapp/components/home_appbar.dart';
import 'package:statergile_todoapp/components/todo_tile.dart';
import 'package:statergile_todoapp/components/slider_drawer.dart';
import 'package:statergile_todoapp/data/hive_data.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<int> toDoList = [];
  GlobalKey<SliderDrawerState> drawerKey = GlobalKey<SliderDrawerState>();
  //hivebox
  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  //textcontrllr
  final _controller = TextEditingController();

  //checkboxchanged

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void onSavenewtask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: onSavenewtask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Center(child: Text('TO DO', style: TextStyle(color: Colors.white))),
      // ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.deepPurple,
        onPressed: createNewTask,
        child: Icon(Icons.add,color: Colors.white,),
      ),
      backgroundColor: Color.fromARGB(255, 187, 82, 199),
      body: SliderDrawer(
        key: drawerKey,
        animationDuration: 1000,
        isDraggable: false,
        slider: CustomDrawer(),
        
       // appBar: Text('ToDo APP'),
        child: toDoList.isEmpty
            ? Container(
              decoration: BoxDecoration(
              
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://media.istockphoto.com/id/1173194404/id/foto/komposisi-tampilan-atas-vertikal-ruang-kerja-kantor-modern-dengan-laptop-buku-catatan-kopi-dan.jpg?s=612x612&w=0&k=20&c=YvvSmBhEyy4KKyM7I-O5pTpmZDxy0_b2xb2cik7ooug='))
              ),
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: db.toDoList.length,
                  itemBuilder: (context, index) {
                    return ToDotile(
                      deleteFunction: (context) => deleteTask(index),
                      taskName: db.toDoList[index][0],
                      taskCompleted: db.toDoList[index][1],
                      onChanged: (value) => checkBoxChanged(value, index),
                    );
                  },
                ),
            )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInUp(
                    child: SizedBox(
                        width: 200,
                        height: 250,
                        child: Lottie.network(
                            'https://lottie.host/21c3e80b-7595-4df2-8ccd-b768c869784c/nHV4PZV9SR.json',
                            animate: toDoList.isEmpty ? false : true)),
                  ),
                  FadeInUp(
                      from: 30,
                      child: Text(
                        'You have done all tasks!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
