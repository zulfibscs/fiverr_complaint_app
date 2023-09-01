import 'package:flutter/material.dart';
class RoundedButtonRow extends StatefulWidget {
  @override
  _RoundedButtonRowState createState() => _RoundedButtonRowState();
}

class _RoundedButtonRowState extends State<RoundedButtonRow> {
  bool isStacked = false;

  void _toggleStacking() {
  setState(() {
  isStacked = !isStacked;
  });
  }

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  home: Scaffold(
  appBar: AppBar(
  title: Text('Stacking Buttons Layout'),
  ),
  body: Center(
  child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  if (!isStacked)
  ElevatedButton(
  onPressed: _toggleStacking,
  child: Text('Left Button'),
  ),
  SizedBox(width: 16),
  if (!isStacked)
  ElevatedButton(
  onPressed: _toggleStacking,
  child: Text('Right Button'),
  ),
  ],
  ),
  ),
  floatingActionButton: FloatingActionButton(
  onPressed: _toggleStacking,
  child: Icon(Icons.swap_horiz),
  ),
  ),
  );
  }
  }