import 'package:mobx/mobx.dart';
import 'package:tractian/src/models/company_model.dart';
import 'package:tractian/src/repositories/company_repository.dart';

part 'company_viewmodel.g.dart';

class CompanyViewModel = ComapanyBase with _$CompanyViewModel;

abstract class ComapanyBase with Store {
  CompanyRepository _repository;

  ComapanyBase(this._repository);

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @observable
  List<CompanyModel> companies = [];

  @action
  loadCompanies() async {
    try {
      isLoading = true;
      companies = await _repository.fetchCompanies();
      isLoading = false;
    } catch (e) {
      errorMessage = e.toString();
    }
  }
}
