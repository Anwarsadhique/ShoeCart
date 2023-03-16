import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme/theme.dart';
import 'viewmodel/vm.dart';

class Size extends StatelessWidget {
  const Size({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: Center(
              child: Text(
                "Choose Your Size",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          Wrap(
            runSpacing: -5,
            spacing: -5,
            children: [
              sizeButton(context, 1),
              sizeButton(context, 1.5),
              sizeButton(context, 2),
              sizeButton(context, 2.5),
              sizeButton(context, 3),
              sizeButton(context, 3.5),
              sizeButton(context, 4),
              sizeButton(context, 4.5),
              sizeButton(context, 5),
              sizeButton(context, 5.5),
              sizeButton(context, 6),
              sizeButton(context, 6.5),
              sizeButton(context, 7),
              sizeButton(context, 7.5),
              sizeButton(context, 8),
              sizeButton(context, 8.5),
              sizeButton(context, 9),
              sizeButton(context, 9.5),
              sizeButton(context, 10),
              sizeButton(context, 10.5),
              sizeButton(context, 11),
              sizeButton(context, 11.5),
              sizeButton(context, 12),
              sizeButton(context, 12.5),
              sizeButton(context, 13),
              sizeButton(context, 13.5),
              sizeButton(context, 14),
              sizeButton(context, 14.5),
              sizeButton(context, 15),
              sizeButton(context, 15.5),
              sizeButton(context, 16),
              sizeButton(context, 16.5),
              sizeButton(context, 17),
              sizeButton(context, 17.5),
              sizeButton(context, 18),
              sizeButton(context, 18.5),
              sizeButton(context, 19),
              sizeButton(context, 19.5),
            ],
          ),
        ],
      ),
    );
  }
}

Widget sizeButton(BuildContext context, double size) {
  final shoeModel = Provider.of<ViewModel>(context);
  return SizedBox(
    height: 40,
    width: 50,
    child: Card(
      color: shoeModel.selectedSize != size
          ? colorScheme.primary
          : colorScheme.tertiary,
      child: IconButton(
        splashColor: colorScheme.secondary,
        onPressed: () {
          shoeModel.selectedSize = size;
        },
        icon: Center(child: Text('$size', style: Theme.of(context).textTheme.bodySmall?.copyWith( color: shoeModel.selectedSize != size
          ? Colors.amber
          : Colors.red,),)),
      ),
    ),
  );
}
