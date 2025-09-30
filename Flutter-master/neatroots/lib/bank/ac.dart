

class Ac {


  String? accountNumber;
  String? accountName;
  String? bankName;
  String? branchCode;
  String? ifscCode;
  String? swiftCode;
  String? iban;
  String? routingNumber;
  String? accountType; // e.g., savings, checking, etc.
  double? balance; // Current balance in the account

  Ac({
    this.accountNumber,
    this.accountName,
    this.bankName,
    this.branchCode,
    this.ifscCode,
    this.swiftCode,
    this.iban,
    this.routingNumber,
    this.accountType,
    this.balance,
  });
}
