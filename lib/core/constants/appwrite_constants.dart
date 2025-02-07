import 'package:appwrite/appwrite.dart';

class AppwriteConstant {
  static const String projectId = "67a353e200049e32e2ae";
  static const String databaseId = "67a35789001e221557ee";
  static const String usersCollectionId = "67a35789001e221557ee";

static Client client = Client().setProject(projectId);

final Account _account = Account(client);
final Databases _databases = Databases(client);
final Storage _storage = Storage(client);

Account get appWriteAccount => _account;
Databases get appWriteDatabases => _databases;
Storage get appWriteStorage => _storage;
}
