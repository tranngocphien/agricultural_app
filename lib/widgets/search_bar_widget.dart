import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  final String searchIcon = "assets/icons/search_icon.svg";
  final Function()? onTap;

  const SearchBarWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              searchIcon,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Tìm kiếm sản phẩm",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7C7C7C)),
            )
          ],
        ),
      ),
    );
  }
}
