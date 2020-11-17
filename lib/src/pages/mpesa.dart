import 'package:mpesa/mpesa.dart';

void MpesaPay(var phoneNumber, var amountPrice) {

  var mpesa = Mpesa(
    clientKey: "O2AAPhv5r28JNYmA65jkVw3npSDLofHF",
    clientSecret: "u6HJAwQf8CpPhk0Y",
    passKey: "YOUR_LNM_PASS_KEY_HERE",
    initiatorPassword: "YOUR_SECURITY_CREDENTIAL_HERE",
    environment: "sandbox",
  );

  mpesa
      .lipaNaMpesa(
    phoneNumber: phoneNumber,
    amount: amountPrice,
    businessShortCode: "5343343",
    callbackUrl: "",
  )
      .then((result) {

  })
      .catchError((error) {});
}