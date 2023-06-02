import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/check_box.dart';

class Cardbody extends StatelessWidget {
  Cardbody(
      {Key? key,
      required this.item,
      required this.handleDelete,
      required this.index})
      : super(key: key);

  var item;
  var index;
  final Function handleDelete;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: (index % 2 == 0)
            ? const Color.fromARGB(255, 110, 182, 245)
            : const Color.fromARGB(221, 162, 245, 103),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CheckboxExample(),
            Text(
              
              item.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () async {
                if (await confirm(context)) {
                  handleDelete(item.id);
                }
                return;
              },
              
               
              child: const Icon(
                Icons.delete_outline,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



