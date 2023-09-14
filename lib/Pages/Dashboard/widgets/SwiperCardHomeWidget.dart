import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import '../../../Constant/ScreenSpace.dart';
import 'SwiperCard.dart';

class SwiperCardHomeWidget extends StatelessWidget {
  const SwiperCardHomeWidget({
    super.key,
    required this.swiper,
  });

  final List<SwiperCard> swiper;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSpace.width(context),
     child:  Swiper(
        itemWidth: ScreenSpace.width(context)*0.85,
        itemHeight: ScreenSpace.bodyheight(context)*0.26,
        loop: false,
        duration: 800,
        scrollDirection: Axis.horizontal,
        axisDirection: AxisDirection.right,
        itemBuilder: (context, index) {
          return swiper[index];
        },
        itemCount: swiper.length,
        layout: SwiperLayout.STACK,
      ),
    );
  }
}