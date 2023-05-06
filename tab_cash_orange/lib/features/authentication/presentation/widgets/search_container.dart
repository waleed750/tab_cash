import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
import 'package:tab_cash_orange/features/authentication/presentation/widgets/search_form_field.dart';

import '../../../../core/utils/app_colors.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key, required this.searchController});
  final searchController;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_outline_outlined,
            size: 34,
            color: AppColors.backgroundColor,
          ),
         const SizedBox(
            width: 10,
          ),
          SearchFormField(
            controller: searchController,
            height: context.height * .05,
            hintText: "Search",
            prefixIcon: Icon(
              Icons.search,
              size: 25,
              color: AppColors.searchColor,
            ),
            width: context.width * .7,
          ),
         const SizedBox(
            width: 8,
          ),
         const Icon(
            Icons.notifications_none,
            size: 34,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
