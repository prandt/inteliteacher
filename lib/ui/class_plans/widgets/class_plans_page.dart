import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/widgets/custom_back_button.dart';

import '../../../config/router.dart';
import '../../../shared/widgets/screen_layout.dart';
import 'create_class_plans.dart';

class ClassPlansPage extends StatefulWidget {
  const ClassPlansPage({super.key});

  @override
  State<ClassPlansPage> createState() => _ClassPlansPageState();
}

class _ClassPlansPageState extends State<ClassPlansPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        context.go(Routes.home);
      },
      title: 'Planos de aula',
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () => openCreateClassPlansModal(context),
                label: Text("Criar plano de aula"),
                icon: Icon(Icons.add, color: AppColors.ghostWhite)),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                        title: Text("Plano de aula ${index + 1}"),
                        subtitle:
                            Text("Descrição do plano de aula ${index + 1}"),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                  separatorBuilder: (_, __) => const Divider(),
                  itemCount: 10),
            )),
            CustomBackButton(
              routeName: Routes.home,
              isInfinite: true,
            )
          ],
        ),
      ),
    );
  }
}
