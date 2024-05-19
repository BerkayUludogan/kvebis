// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operations_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OperationsViewModel on _OperationsViewModelBase, Store {
  late final _$nurseryAtom =
      Atom(name: '_OperationsViewModelBase.nursery', context: context);

  @override
  ObservableList<AddNursery> get nursery {
    _$nurseryAtom.reportRead();
    return super.nursery;
  }

  @override
  set nursery(ObservableList<AddNursery> value) {
    _$nurseryAtom.reportWrite(value, super.nursery, () {
      super.nursery = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_OperationsViewModelBase.isLoading', context: context);

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

  late final _$fetchNurserysAsyncAction =
      AsyncAction('_OperationsViewModelBase.fetchNurserys', context: context);

  @override
  Future<List<AddNursery>> fetchNurserys() {
    return _$fetchNurserysAsyncAction.run(() => super.fetchNurserys());
  }

  late final _$_OperationsViewModelBaseActionController =
      ActionController(name: '_OperationsViewModelBase', context: context);

  @override
  void isLoadingChange() {
    final _$actionInfo = _$_OperationsViewModelBaseActionController.startAction(
      name: '_OperationsViewModelBase.isLoadingChange',
    );
    try {
      return super.isLoadingChange();
    } finally {
      _$_OperationsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nursery: ${nursery},
isLoading: ${isLoading}
    ''';
  }
}
