# hello_world_z

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## flutter-pixelbook

- [Configure launch.json in vs code](https://stackoverflow.com/questions/59692900/how-to-run-flutter-on-chrome-using-visual-code-editor)
  vscode://vscode.github-authentication/did-authenticate?windowId=1&code=bb351867392edd980ba4&state=836dca6f-6487-47a6-8722-6842e82264a9

launch.json
{
// Use IntelliSense to learn about possible attributes.
// Hover to view descriptions of existing attributes.
// For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
"version": "0.2.0",
"configurations": [
{
"name": "Flutter",
"request": "launch",
"type": "dart"
},
{
"name": "Flutter for web",
"type": "dart",
"request": "launch",
"program": "lib/main.dart",
"args": ["-d", "chrome"]
}
]
}
