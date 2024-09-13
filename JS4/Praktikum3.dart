void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  //menambah nama dan nim
  gifts['name'] = 'Putri Ayu Aliciawati';
  gifts['nim'] = '2241720132';
  
  nobleGases[123] = 'Putri Ayu Aliciawati';
  nobleGases[456] = '2241720132';

  mhs1['name'] = 'Putri Ayu Aliciawati';
  mhs1['nim'] = '2241720132';

  mhs2[1] = 'Putri Ayu Aliciawati';
  mhs2[2] = '2241720132';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}