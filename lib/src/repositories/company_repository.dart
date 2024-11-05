import 'package:dio/dio.dart';
import 'package:tractian/src/models/company_model.dart';

class CompanyRepository {
  Dio _client;

  CompanyRepository(this._client);

  Future<List<CompanyModel>> fetchCompanies() async {
    try {
      final response = await _client.get('/companies');
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => CompanyModel.fromJson(e))
            .toList();
      } else {
        throw Exception('Failed to fetch companies');
      }
    } catch (e) {
      rethrow;
    }
  }
}
