import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanScreen extends StatelessWidget {
  int jumlah;
  String serialNumber;
  String imei;
  String nozel;
  String produk;

  ScanScreen(
      this.jumlah, this.serialNumber, this.imei, this.nozel, this.produk);

  // Map<String, dynamic> userMap = jsonDecode(hasilQr);

  // GlobalKey qrKey = GlobalKey();

  var qrText = '';
  // QRViewController qrController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                // child: QRView(key: qrKey, onQRViewCreated: onQRViewCreated),
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.35),
                              offset: Offset(1.0, 7.0),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SN / Dispenser'),
                                  Text('ID / IMEI'),
                                  Text('Nozel'),
                                  Text('Produk'),
                                  Text('Jumlah'),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(':'),
                                  Text(':'),
                                  Text(':'),
                                  Text(':'),
                                  Text(':'),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('$serialNumber'),
                                  Text('$imei'),
                                  Text('$nozel'),
                                  Text('$produk'),
                                  Text('Rp $jumlah'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.red,
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
                          'Bayar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  //   void dispose() {
  //     // TODO: implement dispose
  //     qrController?.dispose();
  //     super.dispose();
  //   }

  //   void onQRViewCreated(QRViewController qrViewController){
  //     this.qrController = qrViewController;
  //   }
}
