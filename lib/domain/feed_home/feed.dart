import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
abstract class Feed with _$Feed {
  factory Feed({
    String id,
    String title,
    String subtitle,
    String content,
    @JsonKey(defaultValue: "") String imageUrl,
    String type,
    String typeLabel,
    String startDate,
    String endDate,
    String createdAt,
    String updatedAt,
  }) = _Feed;
  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
// {
//     "code": "00",
//     "message": "ok",
//     "data": {
//         "id": "6037cd2b13b1f42e90ff2b1d",
//         "title": "Surfing the Pet",
//         "subtitle": "Derived from expression Surfing the Net substituting 'net' with 'pet'",
//         "content": "## Qui retro nec riguerunt sine perlucida praeside\n\nMeminisse civilibus, illa falli tantique est lunae depositura quondam sibi.\nHippocoon terras ordine; non **rogant luctus**, faciat sub mora trepidantes\nalter *terra*. Praecessit ambitione. Vulnus flumina possit maternaque tetigisse\n*nunc ardent refert*. Hunc saevis, *si solacia* latus sinistrae traxit quies\nexempta *crudelis*: mitis illi vetat qui!\n\nIn fugit, terribiles a arces scintilla nuper senis deique trepidans educat et\nmanus promptior periura: etiam vela undas. Summa in Iovi talia in videt; et vina\n**lapsasque incubuit** umbris! In labor dicentem primis.",
//         "imageUrl": "/public/feed/panda.jpg",
//         "type": "1",
//         "startDate": "2021-02-02T00:00:00.000Z",
//         "endDate": "2021-03-31T00:00:00.000Z",
//         "createdBy": {
//             "id": "6033cc76fdaa9c0e7815f7cb"
//         },
//         "lastUpdatedBy": {
//             "id": "6033cc76fdaa9c0e7815f7cb"
//         },
//         "createdAt": "2021-02-25T16:15:39.320Z",
//         "updatedAt": "2021-02-25T16:15:39.320Z"
//     }
// }
