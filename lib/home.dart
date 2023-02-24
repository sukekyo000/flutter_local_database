
import 'package:flutter/material.dart';
import 'package:local_database/domain/pref_repository.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  final prefRepository = PrefRepository();
                  // INSERT
                  // prefRepository.insertPref(Pref(prefId: 1, prefName: "北海道", prefKana: "ホッカイドウ"));

                  // SELECT
                  // List<Pref> prefs = await prefRepository.getPref();
                  // print(prefs[0].prefName);
                  // print(prefs);

                  // UPDATE
                  // prefRepository.updatePref(Pref(prefId: 1, prefName: "北海道", prefKana: "ホッカイドウ"));

                  // DELETE
                  // prefRepository.deletePref(1);
                },
                child: const Text("テスト")
            )
          ],
        ),
      ),
    );
  }
}