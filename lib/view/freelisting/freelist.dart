import 'package:flutter/material.dart';

import '../../utils/widgets/not_found.dart';

class FreeListPage extends StatelessWidget {
  const FreeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: NotFound()));
  }
}
