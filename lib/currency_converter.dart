import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State createState() => _CurrencyConverta();
}

class _CurrencyConverta extends State {
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
    final myOwnVariable = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(60)),
    );

    final myOwnContainer = Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
      color: Colors.grey,
      child: Text(
        'NGN ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
        style: const TextStyle(
            fontSize: 35, color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Currency Converter"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
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
              child: TextField(
                controller: textEditingController,
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  label: Text(
                    "Kindly click to enter the amount in USD",
                    style: TextStyle(fontSize: 15),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: myOwnVariable,
                  enabledBorder: myOwnVariable,
                ),
              ),
            ),
            TextButton(
              onPressed: convert,
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey),
              ),
              child: Text(
                "Convert",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterr extends StatelessWidget {
//   const CurrencyConverterr({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print("rebuilt");
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();

//     final myOwnVariable = OutlineInputBorder(
//       borderSide: BorderSide(
//         color: Colors.black,
//         width: 1.0,
//         style: BorderStyle.solid,
//       ),
//       borderRadius: BorderRadius.all(Radius.circular(60)),
//     );

//     final myOwnContainer = Container(
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
//       color: Colors.grey,
//       child: Text(
//         result.toString(),
//         style: const TextStyle(
//             fontSize: 35, color: Colors.white, fontWeight: FontWeight.w700),
//       ),
//     );

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("Currency Converter"),
//         backgroundColor: Colors.white,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Hello, Esther Komolafe.",
//               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "Here is your currency converter?",
//               style: TextStyle(fontSize: 25),
//             ),
//             myOwnContainer,
//             Container(
//               padding: const EdgeInsets.all(30),
//               child: TextField(
//                 controller: textEditingController,
//                 keyboardType: TextInputType.numberWithOptions(
//                   decimal: true,
//                 ),
//                 style: TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   label: Text(
//                     "Kindly click to enter the amount in USD",
//                     style: TextStyle(fontSize: 15),
//                   ),
//                   prefixIcon: Icon(Icons.monetization_on),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: myOwnVariable,
//                   enabledBorder: myOwnVariable,
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 result = double.parse(textEditingController.text) * 1550;
//                 build(context);
//               },
//               style: const ButtonStyle(
//                 backgroundColor: WidgetStatePropertyAll(Colors.grey),
//               ),
//               child: Text(
//                 "Convert",
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
