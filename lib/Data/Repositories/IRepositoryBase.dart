

abstract class IRepositoryBase<T>{
  Future<T> getData(String url);
}