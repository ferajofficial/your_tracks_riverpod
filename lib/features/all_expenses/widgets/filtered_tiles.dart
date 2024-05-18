import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks_riverpod/const/app_colors.dart';

class FilteredTiles extends StatelessWidget {
  const FilteredTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: AppColors.selectionColor.withOpacity(0.5),
                  width: 0.5,
                ),
              ),
              color: AppColors.selectionColor.withOpacity(0.1),
              elevation: 0,
              child: ListTile(
                title: const Text('Title'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete_rounded)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.edit_rounded)),
                  ],
                ),
              ),
            ),
        separatorBuilder: (context, index) => 5.heightBox,
        itemCount: 20);
  }
}
