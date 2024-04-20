import 'package:flutter/material.dart';
import 'package:video_player/view/utils/widgets/custom_icon.dart';
import 'package:video_player/view/video_player/widgets/customtext_widget.dart';

class ContainerIconWidget extends StatelessWidget {
  const ContainerIconWidget({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Colors.amber,
          )
        ],
      ),
      child: CustomIconWidget(
        icon: icon,
        size: 10,
      ),
    );
  }
}

class ContainerTextAndIconWidget extends StatelessWidget {
  const ContainerTextAndIconWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // width: 0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Colors.amber,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 20),
        child: Row(
          children: [
            CustomIconWidget(
              icon: icon,
              size: 50,
              color: Colors.amber,
            ),
            CustomTextWidget(
              text: text,
              size: 10,
            )
          ],
        ),
      ),
    );
  }
}
