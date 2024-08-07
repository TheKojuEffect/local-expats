package com.nepalius.post

import zio.json.*

case class PostWithCommentsDto(post: PostDto, comments: List[CommentDto])

object PostWithCommentsDto:
  given JsonEncoder[PostWithCommentsDto] = DeriveJsonEncoder.gen
  given JsonDecoder[PostWithCommentsDto] = DeriveJsonDecoder.gen
