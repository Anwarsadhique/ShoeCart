import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodel/vm.dart';
import 'theme/theme.dart';

class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModel>(context);
    return ChangeNotifierProvider(
      create: (context) => ViewModel(),
      child: Card(
        child: SizedBox(
          height: 120,
          child: Column(
            children: [
              SizedBox(
                height: 45,
                child: Center(
                    child: Column(
                  children: [
                    Text(
                      "Price Range",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Consumer<ViewModel>(
                      builder: (context, viewModel, child) {
                        return Text(
                            "${viewModel.rangeMin} - ${viewModel.rangeMax}",style: Theme.of(context).textTheme.bodySmall,);
                      },
                    ),
                  ],
                )),
              ),
              Consumer<ViewModel>(
                builder: (context, model, child) {
                  return RangeSlider(
                    min: 0,
                    max: 10000,
                    // divisions: 100,
                    activeColor: colorScheme.primary,
                    inactiveColor: colorScheme.tertiary,
                    labels: RangeLabels(
                      viewModel.currentRangeValues.start.round().toString(),
                      viewModel.currentRangeValues.end.round().toString(),
                    ),
                    values: viewModel.currentRangeValues,
                    onChanged: (RangeValues values) {
                      viewModel.currentRangeValues = values;
                      viewModel.filterShoesByPrice();
                      model.updateValues(values);
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 23, left: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      "Min",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "Max",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
