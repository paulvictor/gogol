{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Admin.Directory.Users.Aliases.Watch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watches for changes in users list.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.aliases.watch@.
module Network.Google.Admin.Directory.Users.Aliases.Watch
  ( -- * Resource
    DirectoryUsersAliasesWatchResource,

    -- ** Constructing a Request
    newDirectoryUsersAliasesWatch,
    DirectoryUsersAliasesWatch,
  )
where

import Network.Google.Admin.Directory.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @directory.users.aliases.watch@ method which the
-- 'DirectoryUsersAliasesWatch' request conforms to.
type DirectoryUsersAliasesWatchResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "aliases"
    Core.:> "watch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "event" UsersAliasesWatchEvent
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Channel
    Core.:> Core.Post '[Core.JSON] Channel

-- | Watches for changes in users list.
--
-- /See:/ 'newDirectoryUsersAliasesWatch' smart constructor.
data DirectoryUsersAliasesWatch = DirectoryUsersAliasesWatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Events to watch for.
    event :: (Core.Maybe UsersAliasesWatchEvent),
    -- | Multipart request metadata.
    payload :: Channel,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Email or immutable ID of the user
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersAliasesWatch' with the minimum fields required to make a request.
newDirectoryUsersAliasesWatch ::
  -- |  Multipart request metadata. See 'payload'.
  Channel ->
  -- |  Email or immutable ID of the user See 'userKey'.
  Core.Text ->
  DirectoryUsersAliasesWatch
newDirectoryUsersAliasesWatch payload userKey =
  DirectoryUsersAliasesWatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      event = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance
  Core.GoogleRequest
    DirectoryUsersAliasesWatch
  where
  type Rs DirectoryUsersAliasesWatch = Channel
  type
    Scopes DirectoryUsersAliasesWatch =
      '[ "https://www.googleapis.com/auth/admin.directory.user",
         "https://www.googleapis.com/auth/admin.directory.user.alias",
         "https://www.googleapis.com/auth/admin.directory.user.alias.readonly",
         "https://www.googleapis.com/auth/admin.directory.user.readonly"
       ]
  requestClient DirectoryUsersAliasesWatch {..} =
    go
      userKey
      xgafv
      accessToken
      callback
      event
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryUsersAliasesWatchResource
          )
          Core.mempty