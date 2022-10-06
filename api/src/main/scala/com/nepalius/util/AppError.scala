package com.nepalius.util

sealed trait AppError extends Throwable

object AppError:
  case object MissingBodyError extends AppError
  final case class JsonDecodingError(message: String) extends AppError
