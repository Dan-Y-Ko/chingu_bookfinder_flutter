flutter test --coverage
genhtml coverage/lcov.info -o coverage
open coverage/index.html

cd packages/base_api
flutter test --coverage
genhtml coverage/lcov.info -o coverage
open coverage/index.html

cd ../google_books_api
flutter test --coverage
genhtml coverage/lcov.info -o coverage
open coverage/index.html