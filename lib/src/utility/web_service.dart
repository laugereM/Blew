class WebService {
  List<YoudayObject> getObjectList() {
    List<YoudayObject> list = <YoudayObject>[];

    // Sociétés exemple
    YoudayObject companyObject = YoudayObject(
      name: "Sociétés",
      type: 0,
      id: "8405D083199649D9AAE338D34FD40B1B",
    );
    YoudayRecord companyRecord = YoudayRecord(
      text: "Youday CRM",
    );
    YoudayRecord companyRecord2 = YoudayRecord(
      text: "Test Société",
    );
    YoudayRecord companyRecord3 = YoudayRecord(
      text: "Test Société",
    );
    YoudayRecord companyRecord4 = YoudayRecord(
      text: "Test Société",
    );
    YoudayRecord companyRecord5 = YoudayRecord(
      text: "Test Société",
    );
    YoudayRecord companyRecord6 = YoudayRecord(
      text: "Test Société",
    );
    YoudayRecord companyRecord7 = YoudayRecord(
      text: "Test Société",
    );
    YoudayRecord companyRecord8 = YoudayRecord(
      text: "Test Société",
    );
    YoudayRecord companyRecord9 = YoudayRecord(
      text: "Test Société",
    );
    YoudayRecord companyRecord10 = YoudayRecord(
      text: "Test Société",
    );
    companyRecord.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord2.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord3.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord4.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord5.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord6.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord7.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord8.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord9.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord10.addField(const YoudayField(
      label: "Raison sociale",
      type: 0,
      key: "ZZ12345678",
    ));
    companyObject.addRecord(companyRecord);
    companyObject.addRecord(companyRecord2);
    companyObject.addRecord(companyRecord3);
    companyObject.addRecord(companyRecord4);
    companyObject.addRecord(companyRecord5);
    companyObject.addRecord(companyRecord6);
    companyObject.addRecord(companyRecord7);
    companyObject.addRecord(companyRecord8);
    companyObject.addRecord(companyRecord9);
    companyObject.addRecord(companyRecord10);
    list.add(companyObject);

    // Contacts exemple
    YoudayObject contactObject = YoudayObject(
      name: "Contacts",
      type: 0,
      id: "A7D58A8F6FCE443497DB92DB02B088F7",
    );
    YoudayRecord contactRecord = YoudayRecord(
      text: "Martin Laugère",
    );
    contactRecord.addField(const YoudayField(
      label: "Nom",
      type: 0,
      key: "ZZ87654321",
    ));
    contactObject.addRecord(contactRecord);
    list.add(contactObject);

    return list;
  }
}

class YoudayObject {
  final String name;
  final int type;
  final String id;
  List<YoudayRecord> records = <YoudayRecord>[];

  YoudayObject({required this.name, required this.type, required this.id});

  void addRecord(YoudayRecord record) {
    records.add(record);
  }
}

class YoudayRecord {
  final String text;
  List<YoudayField> fields = <YoudayField>[];

  YoudayRecord({required this.text});

  void addField(YoudayField field) {
    fields.add(field);
  }
}

class YoudayField {
  final String label;
  final int type;
  final String key;

  const YoudayField(
      {required this.label, required this.type, required this.key});
}
