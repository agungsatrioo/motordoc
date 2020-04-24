import 'package:flutter/widgets.dart';

class SingleChildBooleanWidget extends StatelessWidget {
  final bool boolean;
  final Widget ifTrue, ifFalse;

  SingleChildBooleanWidget(
      {Key key,
      @required this.boolean,
      @required this.ifTrue,
      @required this.ifFalse})
      : super(key: key) {
    assert(this.boolean != null);
    assert(this.ifTrue != null);
    assert(this.ifFalse != null);
  }

  @override
  Widget build(BuildContext context) =>
      this.boolean ? this.ifTrue : this.ifFalse;
}
