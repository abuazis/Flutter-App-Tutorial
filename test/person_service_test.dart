import 'package:flutter_app/model/person.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_app/services/person_services.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock with http.Client {}

void main() {
  http.Client client = MockClient();

  test("Test Ambil Data", () async {
    String id = "1";
    when(client.get(".../persons/" + id))
        .thenAnswer((_) async => Future.value(http.Response('''
        {
          "id": $id,
          "name": "Dodi",
          "age": 20
        }
      ''', 200)));
    Person person = await PersonServices.getPersonById(id, client);
    expect(person, equals(Person(id: 1, name: "Dodi", age: 20)));
  });

  test("Test Error", () async {
    String id = "1";
    when(client.get(".../persons/" + id))
        .thenAnswer((_) async => Future.value(http.Response('''
        {
          "id": "Tidak ada akses"
        }
      ''', 403)));
    expect(PersonServices.getPersonById(id, client), throwsException);
  });
}
