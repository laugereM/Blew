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
      id: "8405D083199649D9AAE338D34FD40B1B",
    );
    YoudayRecord companyRecord2 = YoudayRecord(
      text: "Test Société",
      id: "8405D083199649D9AAE338D34FD40B1B",
    );
    companyRecord.addField(YoudayField(
      label: "Raison sociale",
      value: "Youday CRM",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord.addField(YoudayField(
      label: "Code postal",
      value: "44300",
      type: 0,
      key: "ZZ87654321",
    ));
    companyRecord2.addField(YoudayField(
      label: "Raison sociale",
      value: "Test Société",
      type: 0,
      key: "ZZ12345678",
    ));
    companyRecord2.addField(YoudayField(
      label: "Code postal",
      value: "37380",
      type: 0,
      key: "ZZ87654321",
    ));
    companyObject.addRecord(companyRecord);
    companyObject.addRecord(companyRecord2);
    list.add(companyObject);

    // Contacts exemple
    YoudayObject contactObject = YoudayObject(
      name: "Contacts",
      type: 0,
      id: "A7D58A8F6FCE443497DB92DB02B088F7",
    );
    YoudayRecord contactRecord = YoudayRecord(
      text: "Martin Laugère",
      id: "A7D58A8F6FCE443497DB92DB02B088F7",
    );
    contactRecord.addField(YoudayField(
      label: "Nom",
      value: "Martin",
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
  final String id;
  List<YoudayField> fields = <YoudayField>[];

  YoudayRecord({required this.text, required this.id});

  void addField(YoudayField field) {
    fields.add(field);
  }
}

class YoudayField {
  final String label;
  final String value;
  final int type;
  final String key;

  YoudayField(
      {required this.label,
      required this.value,
      required this.type,
      required this.key});
}
