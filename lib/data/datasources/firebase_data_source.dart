import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:organization_app/data/models/goal_model.dart';

abstract class FirebaseDataSource {
  Future<void> uploadGoal(GoalModel goal);
  Future<List<GoalModel>> fetchGoals();
}

class FirebaseDataSourceImpl implements FirebaseDataSource {
  final FirebaseFirestore firestore;

  FirebaseDataSourceImpl(this.firestore);

  @override
  Future<void> uploadGoal(GoalModel goal) async {
    await firestore.collection('goals').doc(goal.id).set(goal.toJson());
  }

  @override
  Future<List<GoalModel>> fetchGoals() async {
    final snapshot = await firestore.collection('goals').get();
    return snapshot.docs.map((doc) => GoalModel.fromJson(doc.data())).toList();
  }
}
