package com.nepalius.user

import com.nepalius.util.*
import sttp.tapir.*
import sttp.tapir.generic.auto.*
import sttp.tapir.json.zio.jsonBody

import java.util.UUID

trait UserEndpoints extends BaseEndpoints:

  val registerEndPoint: PublicEndpoint[
    UserRegisterPayload,
    ErrorInfo,
    UserWithAuthTokenResponse,
    Any,
  ] =
    publicEndpoint
      .tag("Users")
      .summary("Register User")
      .post
      .in("api" / "users")
      .in(jsonBody[UserRegisterPayload].example(Examples.userRegisterPayload))
      .out(jsonBody[UserWithAuthTokenResponse].example(
        Examples.userWithAuthTokenResponse,
      ))

  val loginEndpoint: PublicEndpoint[
    UserLoginPayload,
    ErrorInfo,
    UserWithAuthTokenResponse,
    Any,
  ] =
    publicEndpoint
      .tag("Users")
      .summary("Log In User")
      .post
      .in("api" / "users" / "login")
      .in(jsonBody[UserLoginPayload].example(Examples.userLoginPayload))
      .out(jsonBody[UserWithAuthTokenResponse].example(
        Examples.userWithAuthTokenResponse,
      ))

  val getCurrentUserEndpoint
      : SecureEndpoint[Unit, ErrorInfo, UserResponse, Any] =
    secureEndpoint
      .tag("Current User")
      .summary("Get Current User")
      .get
      .in("api" / "user")
      .out(jsonBody[UserResponse].example(Examples.getUserResponse))

  val updateUserEndpoint
      : SecureEndpoint[UserUpdatePayload, ErrorInfo, UserResponse, Any] =
    secureEndpoint
      .tag("Current User")
      .summary("Update Current User")
      .put
      .in("api" / "user")
      .in(jsonBody[UserUpdatePayload].example(Examples.userUpdatePayload))
      .out(jsonBody[UserResponse].example(Examples.updatedUserResponse))

  private object Examples:
    val userRegisterPayload: UserRegisterPayload = UserRegisterPayload(
      email = "first.last@email.com",
      firstName = "First",
      lastName = "Last",
      password = "secret_password",
    )

    val userLoginPayload: UserLoginPayload = UserLoginPayload(
      email = "first.last@email.com",
      password = "secret_password",
    )

    val getUserResponse: UserResponse = UserResponse(
      id = UUID.fromString("cbee098c-9fe5-4e0b-9e28-2d4a1db83345"),
      email = "user123@email.com",
      firstName = "First",
      lastName = "Last",
    )

    val userWithAuthTokenResponse: UserWithAuthTokenResponse =
      UserWithAuthTokenResponse(
        user = getUserResponse,
        authToken =
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJTb2Z0d2FyZU1pbGwiLCJ1c2VyRW1haWwiOiJ1c2VyMTIzQGVtYWlsLmNvbSIsImV4cCI6MTY4MjU4MzY0NCwiaWF0IjoxNjgyNTgwMDQ0LCJqdGkiOiJkMmEzYThjZC1mNmFhLTQwNzgtYTk4Ni1jZmIwNTg5NTAxYmEifQ.SwY-ynkmR3-uYZU0K2cI0NY7Cs8oSgCU8RUVUagOAok",
      )

    val userUpdatePayload: UserUpdatePayload = UserUpdatePayload(
      email = Some("new@email.com"),
      password = Some("new_secure_password"),
      firstName = "First",
      lastName = "Lasting",
    )

    val updatedUserResponse: UserResponse = UserResponse(
      id = getUserResponse.id,
      email = userUpdatePayload.email.get,
      firstName = userUpdatePayload.firstName,
      lastName = userUpdatePayload.lastName,
    )
