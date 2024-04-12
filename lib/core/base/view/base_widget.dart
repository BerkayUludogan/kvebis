import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  const BaseView({
    required this.onPageBuilder,
    required this.viewModel,
    required this.onModelReady,
    super.key,
    this.onDispose,
  });
  final Widget Function(BuildContext context, T viewModel) onPageBuilder;
  final T viewModel;
  final void Function(T model) onModelReady;
  final VoidCallback? onDispose;

  @override
  State<BaseView> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T model;
  @override
  void initState() {
    super.initState();
    model = widget.viewModel;
    widget.onModelReady(model);
  }

  @override
  void dispose() {
    super.dispose();
    widget.onDispose?.call();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, model);
  }
}
