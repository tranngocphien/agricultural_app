import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';

class ItemCounterWidget extends StatefulWidget {
  final int initialAmount;
  final Function onIncrement;
  final Function onDecrement;

  const ItemCounterWidget(
      {Key? key,
      required this.initialAmount,
      required this.onIncrement,
      required this.onDecrement})
      : super(key: key);

  @override
  _ItemCounterWidgetState createState() => _ItemCounterWidgetState();
}

class _ItemCounterWidgetState extends State<ItemCounterWidget> {
  int amount = 0;

  @override
  void initState() {
    super.initState();
    amount = widget.initialAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconWidget(Icons.remove, iconColor: AppColors.darkGrey, onPressed: () {
          widget.onDecrement();
          setState(() {
            amount--;
          });
        }),
        SizedBox(width: 18),
        Container(
            width: 30,
            child: Center(
                child: getText(
                    text: amount.toString(), fontSize: 18, isBold: true))),
        SizedBox(width: 18),
        iconWidget(Icons.add,
            iconColor: AppColors.primaryColor, onPressed: () {
              widget.onIncrement();
              setState(() {
                amount++;
              });
            })
      ],
    );
  }

  Widget iconWidget(IconData iconData, {Color? iconColor, onPressed}) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed();
        }
      },
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(
            color: Color(0xffE2E2E2),
          ),
        ),
        child: Center(
          child: Icon(
            iconData,
            color: iconColor ?? Colors.black,
            size: 25,
          ),
        ),
      ),
    );
  }

  Widget getText({
    required String text,
    required double fontSize,
    bool isBold = false,
    color = Colors.black,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }
}
