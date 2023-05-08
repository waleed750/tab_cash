import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
import 'package:tab_cash_orange/features/authentication/presentation/widgets/card_item_container.dart';
import 'package:tab_cash_orange/features/authentication/presentation/widgets/search_container.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/icon_manager.dart';
import '../widgets/search_form_field.dart';

class ServicesScreeen extends StatelessWidget {
   ServicesScreeen({super.key});
  
  TextEditingController searchController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
       appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.backgroundColor,
          ),
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
                "services",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black
                ),
                ),
          centerTitle: true,      
        ),
        body: SingleChildScrollView(
          child: Column(
           
            children: 
            [
             SizedBox(
              height: context.height*.03,
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
              width: context.width * .85,
              suffixIcon: Image.asset(IconManager.scanIcon),
             ),
             
             SizedBox(height: context.height*.03,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.compare_arrows ,
                title: "Send money",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.add_card_outlined , //diversity_3_rounded
                title: "Card deposit",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.upload_file_outlined , 
                title: "recharge the balance",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.payment , 
                title: "Online payment card",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.diversity_3_rounded , 
                title: "Family Wallet",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.fit_screen_outlined , 
                title: "scan",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.phone_android , //diversity_3_rounded
                title: "Mobile bill",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.people , 
                title: "Package renewal",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.settings_remote_sharp , 
                title: "ADSL renewal",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
               child: CardItemContainer(
                icon:Icons.qr_code ,
                title: "My QR code",
               ),
             ),
            ]
            ),
        ) ,
    );
  }
}