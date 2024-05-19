import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kvebis_app/core/base/view/base_widget.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/feature/admin/nursery_operations/viewmodel/operations_viewmodel.dart';

@RoutePage()
class OperationsView extends StatelessWidget {
  OperationsView({super.key});
  final operationsViewModel = OperationsViewModel();
  @override
  Widget build(BuildContext context) {
    return BaseView<OperationsViewModel>(
      viewModel: operationsViewModel,
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (context, operationsViewModel) => Scaffold(
        key: operationsViewModel.scaffoldState,
        appBar: AppBar(
          title: const Text(
            StringConstants.nurseryOperations,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: ColorConstants.buttonColor,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Observer(
          builder: (_) {
            return operationsViewModel.isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: operationsViewModel.nursery.length,
                    itemBuilder: (context, index) {
                      final nurseryItem = operationsViewModel.nursery[index];
                      return ListTile(
                        onTap: () {},
                        trailing: Text(
                          '${nurseryItem.monthlyFeeForNursery} TL',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        leading: const Icon(Icons.home),
                        title: Text(
                          nurseryItem.nurseryName.toString(),
                        ),
                        subtitle: Text(
                          '${nurseryItem.nurseryOwnersName} ${nurseryItem.nurseryOwnersSurname}',
                        ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
