import 'package:hive/hive.dart';
part 'bank_account.g.dart';

@HiveType(typeId: 0)
class BankAccount extends HiveObject {
  BankAccount({required this.currency, required this.myMoney});
  @HiveField(0)
  String? id;

  @HiveField(1)
  final String currency;

  @HiveField(2)
  final int myMoney;
}
