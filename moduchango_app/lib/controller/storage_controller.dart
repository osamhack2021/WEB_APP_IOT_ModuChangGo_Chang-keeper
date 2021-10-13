import 'package:get/get.dart';
import 'package:moduchango_app/domain/storage/storage.dart';
import 'package:moduchango_app/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();
  final storages = <Storage>[].obs;

  Future<void> findAll() async {
    List<Storage> storages = await _storageRepository.findAll();
    this.storages.value = storages;
  }
}
