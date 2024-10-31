import 'package:master_plan/provider/plan_provider.dart';

import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  // const PlanScreen({super.key});
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Plan plan = const Plan();
  late ScrollController scrollController;
  Plan get plan => widget.plan;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
          return _buildAddTaskButton(context, currentPlan);
        },
      ),
    );
  }

  Widget _buildAddTaskButton(BuildContext context, Plan currentPlan) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        // Find the current plan in the list
        int planIndex =
            planNotifier.value.indexWhere((p) => p.name == currentPlan.name);

        if (planIndex != -1) {
          // Create a copy of the tasks list with the new task added
          List<Plan> updatedPlans = List<Plan>.from(planNotifier.value);
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);

          updatedTasks.add(Task(description: '', complete: false));

          updatedPlans[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );
          planNotifier.value = updatedPlans;
        }
      },
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context, plan),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context, Plan currentPlan) {
  ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

  return ListTile(
    leading: Checkbox(
      value: task.complete,
      onChanged: (selected) {
        int planIndex =
            planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
        if (planIndex >= 0) {
          List<Plan> updatedPlans = List<Plan>.from(planNotifier.value);
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);

          updatedTasks[index] = Task(
            description: task.description,
            complete: selected ?? false,
          );

          updatedPlans[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );

          planNotifier.value = updatedPlans;
        }
      },
    ),
    title: TextFormField(
      initialValue: task.description,
      onChanged: (text) {
        int planIndex =
            planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
        if (planIndex >= 0) {
          List<Plan> updatedPlans = List<Plan>.from(planNotifier.value);
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);

          updatedTasks[index] = Task(
            description: text,
            complete: task.complete,
          );

          updatedPlans[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );

          planNotifier.value = updatedPlans;
        }
      },
    ),
  );
    }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
