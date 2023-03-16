
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoecart/theme/theme.dart';

import 'viewmodel/vm.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(
      builder: (context, shoesModel, _) => Card(
        child: Wrap(
          runSpacing: 1,
          children: shoesModel.shoes
              .map((shoe) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                  width: 245,
                                  height: 250,
                                  child: Image.network(
                                    shoe.image,
                                    fit: BoxFit.fill,
                                  )),
                               Positioned(
                                  top: 0, left: 0, child: Text("UID:1031",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: colorScheme.onSecondary),)),
                               Positioned(
                                  top: 0, right: 0, child: Text("Stock:01",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: colorScheme.onSecondary),))
                            ],
                          ),
                          SizedBox(
                              // height: 40,
                              // width: 260,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                              shoe.name.toString(),style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              )),
                          SizedBox(
                              // height: 40,
                              width: 250,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Center(
                                    child: Text(shoe.price.toString(),style: Theme.of(context).textTheme.bodyMedium,)),
                                  ),
                                  IconButton(
                                    splashRadius: 20,
                                    onPressed: () {},
                                    icon: const Icon(Icons.shopping_cart),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
