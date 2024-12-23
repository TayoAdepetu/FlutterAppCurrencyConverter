import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 1550;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myOwnContainer = Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
      color: CupertinoColors.inactiveGray,
      child: Text(
        'NGN ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
        style: const TextStyle(
            fontSize: 35,
            color: CupertinoColors.white,
            fontWeight: FontWeight.w700),
      ),
    );

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Currency Converter"),
        backgroundColor: CupertinoColors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Hello, Esther Komolafe.",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              "Here is your currency converter?",
              style: TextStyle(fontSize: 25),
            ),
            myOwnContainer,
            Container(
              padding: const EdgeInsets.all(30),
              child: CupertinoTextField(
                controller: textEditingController,
                style: TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: "Kindly click to enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            CupertinoButton(
              onPressed: convert,
              color: CupertinoColors.black,
              child: Text("Convert"),
            ),
          ],
        ),
      ),
    );
  }
}
