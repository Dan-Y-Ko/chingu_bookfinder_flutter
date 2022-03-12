import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'package:google_books_api/google_books_api.dart';

void main() {
  test('book is instantiated properly', () {
    final book = Book(
      kind: "books#volume",
      id: "kLAoswEACAAJ",
      etag: "WrZzXYAOTQo",
      selfLink: "https://www.googleapis.com/books/v1/volumes/kLAoswEACAAJ",
      volumeInfo: VolumeInfo(
          title: "Harry Potter and the Cursed Child",
          authors: ["J. K. Rowling", "Jack Thorne", "John Tiffany"],
          publisher: "Sphere",
          publishedDate: "2017-07-25",
          description:
              "The official playscript of the original West End production of Harry Potter and the Cursed Child. It was always difficult being Harry Potter and it isn't much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children. While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places. The playscript for Harry Potter and the Cursed Child was originally released as a 'special rehearsal edition' alongside the opening of Jack Thorne's play in London's West End in summer 2016. Based on an original story by J.K. Rowling, John Tiffany and Jack Thorne, the play opened to rapturous reviews from theatregoers and critics alike, while the official playscript became an immediate global bestseller. This revised paperback edition updates the 'special rehearsal edition' with the conclusive and final dialogue from the play, which has subtly changed since its rehearsals, as well as a conversation piece between director John Tiffany and writer Jack Thorne, who share stories and insights about reading playscripts. This edition also includes useful background information including the Potter family tree and a timeline of events from the wizarding world prior to the beginning of Harry Potter and the Cursed Child.",
          industryIdentifiers: [
            IndustryIdentifier(type: "ISBN_10", identifier: "0751565369"),
            IndustryIdentifier(type: "ISBN_13", identifier: "9780751565362"),
          ],
          readingModes: ReadingModes(text: false, image: false),
          pageCount: 352,
          printType: "BOOK",
          categories: ["Fiction"],
          averageRating: 3.5,
          ratingsCount: 3,
          maturityRating: "NOT_MATURE",
          allowAnonLogging: false,
          contentVersion: "preview-1.0.0",
          imageLinks: ImageLinks(
              smallThumbnail:
                  "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
              thumbnail:
                  "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"),
          language: "en",
          previewLink:
              "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&cd=2&source=gbs_api",
          infoLink:
              "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&source=gbs_api",
          canonicalVolumeLink:
              "https://books.google.com/books/about/Harry_Potter_and_the_Cursed_Child.html?hl=&id=kLAoswEACAAJ"),
      saleInfo:
          SaleInfo(country: "US", saleability: "NOT_FOR_SALE", isEbook: false),
      accessInfo: AccessInfo(
          country: "US",
          viewability: "NO_PAGES",
          embeddable: false,
          publicDomain: false,
          textToSpeechPermission: "ALLOWED",
          epub: Epub(
            isAvailable: false,
          ),
          pdf: Pdf(isAvailable: false),
          webReaderLink:
              "http://play.google.com/books/reader?id=kLAoswEACAAJ&hl=&printsec=frontcover&source=gbs_api",
          accessViewStatus: "NONE",
          quoteSharingAllowed: false),
      searchInfo: SearchInfo(
          textSnippet:
              "As an overworked employee of the Ministry of Magic, a husband, and a father, Harry Potter struggles with a past that refuses to stay where it belongs while his youngest son, Albus, finds the weight of the family legacy difficult to bear."),
    );

    expect(book.kind, "books#volume");
    expect(book.id, "kLAoswEACAAJ");
    expect(book.etag, "WrZzXYAOTQo");
    expect(book.selfLink,
        "https://www.googleapis.com/books/v1/volumes/kLAoswEACAAJ");
    expect(book.volumeInfo!.title, "Harry Potter and the Cursed Child");
    expect(book.volumeInfo!.authors,
        ["J. K. Rowling", "Jack Thorne", "John Tiffany"]);
    expect(book.volumeInfo!.publisher, "Sphere");
    expect(book.volumeInfo!.publishedDate, "2017-07-25");
    expect(book.volumeInfo!.description,
        "The official playscript of the original West End production of Harry Potter and the Cursed Child. It was always difficult being Harry Potter and it isn't much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children. While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places. The playscript for Harry Potter and the Cursed Child was originally released as a 'special rehearsal edition' alongside the opening of Jack Thorne's play in London's West End in summer 2016. Based on an original story by J.K. Rowling, John Tiffany and Jack Thorne, the play opened to rapturous reviews from theatregoers and critics alike, while the official playscript became an immediate global bestseller. This revised paperback edition updates the 'special rehearsal edition' with the conclusive and final dialogue from the play, which has subtly changed since its rehearsals, as well as a conversation piece between director John Tiffany and writer Jack Thorne, who share stories and insights about reading playscripts. This edition also includes useful background information including the Potter family tree and a timeline of events from the wizarding world prior to the beginning of Harry Potter and the Cursed Child.");
    expect(book.volumeInfo!.industryIdentifiers![0].type, "ISBN_10");
    expect(book.volumeInfo!.industryIdentifiers![0].identifier, "0751565369");
    expect(book.volumeInfo!.industryIdentifiers![1].type, "ISBN_13");
    expect(
        book.volumeInfo!.industryIdentifiers![1].identifier, "9780751565362");
    expect(book.volumeInfo!.readingModes!.text, false);
    expect(book.volumeInfo!.readingModes!.image, false);
    expect(book.volumeInfo!.pageCount, 352);
    expect(book.volumeInfo!.printType, "BOOK");
    expect(book.volumeInfo!.categories, ["Fiction"]);
    expect(book.volumeInfo!.averageRating, 3.5);
    expect(book.volumeInfo!.ratingsCount, 3);
    expect(book.volumeInfo!.maturityRating, "NOT_MATURE");
    expect(book.volumeInfo!.allowAnonLogging, false);
    expect(book.volumeInfo!.contentVersion, "preview-1.0.0");
    expect(book.volumeInfo!.imageLinks!.smallThumbnail,
        "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api");
    expect(book.volumeInfo!.imageLinks!.thumbnail,
        "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api");
    expect(book.volumeInfo!.language, "en");
    expect(book.volumeInfo!.previewLink,
        "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&cd=2&source=gbs_api");
    expect(book.volumeInfo!.infoLink,
        "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&source=gbs_api");
    expect(book.volumeInfo!.canonicalVolumeLink,
        "https://books.google.com/books/about/Harry_Potter_and_the_Cursed_Child.html?hl=&id=kLAoswEACAAJ");
    expect(book.saleInfo!.country, "US");
    expect(book.saleInfo!.saleability, "NOT_FOR_SALE");
    expect(book.saleInfo!.isEbook, false);
    expect(book.accessInfo!.country, "US");
    expect(book.accessInfo!.viewability, "NO_PAGES");
    expect(book.accessInfo!.embeddable, false);
    expect(book.accessInfo!.publicDomain, false);
    expect(book.accessInfo!.textToSpeechPermission, "ALLOWED");
    expect(book.accessInfo!.epub!.isAvailable, false);
    expect(book.accessInfo!.pdf!.isAvailable, false);
    expect(book.accessInfo!.webReaderLink,
        "http://play.google.com/books/reader?id=kLAoswEACAAJ&hl=&printsec=frontcover&source=gbs_api");
    expect(book.accessInfo!.accessViewStatus, "NONE");
    expect(book.accessInfo!.quoteSharingAllowed, false);
    expect(book.searchInfo!.textSnippet,
        "As an overworked employee of the Ministry of Magic, a husband, and a father, Harry Potter struggles with a past that refuses to stay where it belongs while his youngest son, Albus, finds the weight of the family legacy difficult to bear.");
  });

  test('Given book json data, data is properly parsed into book model', () {
    final data = File('test/mock_books.json').readAsStringSync();
    final booksJson = jsonDecode(data);
    final books = booksJson
        .map<Book>(
          (dynamic book) => Book.fromJson(book as Map<String, dynamic>),
        )
        .toList();

    expect(books.length, greaterThan(0));
  });
}
