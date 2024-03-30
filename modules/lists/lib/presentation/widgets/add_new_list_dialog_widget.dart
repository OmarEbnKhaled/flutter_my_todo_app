import 'package:core/utils/colors.dart';
import 'package:core/utils/icons.dart';
import 'package:core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNewListDialogWidget extends StatefulWidget {
  const AddNewListDialogWidget({super.key});

  @override
  State<AddNewListDialogWidget> createState() => _AddNewListDialogWidgetState();
}

class _AddNewListDialogWidgetState extends State<AddNewListDialogWidget> {
  bool chooseColor = true;
  Color colorTheme = myPrimaryColor;
  IconData? currenticonList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('New list', style: TextStyle(fontSize: 24, color: colorTheme)),
          const SizedBox(height: 16),
          _buildChooseIconAndAddTitle(),
          const SizedBox(height: 16),
          chooseColor ? _buildColorList() : _buildIconList(),
          const SizedBox(height: 16),
          _buildDialogBtn()
        ],
      ),
    );
  }

  Row _buildDialogBtn() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: colorTheme,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Create',
                style: TextStyle(
                  color: colorTheme,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
  }

  Row _buildChooseIconAndAddTitle() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              chooseColor = !chooseColor;
            });
          },
          icon: Icon(
            currenticonList ?? Icons.add_reaction_outlined,
            color: colorTheme,
            size: 32,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: CustomTextFormField(
            hint: 'Enter list title',
            colorTheme: colorTheme,
          ),
        ),
      ],
    );
  }

  SizedBox _buildColorList() {
    return SizedBox(
      height: 50,
      child: Expanded(
        child: ListView.builder(
          itemCount: listColorTheme.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(4),
              width: 40,
              height: 40,
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  setState(() {
                    colorTheme = listColorTheme[index];
                  });
                },
                child: CircleAvatar(backgroundColor: listColorTheme[index]),
              ),
            );
          },
        ),
      ),
    );
  }

  SizedBox _buildIconList() {
    return SizedBox(
      height: 50,
      child: Expanded(
        child: ListView.builder(
          itemCount: iconList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  currenticonList = iconList[index].icon;
                  chooseColor = !chooseColor;
                });
              },
              icon: iconList[index],
            );
          },
        ),
      ),
    );
  }
}
