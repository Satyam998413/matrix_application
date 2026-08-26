import 'package:flutter/material.dart';
import 'package:matrix_application/core/widgets/status_badge.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';

class HistoryUserCard extends StatelessWidget {
  const HistoryUserCard({super.key, required this.user, required this.onTap});

  final User user;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          child: Text(
            user.username.isNotEmpty ? user.username[0].toUpperCase() : '?',
          ),
        ),
        title: Text(user.username),
        subtitle: Text('${user.matrixNumber}×${user.matrixNumber} matrix'),
        trailing: StatusBadge(isSubmitted: user.isSubmitted),
      ),
    );
  }
}
