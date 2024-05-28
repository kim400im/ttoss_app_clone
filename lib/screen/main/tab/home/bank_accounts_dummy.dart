import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan,300000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(bankShinhan,300000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bankShinhan,300000, accountTypeName: "저축예금");
final bankAccountToss = BankAccount(bankTtoss, 500000);
final bankAccountKakao = BankAccount(bankKakao, 700000, accountTypeName: "입출금 통장");

main(){
  /*print(bankAccounts[0].accountTypeName); // list에서 하나씩 꺼내오자

  for(final item in bankAccounts){
    print(item.accountTypeName);
  }*/
  //final shinhanBank = bankMap["shinhan1"];
  //print(shinhanBank == bankAccountShinhan1);

  //for(final entry in bankMap.entries){
    //print(entry.key + ":" + (entry.value.accountTypeName ?? entry.value.bank.name));
    // ?? 이건 accountTypeName이 null이라면 오른쪽에 있는 값을 사용하라는 뜻이다.
  //}
  print(bankSet.contains(bankAccountShinhan1));

  print(bankAccounts.contains(bankAccountShinhan1));
  // 이렇게 위는 set으로 아래는 list로 표현이 되는데 둘의 차이는 시간 복잡도에 있다.
  // list는 한바퀴 돌면서 찾고
  // set은 함수를 통해 즉시 찾는다.
  // set은 시간 복잡도가 상수이다. O(1)
  // list는 시간 복잡도가 O(n) 이다.
  // list는 중복을 허용하지만 map과 set은 중복을 허용하지 않는다.

  //bankAccounts.toSet();
  //bankSet.toList();
  // 이렇게 리스트를 set으로 set을 list로 바꿀 수 있다.
}

// list
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];

//map
final bankMap = {
  "shinhan1" : bankAccountShinhan1,
  "shinhan2" : bankAccountShinhan2
};

//set
//set은 데이터가 존재하는지를 체크하기 위해 많이 사용한다.
final bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
};