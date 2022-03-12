import 'package:test/test.dart';

import 'package:google_books_api/google_books_api.dart';

void main() {
  test('Given book json data, data is properly parsed into book model', () {
    final data = [
      {
        "kind": "books#volume",
        "id": "kLAoswEACAAJ",
        "etag": "WrZzXYAOTQo",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/kLAoswEACAAJ",
        "volumeInfo": {
          "title": "Harry Potter and the Cursed Child",
          "authors": ["J. K. Rowling", "Jack Thorne", "John Tiffany"],
          "publisher": "Sphere",
          "publishedDate": "2017-07-25",
          "description":
              "The official playscript of the original West End production of Harry Potter and the Cursed Child. It was always difficult being Harry Potter and it isn't much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children. While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places. The playscript for Harry Potter and the Cursed Child was originally released as a 'special rehearsal edition' alongside the opening of Jack Thorne's play in London's West End in summer 2016. Based on an original story by J.K. Rowling, John Tiffany and Jack Thorne, the play opened to rapturous reviews from theatregoers and critics alike, while the official playscript became an immediate global bestseller. This revised paperback edition updates the 'special rehearsal edition' with the conclusive and final dialogue from the play, which has subtly changed since its rehearsals, as well as a conversation piece between director John Tiffany and writer Jack Thorne, who share stories and insights about reading playscripts. This edition also includes useful background information including the Potter family tree and a timeline of events from the wizarding world prior to the beginning of Harry Potter and the Cursed Child.",
          "industryIdentifiers": [
            {"type": "ISBN_10", "identifier": "0751565369"},
            {"type": "ISBN_13", "identifier": "9780751565362"}
          ],
          "readingModes": {"text": false, "image": false},
          "pageCount": 352,
          "printType": "BOOK",
          "categories": ["Fiction"],
          "averageRating": 3.5,
          "ratingsCount": 3,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false
          },
          "imageLinks": {
            "smallThumbnail":
                "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
            "thumbnail":
                "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
          },
          "language": "en",
          "previewLink":
              "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&cd=2&source=gbs_api",
          "infoLink":
              "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&source=gbs_api",
          "canonicalVolumeLink":
              "https://books.google.com/books/about/Harry_Potter_and_the_Cursed_Child.html?hl=&id=kLAoswEACAAJ"
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {"isAvailable": false},
          "pdf": {"isAvailable": false},
          "webReaderLink":
              "http://play.google.com/books/reader?id=kLAoswEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false
        },
        "searchInfo": {
          "textSnippet":
              "As an overworked employee of the Ministry of Magic, a husband, and a father, Harry Potter struggles with a past that refuses to stay where it belongs while his youngest son, Albus, finds the weight of the family legacy difficult to bear."
        }
      },
      {
        "kind": "books#volume",
        "id": "kLAoswEACAAJ",
        "etag": "WrZzXYAOTQo",
        "selfLink": "https://www.googleapis.com/books/v1/volumes/kLAoswEACAAJ",
        "volumeInfo": {
          "title": "Harry Potter and the Cursed Child",
          "authors": ["J. K. Rowling", "Jack Thorne", "John Tiffany"],
          "publisher": "Sphere",
          "publishedDate": "2017-07-25",
          "description":
              "The official playscript of the original West End production of Harry Potter and the Cursed Child. It was always difficult being Harry Potter and it isn't much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children. While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places. The playscript for Harry Potter and the Cursed Child was originally released as a 'special rehearsal edition' alongside the opening of Jack Thorne's play in London's West End in summer 2016. Based on an original story by J.K. Rowling, John Tiffany and Jack Thorne, the play opened to rapturous reviews from theatregoers and critics alike, while the official playscript became an immediate global bestseller. This revised paperback edition updates the 'special rehearsal edition' with the conclusive and final dialogue from the play, which has subtly changed since its rehearsals, as well as a conversation piece between director John Tiffany and writer Jack Thorne, who share stories and insights about reading playscripts. This edition also includes useful background information including the Potter family tree and a timeline of events from the wizarding world prior to the beginning of Harry Potter and the Cursed Child.",
          "industryIdentifiers": [
            {"type": "ISBN_10", "identifier": "0751565369"},
            {"type": "ISBN_13", "identifier": "9780751565362"}
          ],
          "readingModes": {"text": false, "image": false},
          "pageCount": 352,
          "printType": "BOOK",
          "categories": ["Fiction"],
          "averageRating": 3.5,
          "ratingsCount": 3,
          "maturityRating": "NOT_MATURE",
          "allowAnonLogging": false,
          "contentVersion": "preview-1.0.0",
          "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false
          },
          "imageLinks": {
            "smallThumbnail":
                "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
            "thumbnail":
                "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
          },
          "language": "en",
          "previewLink":
              "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&cd=2&source=gbs_api",
          "infoLink":
              "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&source=gbs_api",
          "canonicalVolumeLink":
              "https://books.google.com/books/about/Harry_Potter_and_the_Cursed_Child.html?hl=&id=kLAoswEACAAJ"
        },
        "saleInfo": {
          "country": "US",
          "saleability": "NOT_FOR_SALE",
          "isEbook": false
        },
        "accessInfo": {
          "country": "US",
          "viewability": "NO_PAGES",
          "embeddable": false,
          "publicDomain": false,
          "textToSpeechPermission": "ALLOWED",
          "epub": {"isAvailable": false},
          "pdf": {"isAvailable": false},
          "webReaderLink":
              "http://play.google.com/books/reader?id=kLAoswEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          "accessViewStatus": "NONE",
          "quoteSharingAllowed": false
        },
        "searchInfo": {
          "textSnippet":
              "As an overworked employee of the Ministry of Magic, a husband, and a father, Harry Potter struggles with a past that refuses to stay where it belongs while his youngest son, Albus, finds the weight of the family legacy difficult to bear."
        }
      }
    ];

    final books = data
        .map<Book>(
          (dynamic book) => Book.fromJson(book as Map<String, dynamic>),
        )
        .toList();

    expect(
      books[0],
      isA<Book>(),
    );
    expect(
      books[1],
      isA<Book>(),
    );
    expect(books.length, greaterThan(0));
  });
}
