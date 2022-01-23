<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This is simple and yet fancy textform field component which can be used in any form validation or login page.

## Features

This TextFormField offers wide range support with beautiful fill in color and border without loosing any property of TextField.

## Usage

There are number of textfield property that you can use and modify:

- secure text(Secure Text)
- suffix widget
- prefix widget
- selected border color
- filled color
- line height for normal text field and detail description field

<hr>
<table>
<tr>
<td>

```dart
class MyAppCard extends StatefulWidget {
  const MyAppCard({Key? key}) : super(key: key);
  @override
  _MyAppCardState createState() => _MyAppCardState();
}
class _MyAppCardState extends State<MyAppCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterInputField(
        hintText: 'Enter username',
        labelText: 'Username',
        filledColor: Colors.grey.shade200,
        onChange: (String st) {},
        prefixWidget: const Icon(Icons.person),
        onDone: () {},
      ),
    );
  }
}
```

</td>
<td>
<img src="https://user-images.githubusercontent.com/70257658/150630746-322533c7-7faf-4cce-8d1b-6deeaf2a7d1e.png" alt="">
</td>
</tr>
</table>

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
