// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CompanyViewModel on ComapanyBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'ComapanyBase.isLoading', context: context);

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

  late final _$errorMessageAtom =
      Atom(name: 'ComapanyBase.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$companiesAtom =
      Atom(name: 'ComapanyBase.companies', context: context);

  @override
  List<CompanyModel> get companies {
    _$companiesAtom.reportRead();
    return super.companies;
  }

  @override
  set companies(List<CompanyModel> value) {
    _$companiesAtom.reportWrite(value, super.companies, () {
      super.companies = value;
    });
  }

  late final _$loadCompaniesAsyncAction =
      AsyncAction('ComapanyBase.loadCompanies', context: context);

  @override
  Future loadCompanies() {
    return _$loadCompaniesAsyncAction.run(() => super.loadCompanies());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
companies: ${companies}
    ''';
  }
}
