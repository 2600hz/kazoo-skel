%%%-----------------------------------------------------------------------------
%%% @copyright (C) 2010-2020, 2600Hz
%%% @doc
%%% This Source Code Form is subject to the terms of the Mozilla Public
%%% License, v. 2.0. If a copy of the MPL was not distributed with this
%%% file, You can obtain one at https://mozilla.org/MPL/2.0/.
%%%
%%% @end
%%%-----------------------------------------------------------------------------
-module(skel_app).

-behaviour(application).

-include("skel.hrl").
-define(INTEGRATION_MODULES, [{'cb_skels', 'crossbar_maintenance', 'start_module'}]).

-export([start/2, stop/1]).

%%------------------------------------------------------------------------------
%% @doc Implement the application start behaviour.
%% @end
%%------------------------------------------------------------------------------
-spec start(application:start_type(), any()) -> kz_types:startapp_ret().
start(_Type, _Args) ->
    _ = declare_exchanges(),
    kz_datamgr:revise_docs_from_folder(?KZ_SCHEMA_DB, 'skel', <<"schemas">>),
    _ = kapps_maintenance:bind_and_register_views(?APP, 'skel_maintenance', 'register_views'),
    kz_module:application_integrations(?INTEGRATION_MODULES),
    skel_sup:start_link().

%%------------------------------------------------------------------------------
%% @doc Implement the application stop behaviour.
%% @end
%%------------------------------------------------------------------------------
-spec stop(any()) -> any().
stop(_State) ->
    _ = kapps_maintenance:unbind(?APP, 'skel_maintenance', 'register_views'),
    'ok'.


-spec declare_exchanges() -> 'ok'.
declare_exchanges() ->
    kapi_self:declare_exchanges().
