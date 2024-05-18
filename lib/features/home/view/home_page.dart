import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';
import 'package:your_tracks_riverpod/const/app_text.dart';
import 'package:your_tracks_riverpod/features/home/widgets/page_header.dart';
import 'package:your_tracks_riverpod/features/home/widgets/status_card.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const PageHeader(),
            10.heightBox,
            const StatusCard().h(200).p(6),
            15.heightBox,
            const AppText(
              text: 'Recent Expenses',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            15.heightBox,
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) => 12.heightBox,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColors.selectionColor.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: AppColors.selectionColor.withOpacity(0.5),
                        width: 0.5,
                      ),
                    ),
                    elevation: 0,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      leading: CircleAvatar(
                        backgroundColor:
                            AppColors.selectionColor.withOpacity(0.5),
                        child: const Icon(
                          Icons.shopping_cart,
                          color: AppColors.kwhite,
                        ),
                      ),
                      title: const AppText(
                        textAlign: TextAlign.left,
                        text: 'bvhg',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AppText(
                            textAlign: TextAlign.right,
                            text: '87876',
                            color: AppColors.kExpIcon,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          AppText(
                            textAlign: TextAlign.right,
                            text: 'hgf',
                            color: AppColors.kBlack.withOpacity(0.2),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ).p12(),
      ),
    );
  }
}
