import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 100),
          DataTable(
            sortColumnIndex: 0,
            columns: const [
              DataColumn(
                label: Text("First Name"),
              ),
              DataColumn(
                label: Text("Last Name"),
              )
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(
                    Text("Leia"),
                  ),
                  DataCell(
                    Text("Organa"),
                    showEditIcon: true,
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text("Luke"),
                  ),
                  DataCell(
                    Text("Skywalker"),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text("Han"),
                  ),
                  DataCell(
                    Text("Solo"),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
