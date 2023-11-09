import 'package:flutter/material.dart';

class ContentGridView extends StatelessWidget {
  final int itemCount;
  final List<String> itemBody;
  final Function(int index) onTap;
  final int? crossAxisCount;
  final Axis? scrollDirection;
  final double? childAspectRatio;
  final ScrollPhysics? physics;
  final double? borderRadius;
  final List<Color> borderColor;
  final Alignment? textAlignment;
  const ContentGridView({
    super.key,
    required this.itemCount,
    required this.itemBody,
    required this.onTap,
    required this.borderColor,
    this.crossAxisCount = 3,
    this.scrollDirection = Axis.vertical,
    this.childAspectRatio = 1,
    this.physics = const NeverScrollableScrollPhysics(),
    this.borderRadius = 10,
    this.textAlignment = Alignment.bottomLeft,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: scrollDirection == Axis.horizontal ? 140 : null,
      child: GridView.count(
        crossAxisCount: crossAxisCount!,
        shrinkWrap: true,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        physics: physics,
        scrollDirection: scrollDirection!,
        childAspectRatio: childAspectRatio!,
        children: List.generate(
          itemCount,
          (index) => GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: borderColor[index]),
                borderRadius: BorderRadius.circular(borderRadius!),
              ),
              child: Align(
                alignment: textAlignment!,
                child: Padding(
                  padding: textAlignment == null ? const EdgeInsets.only(bottom: 10, left: 8) : EdgeInsets.zero,
                  child: Text(
                    itemBody[index],
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 16, height: 1.3),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
