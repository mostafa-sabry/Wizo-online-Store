import 'package:flutter/material.dart';

import 'package:online_store/features/home/presentation/widget/produt_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 14,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 17 / 18,
        ),
        itemBuilder: (context, index) {
          return const ProductWidget();
        },
      ),
    );
  }
}
