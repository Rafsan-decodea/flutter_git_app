class TransactionModel {
  late int _limit;
  late int _offset;
  late double _totalWalletBalance;
  late int _totalWalletTransactio;
  late List<WalletTransactioList> _walletTransactioList;

  TransactionModel(
      {required int limit,
      required int offset,
      required double totalWalletBalance,
      required int totalWalletTransactio,
      required List<WalletTransactioList> walletTransactioList}) {
    this._limit = limit;
    this._offset = offset;
    this._totalWalletBalance = totalWalletBalance;
    this._totalWalletTransactio = totalWalletTransactio;
    this._walletTransactioList = walletTransactioList;
  }

  int get limit => _limit;
  int get offset => _offset;
  double get totalWalletBalance => _totalWalletBalance;
  int get totalWalletTransactio => _totalWalletTransactio;
  List<WalletTransactioList> get walletTransactioList => _walletTransactioList;

  TransactionModel.fromJson(Map<String, dynamic> json) {
    _limit = json['limit'];
    _offset = json['offset'];
    if (json['total_wallet_balance'] != null) {
      _totalWalletBalance = json['total_wallet_balance'].toDouble();
    } else {
      _totalWalletBalance = 0.0;
    }

    _totalWalletTransactio = json['total_wallet_transactio'];
    if (json['wallet_transactio_list'] != null) {
      _walletTransactioList = <WalletTransactioList>[];
      json['wallet_transactio_list'].forEach((v) {
        _walletTransactioList.add(new WalletTransactioList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['limit'] = this._limit;
    data['offset'] = this._offset;
    data['total_wallet_balance'] = this._totalWalletBalance;
    data['total_wallet_transactio'] = this._totalWalletTransactio;
    if (this._walletTransactioList != null) {
      data['wallet_transactio_list'] =
          this._walletTransactioList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WalletTransactioList {
  late int _id;
  late int _userId;
  late String _transactionId;
  late double _credit;
  late double _debit;
  late double _adminBonus;
  late double _balance;
  late String _transactionType;
  late String _reference;
  late String _createdAt;
  late String _updatedAt;

  WalletTransactioList(
      {required int id,
      required int userId,
      required String transactionId,
      required double credit,
      required double debit,
      required double adminBonus,
      required double balance,
      required String transactionType,
      required String reference,
      required String createdAt,
      required String updatedAt}) {
    this._id = id;
    this._userId = userId;
    this._transactionId = transactionId;
    this._credit = credit;
    this._debit = debit;
    this._adminBonus = adminBonus;
    this._balance = balance;
    this._transactionType = transactionType;
    this._reference = reference;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  int get userId => _userId;
  String get transactionId => _transactionId;
  double get credit => _credit;
  double get debit => _debit;
  double get adminBonus => _adminBonus;
  double get balance => _balance;
  String get transactionType => _transactionType;
  String get reference => _reference;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  WalletTransactioList.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _userId = json['user_id'];
    _transactionId = json['transaction_id'];
    _credit = json['credit'].toDouble();
    _debit = json['debit'].toDouble();
    _adminBonus = json['admin_bonus'].toDouble();
    _balance = json['balance'].toDouble();
    _transactionType = json['transaction_type'];
    _reference = json['reference'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['user_id'] = this._userId;
    data['transaction_id'] = this._transactionId;
    data['credit'] = this._credit;
    data['debit'] = this._debit;
    data['admin_bonus'] = this._adminBonus;
    data['balance'] = this._balance;
    data['transaction_type'] = this._transactionType;
    data['reference'] = this._reference;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}
