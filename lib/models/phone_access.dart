import 'package:open_gate/models/phone.dart';

class PhoneAccess{

  final List<Phone> _phoneList = [
    Phone('a1', 'Дача', '89214635656'),
    Phone('a2', 'Загородный дом', '89014445555'),
    Phone('a3', 'Квартира', '89156667676'),
  ];

  List<Phone> get phoneAccess => _phoneList;

  void addPhone(Phone addedPhone){
    _phoneList.add(addedPhone);
  }

  void deletePhone(Phone deletePhone){
    _phoneList.remove(deletePhone);
  }

  void changePhone(Phone phone, Phone changePhone){
    if(_phoneList.contains(phone)){
      _phoneList.remove(phone);
      _phoneList.add(changePhone);
    }
  }
}