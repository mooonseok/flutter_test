import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_project/album.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([http.Client])
void main() {
  group('fetchAlbum', () {
    test('Album이 정상적으로 반환 되어야 한다', () async {
      final client = MockClient(
        (request) async {
          if (request.url.toString() ==
              'https://jsonplaceholder.typicode.com/albums/1') {
            return http.Response(
              '{"userId": 1, "id": 1, "title": "quidem molestiae enim"}',
              200,
            );
          }
          return http.Response('Not Found', 404);
        },
      );

      final album = await fetchAlbum(client);

      expect(album, isA<Album>());
    });
    //404
    test('404 오류가 발생하면 예외가 발생해야 한다', () async {
      final client = MockClient(
        (request) async {
          if (request.url.toString() ==
              'https://jsonplaceholder.typicode.com/albums/1') {
            return http.Response('Not Found', 404);
          }
          return http.Response('Not Found', 404);
        },
      );

      expect(
        () => fetchAlbum(client),
        throwsException,
      );
    });
  });
}
