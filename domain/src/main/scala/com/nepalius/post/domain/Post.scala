package com.nepalius.post.domain

import com.nepalius.post.domain.Post.PostId
import com.nepalius.user.domain.User.UserId
import com.nepalius.location.State

import java.time.LocalDateTime
import java.util.UUID

case class Post(
    id: PostId,
    message: String,
    targetState: State,
    targetZipCode: String,
    createdAt: LocalDateTime,
)

object Post:
  type PostId = UUID
