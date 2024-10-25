import 'package:flutter/material.dart';

class Keepalivewrapper extends StatefulWidget {
  const Keepalivewrapper(
      {super.key, required this.child, this.keepAlive = true});

  final Widget child;
  final bool keepAlive;

  @override
  State<Keepalivewrapper> createState() => _KeepalivewrapperState();
}

class _KeepalivewrapperState extends State<Keepalivewrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => widget.keepAlive;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
