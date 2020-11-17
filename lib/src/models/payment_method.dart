import 'package:flutter/widgets.dart';

import '../../generated/l10n.dart';

class PaymentMethod {
  String id;
  String name;
  String description;
  String logo;
  String route;
  bool isDefault;
  bool selected;

  PaymentMethod(this.id, this.name, this.description, this.route, this.logo, {this.isDefault = false, this.selected = false});
}

class PaymentMethodList {
  List<PaymentMethod> _paymentsList;
  List<PaymentMethod> _cashList;
  List<PaymentMethod> _pickupList;

  PaymentMethodList(BuildContext _context) {
    this._paymentsList = [
      new PaymentMethod("visacard", S.of(_context).visa_card, S.of(_context).click_to_pay_with_your_visa_card, "/Checkout", "assets/img/visacard.png",
          isDefault: true),
      //new PaymentMethod("mastercard", S.of(_context).mastercard, S.of(_context).click_to_pay_with_your_mastercard, "/Checkout", "assets/img/mastercard.png"),
      //new PaymentMethod("razorpay", S.of(_context).razorpay, S.of(_context).clickToPayWithRazorpayMethod, "/RazorPay", "assets/img/razorpay.png"),
      //new PaymentMethod("paypal", S.of(_context).paypal, S.of(_context).click_to_pay_with_your_paypal_account, "/PayPal", "assets/img/paypal.png"),
      new PaymentMethod("mpesa", "Mpesa", "Click to pay with mpesa", "/PayOnPickup", "assets/img/mpesa.png"),
    ];
    this._cashList = [
      new PaymentMethod("cod", S.of(_context).cash_on_delivery, S.of(_context).click_to_pay_cash_on_delivery, "/CashOnDelivery", "assets/img/cash.png"),
    ];
    this._pickupList = [
      new PaymentMethod("pop", "Mpesa Payment", "Click to pay with Mpesa", "/PayOnPickup", "assets/img/mpesa.png"),
      new PaymentMethod("delivery", S.of(_context).delivery_address, S.of(_context).click_to_pay_on_pickup, "/PaymentMethod", "assets/img/pay_pickup.png"),
    ];
  }

  List<PaymentMethod> get paymentsList => _paymentsList;
  List<PaymentMethod> get cashList => _cashList;
  List<PaymentMethod> get pickupList => _pickupList;
}
