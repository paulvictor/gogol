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
-- Module      : Gogol.AccessContextManager.AccessPolicies.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the IAM policy for the specified Access Context Manager access policy.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.getIamPolicy@.
module Gogol.AccessContextManager.AccessPolicies.GetIamPolicy
    (
    -- * Resource
      AccessContextManagerAccessPoliciesGetIamPolicyResource

    -- ** Constructing a Request
    , newAccessContextManagerAccessPoliciesGetIamPolicy
    , AccessContextManagerAccessPoliciesGetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.getIamPolicy@ method which the
-- 'AccessContextManagerAccessPoliciesGetIamPolicy' request conforms to.
type AccessContextManagerAccessPoliciesGetIamPolicyResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "getIamPolicy" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] GetIamPolicyRequest Core.:>
                       Core.Post '[Core.JSON] Policy

-- | Gets the IAM policy for the specified Access Context Manager access policy.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesGetIamPolicy' smart constructor.
data AccessContextManagerAccessPoliciesGetIamPolicy = AccessContextManagerAccessPoliciesGetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GetIamPolicyRequest
      -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesGetIamPolicy' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesGetIamPolicy 
    ::  GetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
    -> AccessContextManagerAccessPoliciesGetIamPolicy
newAccessContextManagerAccessPoliciesGetIamPolicy payload resource =
  AccessContextManagerAccessPoliciesGetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesGetIamPolicy
         where
        type Rs
               AccessContextManagerAccessPoliciesGetIamPolicy
             = Policy
        type Scopes
               AccessContextManagerAccessPoliciesGetIamPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessContextManagerAccessPoliciesGetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesGetIamPolicyResource)
                      Core.mempty
