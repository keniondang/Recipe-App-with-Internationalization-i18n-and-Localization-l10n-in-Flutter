import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class ExchangeRatesProvider with ChangeNotifier {
  late Map<String, dynamic> _exchangeRates;
  bool fetching = false;

  Map<String, dynamic> get exchangeRates => _exchangeRates;

  fetchExchangeRates(context) async {
    fetching = true;
    await _fetchExchangeRates();
    fetching = false;

    notifyListeners();
  }

  Future<void> _fetchExchangeRates() async {
    final respone = await http.get(Uri.parse(
        'https://cdn.jsdelivr.net/npm/@fawazahmed0/currency-api@latest/v1/currencies/usd.json'));

    late String data;

    if (respone.statusCode == 200) {
      data = respone.body;
    } else {
      data = await rootBundle.loadString('assets/usd_xr.json');
    }

    final json = jsonDecode(data);

    _exchangeRates = json["usd"] as Map<String, dynamic>;
  }
}
