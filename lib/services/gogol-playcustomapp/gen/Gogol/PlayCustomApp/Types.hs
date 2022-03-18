{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.PlayCustomApp.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.PlayCustomApp.Types
    (
    -- * Configuration
      playCustomAppService

    -- * OAuth Scopes
    , androidpublisherScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** CustomApp
    , CustomApp (..)
    , newCustomApp

    -- ** Organization
    , Organization (..)
    , newOrganization
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PlayCustomApp.Internal.Product
import Gogol.PlayCustomApp.Internal.Sum

-- | Default request referring to version @v1@ of the Google Play Custom App Publishing API. This contains the host and root path used as a starting point for constructing service requests.
playCustomAppService :: Core.ServiceConfig
playCustomAppService
  = Core.defaultService
      (Core.ServiceId "playcustomapp:v1")
      "playcustomapp.googleapis.com"

-- | View and manage your Google Play Developer account
androidpublisherScope :: Core.Proxy '["https://www.googleapis.com/auth/androidpublisher"]
androidpublisherScope = Core.Proxy
