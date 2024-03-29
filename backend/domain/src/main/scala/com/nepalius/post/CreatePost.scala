package com.nepalius.post

import com.nepalius.location.Location
import Location.LocationId

case class CreatePost(
    title: String,
    message: Option[String],
    locationId: LocationId,
    image: Option[String],
)