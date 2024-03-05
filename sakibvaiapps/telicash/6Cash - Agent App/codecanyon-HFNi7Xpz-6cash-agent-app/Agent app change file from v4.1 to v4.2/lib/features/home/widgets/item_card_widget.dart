import 'package:flutter/material.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_ink_well_widget.dart';

class ItemCardWidget extends StatelessWidget {
  final String? image;
  final String? text;
  final VoidCallback? onTap;
  final Color? color;
   const ItemCardWidget({Key? key, this.image, this.text, this.onTap, this.color}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
     return Container(
       margin: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraSmall),
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radiusSizeDefault), color: color,
         boxShadow: [BoxShadow(color: Theme.of(context).cardColor.withOpacity(0.1), blurRadius: 40, offset: const Offset(0, 4))]),


       child: CustomInkWellWidget(
         onTap: onTap,
         radius: Dimensions.radiusSizeDefault,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             const SizedBox(height: Dimensions.paddingSizeLarge),

             Container(padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
               decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0.7)),
               child: SizedBox(height: 23, width: 23,
                 child: Image.asset(image!, fit: BoxFit.contain))),
             const SizedBox(height: 10),



             Padding(padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraSmall),
               child: Text(text!, textAlign: TextAlign.center, maxLines: 2, style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeDefault, color: ColorResources.getBlackAndWhite(),),),
             )
           ],
         ),
       ),
     );
  }
}