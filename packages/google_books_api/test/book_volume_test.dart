import 'package:google_books_api/src/models/book_volume.dart';
import 'package:test/test.dart';

void main() {
  test(
      'Given book volume json data, data is properly parsed into book volume model',
      () {
    const data = {
      'kind': 'books#volume',
      'id': 'lMM4jgEACAAJ',
      'etag': 'Fl2Wqt1n4M0',
      'selfLink': 'https://www.googleapis.com/books/v1/volumes/lMM4jgEACAAJ',
      'volumeInfo': {
        'title': 'Harry Potter Coloring Book',
        'authors': ['Scholastic'],
        'publisher': 'Scholastic Incorporated',
        'publishedDate': '2015-11-10',
        'description':
            "Unleash your creativity and escape to one of the most beloved series of all time.<br><br> From the heraldry of the four Hogwarts houses to the extravagant wares of Weasleys' Wizard Wheezes, the world of Harry Potter overflows with radiant color. Filled with intricate illustrations and elaborate designs used in the making of the Harry Potter films, this book invites you to imbue the wizarding world with color in your own explorations of Hogwarts Castle, the Forbidden Forest, and much more. You will also find pages of magical creatures and iconic scenes from the films, from the Sorting Ceremony in Harry's first year, to the unforgettable final battle between Harry and Lord Voldemort, as well as some of the marvelous props used in the movies, such as The Quibbler, Quidditch World Cup posters, and the Triwizard Cup. Also includes sixteen pages of full-color art from the movies to inspire you as you draw.",
        'industryIdentifiers': [
          {'type': 'ISBN_10', 'identifier': '1338029991'},
          {'type': 'ISBN_13', 'identifier': '9781338029994'}
        ],
        'readingModes': {'text': false, 'image': false},
        'pageCount': 96,
        'printedPageCount': 96,
        'dimensions': {
          'height': '27.70 cm',
          'width': '21.60 cm',
          'thickness': '0.80 cm'
        },
        'printType': 'BOOK',
        'categories': ['Games & Activities / Coloring Books'],
        'averageRating': 3,
        'ratingsCount': 2,
        'maturityRating': 'NOT_MATURE',
        'allowAnonLogging': false,
        'contentVersion': 'preview-1.0.0',
        'imageLinks': {
          'smallThumbnail':
              'http://books.google.com/books/content?id=lMM4jgEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE738lo6464-sBkJrfxnk3FufbCZgpsLSitiTu3pj5LMp3b4LwZCSXMvjPthI1fXAMN5c-I-aC83XcPwsffctqWrCjacma6hhtvayFoEYcpDVI5CIshUZjtbgj_xRqhNRaIoZM0Wc&source=gbs_api',
          'thumbnail':
              'http://books.google.com/books/content?id=lMM4jgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73yyGbRrBz8eYQnO0kitGlu0TH7H0f3szT5id_A4Ik_L5O7ZGTtbRs58IvLAlPbxHVQTBMzAEwXTn7k_KTKkrpEo3xDdLg44tnlbncj9RHLlrCZdi4Y1C1eBv8wjw8htjlIeYQE&source=gbs_api'
        },
        'language': 'en',
        'previewLink':
            'http://books.google.com/books?id=lMM4jgEACAAJ&hl=&source=gbs_api',
        'infoLink':
            'https://play.google.com/store/books/details?id=lMM4jgEACAAJ&source=gbs_api',
        'canonicalVolumeLink':
            'https://play.google.com/store/books/details?id=lMM4jgEACAAJ'
      },
      'saleInfo': {
        'country': 'US',
        'saleability': 'NOT_FOR_SALE',
        'isEbook': false
      },
      'accessInfo': {
        'country': 'US',
        'viewability': 'NO_PAGES',
        'embeddable': false,
        'publicDomain': false,
        'textToSpeechPermission': 'ALLOWED',
        'epub': {'isAvailable': false},
        'pdf': {'isAvailable': false},
        'webReaderLink':
            'http://play.google.com/books/reader?id=lMM4jgEACAAJ&hl=&printsec=frontcover&source=gbs_api',
        'accessViewStatus': 'NONE',
        'quoteSharingAllowed': false
      }
    };

    final bookVolume = BookVolume.fromJson(data);

    expect(
      bookVolume,
      isA<BookVolume>(),
    );
  });
}
