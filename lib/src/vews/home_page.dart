import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tractian/injection.dart';

import 'package:tractian/src/viewmodels/company_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CompanyViewModel viewModel = getIt<CompanyViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.loadCompanies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset('assets/images/logo.png'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(23, 25, 45, 1)),
      body: Observer(builder: (_) {
        if (viewModel.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (viewModel.errorMessage.isNotEmpty) {
          return const Center(
            child: Text('Não foi possível carregar as companias'),
          );
        }

        return ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(33, 136, 255, 1),
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(Icons.account_tree, color: Colors.white),
                      const SizedBox(width: 10),
                      Text(
                        viewModel.companies[index].name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  )),
            );
          },
          itemCount: viewModel.companies.length,
        );
      }),
    );
  }
}
