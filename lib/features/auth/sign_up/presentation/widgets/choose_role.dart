import 'package:flutter/material.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/role_select_button.dart';

class RoleSelectionRow extends StatefulWidget {
  final void Function(String role) onRoleChanged;

  const RoleSelectionRow({super.key, required this.onRoleChanged});

  @override
  RoleSelectionRowState createState() => RoleSelectionRowState();
}

class RoleSelectionRowState extends State<RoleSelectionRow> {
  String selectedRole = 'Senior';

  void _onRoleSelected(String role) {
    setState(() {
      selectedRole = role;
    });
    widget.onRoleChanged(role);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onRoleChanged(selectedRole);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoleSelectButton(
          roleName: 'I am Caregiver',
          isSelected: selectedRole == 'Caregiver',
          onSelected: () => _onRoleSelected('Caregiver'),
        ),
        const SizedBox(width: 10),
        RoleSelectButton(
          roleName: 'I am Senior',
          isSelected: selectedRole == 'Senior',
          onSelected: () => _onRoleSelected('Senior'),
        ),
      ],
    );
  }
}
