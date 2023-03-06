import 'package:nsmtu_mobile/Data/Repositories/ApiRepositoryBase.dart';
import 'package:nsmtu_mobile/Data/Urls/AppUrls.dart';
class AnnouncementRepository extends ApiRepositoryBase{
  @override
  Future<String> getData() async => await get(AppUrls.allKafedralar);
}