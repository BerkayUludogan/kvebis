// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_nursery_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddNurseryViewModel on _AddNurseryViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_AddNurseryViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isVisibleAtom =
      Atom(name: '_AddNurseryViewModelBase.isVisible', context: context);

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  late final _$_AddNurseryViewModelBaseActionController =
      ActionController(name: '_AddNurseryViewModelBase', context: context);

  @override
  void isLoadingChange() {
    final _$actionInfo = _$_AddNurseryViewModelBaseActionController.startAction(
        name: '_AddNurseryViewModelBase.isLoadingChange');
    try {
      return super.isLoadingChange();
    } finally {
      _$_AddNurseryViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void isVisibleStateChange() {
    final _$actionInfo = _$_AddNurseryViewModelBaseActionController.startAction(
        name: '_AddNurseryViewModelBase.isVisibleStateChange');
    try {
      return super.isVisibleStateChange();
    } finally {
      _$_AddNurseryViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isVisible: ${isVisible}
    ''';
  }
}
