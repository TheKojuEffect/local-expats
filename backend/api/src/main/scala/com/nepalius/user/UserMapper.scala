package com.nepalius.user

object UserMapper:
  def toUserRegisterData(payload: UserRegisterPayload) =
    UserRegisterData(
      payload.email,
      payload.firstName,
      payload.lastName,
      payload.password,
    )

  def toUserResponse(user: User) =
    UserResponse(
      user.id,
      user.data.email,
      user.data.firstName,
      user.data.lastName,
    )
