import 'dart:convert';
import 'package:cashless_app/screens/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class NominalScreen extends StatefulWidget {
  @override
  _NominalScreenState createState() => _NominalScreenState();
}

class _NominalScreenState extends State<NominalScreen> {
  TextEditingController nominalController = TextEditingController();

  int jumlah;
  String serialNumber = '';
  String imei = '';
  String nozel = '';
  String produk = '';
  String hasilQr = 'test';
  bool isSelected = false;
  bool isA = false;
  bool isB = false;
  bool isC = false;
  bool isD = false;
  bool isE = false;
  bool isF = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text('Pilih jumlah pengisian'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isA = !isA;
                    isB = false;
                    isC = false;
                    isD = false;
                    isE = false;
                    isF = false;
                    if (isA == true) {
                      jumlah = 5000;
                    } else
                      jumlah = 0;
                  });
                },
                child: Container(
                  width: 170,
                  height: 65,
                  decoration: BoxDecoration(
                    color: isA == false ? Colors.white : Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.35),
                        offset: Offset(1.0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '5.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isA == false ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isB = !isB;
                    isA = false;
                    isC = false;
                    isD = false;
                    isE = false;
                    isF = false;
                    if (isB == true) {
                      jumlah = 10000;
                    } else
                      jumlah = 0;
                  });
                },
                child: Container(
                  width: 170,
                  height: 65,
                  decoration: BoxDecoration(
                    color: isB == false ? Colors.white : Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.35),
                        offset: Offset(1.0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '10.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isB == false ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isC = !isC;
                    isA = false;
                    isB = false;
                    isD = false;
                    isE = false;
                    isF = false;
                    if (isC == true) {
                      jumlah = 20000;
                    } else
                      jumlah = 0;
                  });
                },
                child: Container(
                  width: 170,
                  height: 65,
                  decoration: BoxDecoration(
                    color: isC == false ? Colors.white : Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.35),
                        offset: Offset(1.0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '20.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isC == false ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isD = !isD;
                    isA = false;
                    isB = false;
                    isC = false;
                    isE = false;
                    isF = false;
                    if (isD == true) {
                      jumlah = 50000;
                    } else
                      jumlah = 0;
                  });
                },
                child: Container(
                  width: 170,
                  height: 65,
                  decoration: BoxDecoration(
                    color: isD == false ? Colors.white : Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.35),
                        offset: Offset(1.0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '50.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isD == false ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isE = !isE;
                    isA = false;
                    isB = false;
                    isC = false;
                    isD = false;
                    isF = false;
                    if (isE == true) {
                      jumlah = 100000;
                    } else
                      jumlah = 0;
                  });
                },
                child: Container(
                  width: 170,
                  height: 65,
                  decoration: BoxDecoration(
                    color: isE == false ? Colors.white : Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.35),
                        offset: Offset(1.0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '100.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isE == false ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isF = !isF;
                    isA = false;
                    isB = false;
                    isC = false;
                    isD = false;
                    isE = false;
                    if (isF == true) {
                      jumlah = 200000;
                    } else
                      jumlah = 0;
                  });
                },
                child: Container(
                  width: 170,
                  height: 65,
                  decoration: BoxDecoration(
                    color: isF == false ? Colors.white : Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.35),
                        offset: Offset(1.0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '200.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isF == false ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('Input jumlah lainnya'),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.black, width: .5, style: BorderStyle.solid),
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                enabled: (isA || isB || isC || isD || isE || isF) != true
                    ? true
                    : false,
                onChanged: (nominalController) {
                  jumlah = int.parse(nominalController);

                  print(jumlah);
                },
                controller: nominalController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Pilih Sendiri',
                  prefixText: 'Rp',
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            )),
          ),
          InkWell(
            onTap: () {
              if (jumlah != 0 || jumlah != null) print(jumlah);

              scanQRCode();

              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (ctx) => ScanScreen(jumlah,hasilQr),
              //   ),
              // );

              print(jumlah);

              // Get.to(() => ScanScreen());
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color:
                    (jumlah == null || jumlah == 0) ? Colors.grey : Colors.red,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.35),
                    offset: Offset(1.0, 7.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Scan QR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          Text(
              'serial number : $serialNumber imei : $imei  nozel : $nozel  produk : $produk jumlah : $jumlah' ??
                  'gada Hasil'),
        ],
      ),
    );
  }

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#FF0000',
        'Cancel',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;
      setState(() {
        hasilQr = qrCode;
        // print(hasilQr);

        Map<String, dynamic> hasil = jsonDecode(hasilQr);

        serialNumber = hasil['serial_number'];
        imei = hasil['imei'];
        nozel = hasil['nozel'];
        produk = hasil['produk'];

        print(
            'serial number : $serialNumber\n imeri : $imei\n nozel : $nozel\n produk : $produk\n jumlah : $jumlah');

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) =>
                ScanScreen(jumlah, serialNumber, imei, nozel, produk),
          ),
        );
        // Get.to(() => ScanScreen());
      });
    } on PlatformException {
      hasilQr = 'Filed to get platform version.';
    }
  }
}
