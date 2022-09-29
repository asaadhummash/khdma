import 'package:khdma/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/register_controller_original.dart';
import '../../utils/dimensions.dart';

class SelectRoll extends StatelessWidget {
  final Function(bool value) onTapRoll;
  final String rollValue;
  final Function(String values) onTapController;

  SelectRoll({
    Key? key,
    required this.onTapRoll,
    required this.rollValue,
    required this.onTapController,
  }) : super(key: key);

  final RegisterController registerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
      child: Container(
        height: Dimensions.height45 + 5,
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          // color: Colors.black45,
        ),
        child: Row(
          children: [
            Flexible(
              child: InkWell(
                onTap: () {
                  onTapRoll(true);
                  onTapController("Client");
                  registerController.role();
                },
                child: Container(
                  color: rollValue == "Client" ? Colors.grey : Colors.white,
                  child: const Center(
                    child: Text("Client"),
                  ),
                ),
              ),
            ),
            const VerticalDivider(
              width: 2,
              color: Colors.black45,
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  onTapRoll(false);
                  onTapController("Worker");
                },
                child: Container(
                  color: rollValue == "Worker" ? Colors.grey : Colors.white,
                  child: const Center(
                    child: Text("Worker"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
