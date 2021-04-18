import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_add_new_post_request.freezed.dart';
part 'pet_add_new_post_request.g.dart';

@freezed
abstract class PetAddNewPostRequest with _$PetAddNewPostRequest {
  factory PetAddNewPostRequest({String pictureUrl, String caption}) =
      _PetAddNewPostRequest;

  factory PetAddNewPostRequest.fromJson(Map<String, dynamic> json) =>
      _$PetAddNewPostRequestFromJson(json);
}
