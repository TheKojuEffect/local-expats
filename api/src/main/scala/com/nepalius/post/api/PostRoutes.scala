package com.nepalius.post.api

import com.nepalius.location.State
import com.nepalius.location.domain.Location.LocationId
import com.nepalius.post.domain.Post.PostId
import com.nepalius.post.domain.{Post, PostService}
import com.nepalius.util.ApiUtils.{getQueryParam, parseBody, parsePageable}
import com.nepalius.util.Pageable
import zio.*
import zio.http.Http.collectZIO
import zio.http.Method.{GET, POST}
import zio.http.*
import zio.json.*

import java.time.{LocalDateTime, ZonedDateTime}

case class PostRoutes(postService: PostService):

  val routes: Http[Any, Throwable, Request, Response] =
    collectZIO[Request] {
      case req @ GET -> Root / "api" / "posts" / "updated" => getUpdated(req)
      case GET -> Root / "api" / "posts" / long(id)        => getOne(id)
      case req @ POST -> Root / "api" / "posts"            => createPost(req)
      case req @ POST -> Root / "api" / "posts" / long(id) / "comments" =>
        addComment(id, req)
    }

  private def createPost(req: Request) = {
    for
      dto <- parseBody[CreatePostDto](req)
      postRequest = dto.toCreatePost
      createdPost <- postService.create(postRequest)
      postDto = PostDto.make(createdPost)
    yield Response.json(postDto.toJson)
  }

  private def getUpdated(req: Request) = {
    val ids =
      getQueryParam(req, "ids").map(_.split(",").toList).get.map(_.toLong)
    val since =
      getQueryParam(req, "since").map(ZonedDateTime.parse).get
    for
      posts <- postService.getUpdated(ids, since)
      dtos = posts.map(PostDto.make)
    yield Response.json(dtos.toJson)
  }

  private def getOne(id: PostId) =
    for
      post <- postService.getOne(id)
      dto = post.map(PostWithCommentsDto.make)
    yield dto
      .map(d => Response.json(d.toJson))
      .getOrElse(Response.status(Status.NotFound))

  private def addComment(postId: PostId, req: Request) = {
    for
      dto <- parseBody[CreateCommentDto](req)
      commentRequest = dto.toCreateComment
      updatedPost <- postService.addComment(postId, commentRequest)
      dto = PostWithCommentsDto.make(updatedPost)
    yield Response.json(dto.toJson)
  }

object PostRoutes:
  // noinspection TypeAnnotation
  val live = ZLayer.fromFunction(PostRoutes.apply)
