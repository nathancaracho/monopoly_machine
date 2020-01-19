class UserModel {
  final String name;
  final String nickName;
  final double amount;
  final int winQtd;
  final int imageIndex;
  UserModel({
    this.name,
    this.nickName,
    this.imageIndex = 0,
    this.amount = 0,
    this.winQtd = 0,
  });
}
