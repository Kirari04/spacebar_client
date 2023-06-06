import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../models/theme_colors.dart';

class SubNavigationButtonImage extends StatefulWidget {
  const SubNavigationButtonImage({super.key, this.image, this.svg});
  final String? image;
  final String? svg;
  @override
  State<SubNavigationButtonImage> createState() =>
      _SubNavigationButtonImageState();
}

class _SubNavigationButtonImageState extends State<SubNavigationButtonImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeColors.primaryColor,
        borderRadius: BorderRadius.circular(99),
      ),
      clipBehavior: Clip.hardEdge,
      height: 35,
      width: 35,
      child: widget.image == null && widget.svg == null
          ? const Padding(
              padding: EdgeInsets.all(10),
              child: Image(image: AssetImage("assets/no-image.png")),
            )
          : Container(
              child: widget.svg != null
                  ? SvgPicture.asset(
                      widget.svg!,
                      fit: BoxFit.contain,
                    )
                  : Image(
                      image: AssetImage(widget.image!),
                      fit: BoxFit.fill,
                    ),
            ),
    );
  }
}
