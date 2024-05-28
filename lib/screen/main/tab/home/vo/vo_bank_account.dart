import 'vo_bank.dart';

class BankAccount {
  final Bank bank;
  //final String accountNumber;
  //final String accountHolderName; // 게좌 소유주, 은행 등은 바뀌지 않으므로 final
  // 잔액은 바뀌니까 final 사용 안 함다
  int balance;
  final String? accountTypeName; // 꼭 필요한건 아니면 ? 사용

  BankAccount(
    this.bank,
    //this.accountNumber,
    //this.accountHolderName,
    this.balance,{
    this.accountTypeName, //accountTypeName은 선언해도 되고 안 해도 된다.
  });
}
