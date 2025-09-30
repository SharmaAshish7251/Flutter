// return type future -- use await keyword -- value in future

// using Future and await
// Future<void> main() async {
//   print('*** Async in Dart *** ');
//   print('Starting Async');
//
//   String data = await printAfterAsync();
//   print(data);
//   print('Ending.......');
// }
//
// // Basic Async
// Future<String> printAfterAsync() async {
//   await Future.delayed(Duration(seconds: 6));
//
//   return "Work Completed Async";
// }

// using then

// void main() {
//   print('Starting....');
//
//   printAfterAsync().then((i) {
//     print(i);
//   });
//
//   print('ending');
// }
//
// Future<String> printAfterAsync() async {
//   await Future.delayed(Duration(seconds: 3));
//
//   return "Await using then";
// }
