import 'package:appwrite/appwrite.dart';
import 'package:dating_app/model/user_model.dart';

class AuthService {
  final Account account;
  final Databases databases;
  final String dbId;
  final String userCollectionId;
  const AuthService(
      {required this.account,
      required this.databases,
      required this.dbId,
      required this.userCollectionId});

  Future<(bool, String)> register(
      {required UserModel userModel, required String password}) async {
    try {
      final user = await account.create(
          userId: userModel.id,
          email: userModel.email,
          password: password,
          name: userModel.name);

      await databases.createDocument(
          databaseId: dbId,
          collectionId: userCollectionId,
          documentId: user.$id,
          data: userModel.toMap());
      return (true, "Register Successfully");
    } on AppwriteException catch (error) {
      return (false, error.message ?? "Unknown Error Occured");
    }
  }

  Future<(bool, String)> login(
      {required String email, required String password}) async {
    try {
      var section = await account.createEmailPasswordSession(
          email: email, password: password);
      return (true, "Login Successful");
    } on AppwriteException catch (error) {
      return (false, (error.message ?? "Unknown Error Occurred"));
    }
  }
}
