import 'package:appwrite/appwrite.dart';
import 'package:dating_app/apis/auth_services.dart';
import 'package:dating_app/core/constants/appwrite_constants.dart';
import 'package:dating_app/core/constants/helper/custom_snack_bar.dart';
import 'package:dating_app/model/user_model.dart';
import 'package:dating_app/view/home_screen.dart';
import 'package:dating_app/view/widget/upload_image.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService _authService = AuthService(
      account: AppwriteConstant().appWriteAccount,
      databases: AppwriteConstant().appWriteDatabases,
      dbId: AppwriteConstant.databaseId,
      userCollectionId: AppwriteConstant.usersCollectionId);
  bool isLoading = false;

  Future login(
      {required BuildContext context,
      required String email,
      required String password}) async {
    isLoading = true;
    notifyListeners();
    final (isSuccess, message) =
        await _authService.login(email: email, password: password);
    if (isSuccess) {
      CustomSnackBar.success(context: context, message: message);
      isLoading = false;
      notifyListeners();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      CustomSnackBar.Error(context: context, message: message);
      isLoading = false;
      notifyListeners();
    }
  }

  Future register(
      {required BuildContext context,
            required String name,
      required String email,
      required String password,}) async {
    isLoading = true;
    notifyListeners();

    UserModel userModel =UserModel(id: ID.unique(), email: email, about: "", name: name);
    final (isSuccess, message) =
        await _authService.register(userModel: userModel,  password: password);
    if (isSuccess) {
      CustomSnackBar.success(context: context, message: message);
      isLoading = false;
      notifyListeners();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => UploadImage(id: userModel.id)));
    } else {
      CustomSnackBar.Error(context: context, message: message);
      isLoading = false;
      notifyListeners();
    }}

}