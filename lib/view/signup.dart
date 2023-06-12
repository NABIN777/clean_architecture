import 'package:flutter/material.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

import '../model/student.dart';
import '../state/batch_state.dart';
import '../state/course_state.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  List<Student> lstlogin = [];
  String? selectedBatch;
  String? selectedCourse;

  final gap = const SizedBox(
    height: 8,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          gap,
          SizedBox(
              child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'First Name',
              hintText: 'enter ur First Name',
            ),
          )),
          gap,
          SizedBox(
              child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Last Name',
              hintText: 'enter ur Last Name',
            ),
          )),
          gap,
          SizedBox(
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'phone no',
                hintText: 'enter ur Phone no',
              ),
            ),
          ),
          DropdownButtonFormField(
            validator: (value) {
              if (value == null) {
                return 'Please select city';
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: 'Batch',
              border: OutlineInputBorder(),
            ),
            items: BatchState.batch
                .map(
                  (batches) => DropdownMenuItem(
                    value: batches,
                    child: Text(batches),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedBatch = value;
              });
            },
          ),
          gap,
          MultiSelectDialogField(
            items: CourseState.course
                .map((batches) => MultiSelectItem(batches, batches))
                .toList(),
            listType: MultiSelectListType.CHIP,
            onConfirm: (values) {
              selectedCourse = values.toString();
            },
          ),
          const SizedBox(
            height: 8,
            width: double.infinity,
          ),
          SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Register')),
          )
        ],
      ),
    );
  }
}
