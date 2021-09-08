import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sortie/flutter_flow/flutter_flow_theme.dart';
import 'package:sortie/services/get_controller.dart';
import 'package:sortie/ui/add_class.dart';

class MyClasses extends StatefulWidget {
  @override
  _MyClassesState createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  MyController myController = Get.find<MyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Classes",style: FlutterFlowTheme.title2.override(
          fontFamily: 'Lexend Deca',
        ),
        ),
        centerTitle: false,
        elevation:0,
        backgroundColor: FlutterFlowTheme.primaryColor,
      ),
      backgroundColor: FlutterFlowTheme.darkBG,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 53,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                    image: DecorationImage(
                      fit: BoxFit.fill,

                      image: Image.asset(
                        'assets/images/waves@2x.png',
                      ).image,
                    ),
                  ),
                )
              ],
            ),

            Obx(
              () => myController.allCourses.length == 0
                  ? Container(
                      margin: EdgeInsets.only(top: Get.height * 0.4),
                      child: Center(
                          child: Text(
                        "No Class Added Yet",
                        style: TextStyle(color: Colors.black),
                      )))
                  : ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: myController.allCourses.length,
                      itemBuilder: (_, i) {
                        return Column(children: [
                          Container(


                         /* elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),*/

                            width: Get.width,
                            decoration: BoxDecoration(

                                color: FlutterFlowTheme.primaryColor.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: FlutterFlowTheme.darkBG)),
                            margin: EdgeInsets.only(
                                 top: 11, left:20,right:30),
                            padding: EdgeInsets.all(7),

                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Course Name: ",
                                      style: FlutterFlowTheme.title3
                                          .override(
                                        fontFamily: 'Lexend Deca',
                                        fontSize: 17,
                                      ),
                                    ),

                                    Text(
                                      myController.allCourses[i].courseName,
                                      style: FlutterFlowTheme
                                          .bodyText2
                                          .override(
                                        fontFamily: 'Lexend Deca',
                                        fontSize: 17,
                                        color: FlutterFlowTheme
                                            .primaryColor,
                                      ),
                                    ),

                                  ],

                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Instructor Name: ",
                                      style: FlutterFlowTheme.title3
                                      .override(
                                      fontFamily: 'Lexend Deca',
                                        fontSize: 17,
                                         ),
                                    ),
                                    Text(


                                      myController.allCourses[i].instructorName,
                                      style: FlutterFlowTheme
                                          .bodyText2
                                          .override(
                                        fontFamily: 'Lexend Deca',
                                        fontSize: 17,
                                        color: FlutterFlowTheme
                                            .primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          ListView.builder(

                              itemCount:
                                  myController.allCourses[i].allClasses.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (_, index) {
                                return Container(

                                  decoration: BoxDecoration(
                                      color: FlutterFlowTheme.secondaryColor.withOpacity(0.8),

                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: FlutterFlowTheme.primaryColor)),
                                  margin: EdgeInsets.only(
                                      top: 6, left: 40, right: 10),
                                  padding: EdgeInsets.all(7),
                                  width: MediaQuery.of(context).size.width,

                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Day: ",
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            myController.allCourses[i]
                                                .allClasses[index].day,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Room No: ",
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            myController.allCourses[i]
                                                .allClasses[index].roomNo,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Start Time: ",
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            DateFormat("hh:mm a").format(
                                                myController.allCourses[i]
                                                    .allClasses[index].startTime
                                                    .toDate()),
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "End Time: ",
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            DateFormat("hh:mm a").format(
                                                myController.allCourses[i]
                                                    .allClasses[index].endTime
                                                    .toDate()),
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }),
                          SizedBox(
                            height: 7,
                          )
                        ]);
                      }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddClass()));
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
