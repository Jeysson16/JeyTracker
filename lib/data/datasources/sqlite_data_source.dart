import 'package:organization_app/data/models/goal_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalDataSource {
  Future<void> cacheGoal(GoalModel goal);
  Future<List<GoalModel>> getCachedGoals();
}

class LocalDataSourceImpl implements LocalDataSource {
  final Database db;

  LocalDataSourceImpl(this.db);

  @override
  Future<void> cacheGoal(GoalModel goal) async {
    await db.insert('goals', goal.toMap());
  }

  @override
  Future<List<GoalModel>> getCachedGoals() async {
    final List<Map<String, dynamic>> maps = await db.query('goals');
    return maps.map((e) => GoalModel.fromMap(e)).toList();
  }
}
