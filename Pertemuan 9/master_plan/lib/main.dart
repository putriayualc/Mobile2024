import 'package:flutter/material.dart';
import 'package:master_plan/models/plan.dart';
import 'package:master_plan/provider/plan_provider.dart';
import 'package:master_plan/views/plan_creator_screen.dart';
import './views/plan_screen.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override //Praktikum 3
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'State management app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PlanCreatorScreen(),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   // return MaterialApp(
  //   //  theme: ThemeData(primarySwatch: Colors.purple),
  //   //  home: PlanScreen(),
  //   // );
  //   return MaterialApp(
  //     theme: ThemeData(primarySwatch: Colors.purple),
  //     home: PlanProvider(
  //       notifier: ValueNotifier<Plan>(const Plan()),
  //       child: const PlanScreen(),
  //     ),
  //   );
  // }
}
