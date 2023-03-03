import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Repositories/VerCategoryRepository.dart';
import 'package:nsmtu_mobile/Domain/UseCases/GetAccordionUseCase.dart';

class HomeController extends GetxController{
   late GetAccordionUseCase accordion;

  @override
  void onInit() {
   accordion = GetAccordionUseCase(VerCategoryRepository());
   accordion.call();
    super.onInit();
  }
}