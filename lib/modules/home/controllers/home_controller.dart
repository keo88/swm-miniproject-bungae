import 'package:get/get.dart';

class HomeController extends GetxController {

  final RxList _dataList = RxList();
  List<dynamic> get dataList => _dataList;
  set dataList(List<dynamic> dataList) => _dataList.addAll(dataList);

  @override
  void onReady() {
    super.onReady();

    getPosts();
  }

  void getPosts() {
  }

  void onSearchPressed() {

  }
}
