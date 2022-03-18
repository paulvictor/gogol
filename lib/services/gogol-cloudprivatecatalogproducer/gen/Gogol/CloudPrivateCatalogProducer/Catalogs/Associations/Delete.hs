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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the given Association.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.associations.delete@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.Delete
    (
    -- * Resource
      CloudPrivateCatalogProducerCatalogsAssociationsDeleteResource

    -- ** Constructing a Request
    , newCloudPrivateCatalogProducerCatalogsAssociationsDelete
    , CloudPrivateCatalogProducerCatalogsAssociationsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalogProducer.Types

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.associations.delete@ method which the
-- 'CloudPrivateCatalogProducerCatalogsAssociationsDelete' request conforms to.
type CloudPrivateCatalogProducerCatalogsAssociationsDeleteResource
     =
     "v1beta1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes the given Association.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsAssociationsDelete' smart constructor.
data CloudPrivateCatalogProducerCatalogsAssociationsDelete = CloudPrivateCatalogProducerCatalogsAssociationsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The resource name of the @Association@ to delete.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsAssociationsDelete' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsAssociationsDelete 
    ::  Core.Text
       -- ^  The resource name of the @Association@ to delete. See 'name'.
    -> CloudPrivateCatalogProducerCatalogsAssociationsDelete
newCloudPrivateCatalogProducerCatalogsAssociationsDelete name =
  CloudPrivateCatalogProducerCatalogsAssociationsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogProducerCatalogsAssociationsDelete
         where
        type Rs
               CloudPrivateCatalogProducerCatalogsAssociationsDelete
             = GoogleProtobufEmpty
        type Scopes
               CloudPrivateCatalogProducerCatalogsAssociationsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudPrivateCatalogProducerCatalogsAssociationsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogProducerCatalogsAssociationsDeleteResource)
                      Core.mempty

