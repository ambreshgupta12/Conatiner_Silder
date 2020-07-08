import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data tABLE"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
           height: 20.0,
          ),
          Center(child: Text("Student", style: TextStyle(color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.bold),)),
          DataTable(
            dividerThickness: 5.0,
            headingRowHeight: 10.0,
            horizontalMargin: 20.0,
            columnSpacing: 5.0,
          columns: [
            DataColumn(label: Text("S.N0")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Roll No")),
            DataColumn(label: Text("Address")),
          ],
           rows: [
             DataRow(cells: [
               DataCell(Text("1")),
               DataCell(Text("Sagar")),
               DataCell(Text("1")),
               DataCell(Text("BKT")),
             ]),
             DataRow(cells: [
               DataCell(Text("2")),
               DataCell(Text("SaNAM")),
               DataCell(Text("2")),
               DataCell(Text("BKT")),
             ]),
             DataRow(cells: [
               DataCell(Text("3")),
               DataCell(Text("keshav")),
               DataCell(Text("3")),
               DataCell(Text("BKT")),
             ]),
             DataRow(cells: [
               DataCell(Text("4")),
               DataCell(Text("Pancha")),
               DataCell(Text("4")),
               DataCell(Text("BKT")),
             ])
           ])
        ],
      ),
      
    );
  }
}