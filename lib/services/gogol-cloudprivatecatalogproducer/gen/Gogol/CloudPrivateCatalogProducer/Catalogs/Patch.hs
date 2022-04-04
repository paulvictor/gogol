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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific Catalog resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.patch@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Patch
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsPatchResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsPatch (..),
    newCloudPrivateCatalogProducerCatalogsPatch,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.patch@ method which the
-- 'CloudPrivateCatalogProducerCatalogsPatch' request conforms to.
type CloudPrivateCatalogProducerCatalogsPatchResource =
  "v1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Catalog
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Catalog

-- | Updates a specific Catalog resource.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsPatch' smart constructor.
data CloudPrivateCatalogProducerCatalogsPatch = CloudPrivateCatalogProducerCatalogsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the catalog, in the format \`catalogs\/{catalog_id}\'.
    --
    -- A unique identifier for the catalog, which is generated by catalog service.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudPrivatecatalogproducerV1beta1Catalog,
    -- | Field mask that controls which fields of the catalog should be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsPatch' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsPatch ::
  -- |  Output only. The resource name of the catalog, in the format \`catalogs\/{catalog_id}\'.
  --
  -- A unique identifier for the catalog, which is generated by catalog service. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudPrivatecatalogproducerV1beta1Catalog ->
  CloudPrivateCatalogProducerCatalogsPatch
newCloudPrivateCatalogProducerCatalogsPatch name payload =
  CloudPrivateCatalogProducerCatalogsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsPatch
  where
  type
    Rs CloudPrivateCatalogProducerCatalogsPatch =
      GoogleCloudPrivatecatalogproducerV1beta1Catalog
  type
    Scopes CloudPrivateCatalogProducerCatalogsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProducerCatalogsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudPrivateCatalogProducerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudPrivateCatalogProducerCatalogsPatchResource
            )
            Core.mempty
