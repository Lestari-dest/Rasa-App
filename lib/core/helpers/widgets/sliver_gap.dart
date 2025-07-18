// File: lib/core/helpers/widgets/sliver_gap.dart

import 'package:flutter/material.dart';

class SliverGap extends StatelessWidget {
  final double gapHeight;
  const SliverGap(this.gapHeight, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(height: gapHeight),
    );
  }
}
