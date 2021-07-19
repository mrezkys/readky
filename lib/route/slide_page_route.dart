import 'package:flutter/cupertino.dart';

class SlidePageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;
  SlidePageRoute({@required this.child, this.direction = AxisDirection.left})
      : super(
          transitionDuration: Duration(milliseconds: 400),
          reverseTransitionDuration: Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) => SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero).animate(animation),
        child: child,
      );

  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return Offset(0, 1);
      case AxisDirection.down:
        return Offset(0, -1);
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        return Offset(1, 0);
      default:
        return Offset(1, 0);
    }
  }
}
