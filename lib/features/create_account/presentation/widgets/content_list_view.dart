import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/content_grid_view.dart';

class ContentListView extends StatelessWidget {
  final int itemCount;
  final List<String> itemTitle;
  final ScrollPhysics? physics;
  const ContentListView({
    super.key,
    required this.itemCount,
    required this.itemTitle,
    this.physics = const NeverScrollableScrollPhysics(),
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: physics,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              itemTitle[index],
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ContentGridView(
            crossAxisCount: 2,
            textAlignment: Alignment.center,
            itemCount: XMainContentString.contentTitles.length,
            itemBody: XMainContentString.contentTitles,
            onTap: (i) => BlocProvider.of<CreateAccountCubit>(context)
                .changeSelectedSubContent(index),
            borderColor:
                BlocProvider.of<CreateAccountCubit>(context).selectedSubColors,
            scrollDirection: Axis.horizontal,
            childAspectRatio: 1 / 2.2,
            borderRadius: 30,
            physics: const AlwaysScrollableScrollPhysics(),
          ),
        ],
      ),
      separatorBuilder: (context, index) =>
          const Divider(color: XColors.whiteColor),
      itemCount: itemCount,
    );
  }
}
