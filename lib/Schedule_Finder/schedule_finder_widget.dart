import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../view_or_create_timetable/view_or_create_timetable_widget.dart';
import '../ui/my_classes.dart';

class scheduleFinder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.5, 0.6 , 0.7, 0.9, 1],
              colors: [Colors.black.withOpacity(0.4),FlutterFlowTheme.primaryColor.withOpacity(0.4),FlutterFlowTheme.secondaryColor.withOpacity(0.7),FlutterFlowTheme.primaryColor.withOpacity(0.4),FlutterFlowTheme.primaryColor.withOpacity(0.2),Colors.black.withOpacity(0.1)])),
    child: Scaffold(
      //key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.darkBG,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Timetable',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Lexend Deca',
            fontWeight: FontWeight.w900,
            fontSize: 23,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Align(
            alignment: Alignment(0, 0.05),
            child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text(
              "View or update your existing timetable \n",
              style: TextStyle(color: FlutterFlowTheme.white ,fontSize: 20),
              textAlign: TextAlign.center
            ),
            RaisedButton(
            child: Text('View Timetable'),
            color: FlutterFlowTheme.primaryColor,
            textColor: FlutterFlowTheme.white,
            onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyClasses(),
                            ),
                          );
                        }
            ),
            Text('\n- OR -\n',style: TextStyle(color: FlutterFlowTheme.primaryColor ,fontSize: 15),
              textAlign: TextAlign.center),
            Text(
              "Upload your university timetable and we'll create a clash-free schedule for you \n",
              style: TextStyle(color: FlutterFlowTheme.white ,fontSize: 20),
              textAlign: TextAlign.center
            ),
            RaisedButton(
            child: Text('Upload timetable'),
            color: FlutterFlowTheme.primaryColor,
            textColor: FlutterFlowTheme.white,
            //onPressed: () => Navigator.pop(context)
            onPressed: () async {
            var picked = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: ['xlsx'],
            );
            if (picked != null) {
                print(picked.files.first.name);
            }
            },
        ),
        
          ],
        )
        /*
        child: RaisedButton(
            child: Text('Upload timetable'),
            color: FlutterFlowTheme.primaryBlack,
            textColor: FlutterFlowTheme.primaryColor,
            onPressed: () => Navigator.pop(context)
        ),
        */
        ),
      ),
    )
      ),
    ),
    );
  }
}