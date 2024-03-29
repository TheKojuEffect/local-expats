package com.nepalius.config

import javax.sql.DataSource

import zio.*
import org.flywaydb.core.Flyway

case class DatabaseMigration(dataSource: DataSource):
  def migrate(): Task[Unit] = ZIO.attempt {
    Flyway
      .configure()
      .dataSource(dataSource)
      .load()
      .migrate()
    ()
  }

object DatabaseMigration:
  // noinspection TypeAnnotation
  val layer = ZLayer.fromFunction(DatabaseMigration.apply)
