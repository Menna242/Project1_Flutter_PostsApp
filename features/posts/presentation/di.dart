import '../data/data_source/post_remote_data.dart';
import '../data/repository/post_repository_imp.dart';
import '../domain/usecases/add_post.dart';
import '../domain/usecases/delete_post.dart';
import '../domain/usecases/get_all_posts.dart';
import '../domain/usecases/get_post.dart';
import '../domain/usecases/update_post.dart';
import 'states.dart';



//!PostRepositoryImp
PostRepositoryImp postRepositoryImp = PostRepositoryImp(PostRemoteData());

//!Usecases
GetAllPosts getAllPosts = GetAllPosts(postRepositoryImp);
GetPost getPost = GetPost(postRepositoryImp);
AddPost addPost = AddPost(postRepositoryImp);
UpdatePost updatePost = UpdatePost(postRepositoryImp);
DeletePost deletePost = DeletePost(postRepositoryImp);


//!States
getAllPostsState getallpostsstate = getAllPostsState();
getSinglePostState getsinglePostState = getSinglePostState();
AddPostState addPostState = AddPostState();
UpdatePostState updatePostState = UpdatePostState();
DeletePostState deletePostState = DeletePostState();