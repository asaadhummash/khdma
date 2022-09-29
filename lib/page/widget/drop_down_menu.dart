import 'package:khdma/page/widget/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import 'mediat_text.dart';

class DropDownMenu extends StatelessWidget {
  final List<String> list;
  final String initialValue;
  final String? kfHeaderTitle;
  final String keyName;
  final String? labelText;
  final String? hintText;
  final Function? onChange;
  final bool active;
  final Color? dropdownColor;
  const DropDownMenu(
      {Key? key,
      required this.list,
      this.kfHeaderTitle,
      required this.keyName,
      this.labelText,
      this.hintText,
      this.onChange,
      this.active = true,
      required this.initialValue,
      this.dropdownColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.height20-12),
      margin: const EdgeInsets.only(
        top: 1,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 0,
                offset: const Offset(1, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: labelText != null,
            child: MediatText(
              text: labelText,
            ),
          ),
          Visibility(
            visible: labelText != null,
            child: SizedBox(
              height: Dimensions.height20 - 12,
            ),
          ),
          IgnorePointer(
            ignoring: !active,
            child: FormBuilderDropdown(
              initialValue: initialValue,
              elevation: 5,
              dropdownColor: dropdownColor ?? Colors.black,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: active ? Get.theme.primaryColor : AppColors.yellowColor,
              ),
              name: keyName,
              onChanged: (value) {
                if (onChange != null) {
                  onChange!(value);
                }
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(10),
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  borderSide: BorderSide.none,
                ),
              ),
              hint: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: MediatText(
                  text: hintText,
                ),
              ),
              validator: FormBuilderValidators.compose(
                  [FormBuilderValidators.required(context)]),
              items: list.map((item) => DropdownMenuItem(
                        value: item,
                        child: SmallText(
                          text: item,
                        ),
                      ))
                  .toList(),
              style: Get.textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
