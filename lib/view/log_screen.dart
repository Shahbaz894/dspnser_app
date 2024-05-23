import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../view_model/provider/log_provider.dart'; // Import Provider package

//
// class LogScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Log Status'),
//         backgroundColor: Colors.purple,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Consumer<LogProvider>(
//           builder: (context, logProvider, _) {
//             if (logProvider.data.isEmpty) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//
//             return SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: DataTable(
//                 headingRowColor: MaterialStateProperty.resolveWith<Color?>(
//                       (Set<MaterialState> states) {
//                     return Theme.of(context).colorScheme.primary.withOpacity(0.5);
//                   },
//                 ),
//                 dividerThickness: 2,
//                 columnSpacing: 20,
//                 dataRowHeight: 50,
//                 headingRowHeight: 60,
//                 columns: const <DataColumn>[
//                   DataColumn(label: Text('Sr')),
//                   DataColumn(label: Text('Date')),
//                   DataColumn(label: Text('Time')),
//                   DataColumn(label: Text('Tank-1')),
//                   DataColumn(label: Text('Tank-1%')),
//                   DataColumn(label: Text('Tank-2')),
//                   DataColumn(label: Text('Tank-2%')),
//                   DataColumn(label: Text('Dispenser-1')),
//                   DataColumn(label: Text('Dispenser-2')),
//                   DataColumn(label: Text('Dispenser-3')),
//                   DataColumn(label: Text('Dispenser-4')),
//                 ],
//                 rows: logProvider.data.map<DataRow>((Map<String, dynamic> document) {
//                   final combinedTimestamp = document['Date'] as Timestamp;
//                   final dateTime = combinedTimestamp.toDate();
//                   final formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
//                   final formattedTime = DateFormat('HH:mm:ss').format(dateTime);
//
//                   return DataRow(
//                     cells: <DataCell>[
//                       _buildCuteCell(Text('1')), // Replace '1' with your logic for Sr
//                       _buildCuteCell(Text(formattedDate)),
//                       _buildCuteCell(Text(formattedTime)),
//                       _buildCuteCell(Text(document['Tank-1'].toString())),
//                       _buildCuteCell(Text(document['Tank-1%'].toString())),
//                       _buildCuteCell(Text(document['Tank-2'].toString())),
//                       _buildCuteCell(Text(document['Tank-2%'].toString())),
//                       _buildCuteCell(Text(document['Dispen-1'].toString())),
//                       _buildCuteCell(Text(document['Dispen-2'].toString())),
//                       _buildCuteCell(Text(document['Dispen-3'].toString())),
//                       _buildCuteCell(Text(document['Dispen-4'].toString())),
//                     ],
//                     color: MaterialStateProperty.resolveWith<Color?>(
//                           (Set<MaterialState> states) {
//                         return states.contains(MaterialState.selected)
//                             ? Theme.of(context).colorScheme.primary.withOpacity(0.08)
//                             : null;
//                       },
//                     ),
//                   );
//                 }).toList(),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   DataCell _buildCuteCell(Widget child) {
//     return DataCell(
//       Container(
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         padding: EdgeInsets.all(10),
//         child: Center(child: child),
//       ),
//     );
//   }
// }




class LogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Status'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<LogProvider>(
          builder: (context, logProvider, _) {
            if (logProvider.data.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingRowColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                  },
                ),
                dividerThickness: 2,
                columnSpacing: 20,
                dataRowHeight: 50,
                headingRowHeight: 60,
                columns: const <DataColumn>[
                  DataColumn(label: Text('Sr')),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Time')),
                  DataColumn(label: Text('Tank-1')),
                  DataColumn(label: Text('Tank-1%')),
                  DataColumn(label: Text('Tank-2')),
                  DataColumn(label: Text('Tank-2%')),
                  DataColumn(label: Text('Dispenser-1')),
                  DataColumn(label: Text('Dispenser-2')),
                  DataColumn(label: Text('Dispenser-3')),
                  DataColumn(label: Text('Dispenser-4')),
                ],
                rows: logProvider.data.map<DataRow>((Map<String, dynamic> document) {
                  final combinedTimestamp = document['Date'] as Timestamp;
                  final dateTime = combinedTimestamp.toDate();
                  final formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
                  final formattedTime = DateFormat('HH:mm:ss').format(dateTime);

                  return DataRow(
                    cells: <DataCell>[
                      _buildStyledCell(Text('1')), // Replace '1' with your logic for Sr
                      _buildStyledCell(Text(formattedDate)),
                      _buildStyledCell(Text(formattedTime)),
                      _buildStyledCell(Text(document['Tank-1'].toString())),
                      _buildStyledCell(Text(document['Tank-1%'].toString())),
                      _buildStyledCell(Text(document['Tank-2'].toString())),
                      _buildStyledCell(Text(document['Tank-2%'].toString())),
                      _buildStyledCell(Text(document['Dispen-1'].toString())),
                      _buildStyledCell(Text(document['Dispen-2'].toString())),
                      _buildStyledCell(Text(document['Dispen-3'].toString())),
                      _buildStyledCell(Text(document['Dispen-4'].toString())),
                    ],
                    color: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        return states.contains(MaterialState.selected)
                            ? Theme.of(context).colorScheme.primary.withOpacity(0.08)
                            : null;
                      },
                    ),
                  );
                }).toList(),
              ),
            );
          },
        ),
      ),
    );
  }

  DataCell _buildStyledCell(Widget child) {
    return DataCell(
      Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(child: child),
      ),
    );
  }
}




