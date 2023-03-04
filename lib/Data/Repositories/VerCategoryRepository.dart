
import 'package:nsmtu_mobile/Data/Repositories/ApiRepositoryBase.dart';
import 'package:nsmtu_mobile/Data/Urls/AppUrls.dart';

class VerCategoryRepository extends ApiRepositoryBase{
  @override
  Future<String> getData() async => await get(AppUrls.allVerCategory);
}