import 'package:my_flutter_app/lesson7/homework/instagram/model/instagram_post.dart';

List<Post> posts = List.generate(25, (i) {
  return new Post(i, 5, "https://source.unsplash.com/random/$i", "Hello, Hello");
});