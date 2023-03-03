import 'package:nsmtu_mobile/Data/Entities/VerCategories.dart';
import 'package:nsmtu_mobile/Data/Repositories/ApiRepositoryBase.dart';
import 'package:nsmtu_mobile/Data/Urls/AppUrls.dart';

class VerCategoryRepository extends ApiRepositoryBase<VerCategories>{
  @override
  Future<VerCategories> getData(String url) async =>VerCategories.fromJson( await get(AppUrls.allVerCategory));
}