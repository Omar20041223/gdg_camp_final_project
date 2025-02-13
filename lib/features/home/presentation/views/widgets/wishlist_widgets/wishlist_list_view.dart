import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/wishlist_widgets/wishlist_item.dart';

import '../../../../data/models/products_model.dart';
import '../../../manager/wishlist_cubit/wishlist_cubit.dart';

class WishlistListView extends StatelessWidget {
  const WishlistListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, List<ProductsModel>>(
      builder: (context, wishlist) {
        if (wishlist.isEmpty) {
          return const Center(
            child: Text("Your wishlist is empty"),
          );
        }

        return ListView.builder(
          itemBuilder: (context, index) {
            return WishlistItem(product: wishlist[index]);
          },
          itemCount: wishlist.length,
          physics: const BouncingScrollPhysics(),
        );
      },
    );
  }
}
