import 'package:ddm_hibrido/paginas/6)%20exemplos_comunicacao/MVC/Model/Album.dart';

//modelo que os providers devem seguir
abstract class AbstractDataProvider{

  //Varios Albuns
  //Future<List<Album>> getAlbum();

  //Um Album
  Future<Album> getAlbum(int album);//nao pode fal
}