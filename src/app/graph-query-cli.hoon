/-  g=graph-store
/+  shoe, verb, dbug, default-agent, resource, pal
/=  query  /gen/graph-query
::
|%
+$  state-0
  $:  %0
      query-input=gen-input
      posts=(list [resource:g (list node:g)])
      render-input-state=[resource=tape text=tape author=tape before=tape after=tape]
  ==
::
+$  gen-input  [=resource:resource search-text=(unit tape) author=(unit @p) before=(unit @da) after=(unit @da) many=_420 ~]
::
::
+$  command
  $%
      [%run-query ~]
      [%clear-query-state ~]
      [%show-options ~]
      [%show-resource ~]
      [%select-resource id=@ud]
      [%search-text text=tape]
      [%author author=(unit @p)]
      [%after after=@da]
      [%before before=@da]
  ==
::
+$  card  card:shoe
--
=|  state-0
=*  state  -
::
%+  verb  |
%-  agent:dbug
^-  agent:gall
%-  (agent:shoe command)
^-  (shoe:shoe command)
=<
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
    des   ~(. (default:shoe this command) bowl)
    qo    ~(. +> bowl)
::
++  on-init   on-init:def
++  on-save   !>(state)
++  on-load
  |=  old=vase
  ^-  (quip card _this)
  [~ this]
::
++  on-poke   on-poke:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
::
++  command-parser  build-parser:qo
::
++  tab-list  tab-list:des
::
++  on-command
  |=  [sole-id=@ta =command]
  ^-  (quip card _this)
  =^  cards  state
  ?-  -.command
      %run-query  run-query:qo
      ::
      %clear-query-state  clear-query-state:qo
      ::
      %show-options  render-options:render:qo
      ::
      %show-resource  joined-groups:render:qo
      ::
      %select-resource  (put-resource:build-query-generator-input:qo command)
      ::
      %search-text  (put-search-text:build-query-generator-input:qo command)
      ::
      %author  (put-author:build-query-generator-input:qo command)
      ::
      %before  (put-before:build-query-generator-input:qo command)
      ::
      %after  (put-after:build-query-generator-input:qo command)
  ==
  [cards this]
::
++  can-connect
  |=  sole-id=@ta
  ^-  ?
  (team:title [our src]:bowl)
::
++  on-connect
  |=  sole-id=@ta
  ^-  (quip card _this)
  :_  this
  [%shoe [sole-id]~ start:render:qo]~
::
++  on-disconnect   on-disconnect:des
--
::
|_  =bowl:gall
::
++  build-parser
  |=  sole-id=@ta
  ^+  |~(nail *(like [? command]))
  %+  pick
    ;~  pose
      (cold [%run-query ~] (just 'r'))
      (cold [%clear-query-state ~] hep)
      (cold [%show-options ~] wut)
      (cold [%show-resource ~] (just 'g'))
    ==
    ::
    ;~  pose
      (stag %select-resource dem)
      (stag %search-text ;~(pfix fas (star next)))
      (stag %author ;~(pfix sig (punt fed:ag)))
      (stag %before ;~(pfix (just 'b') (cook year when:so)))
      (stag %after ;~(pfix (just 'a') (cook year when:so)))
    ==
::
++  run-query
  ^-  (quip card _state)
  =/  posts-from-gen-call
    =<  +
        %-  +:query
        [[now:bowl eny:bowl byk:bowl] query-input.+.state ~]
  :_
    %=  state
          posts  posts-from-gen-call
        ==
  :~
  :+  %shoe  ~
  :^  %table
  ~[t+'ship' t+'date' t+'post' t+'channel']
  ~[8 27 35 12]
  ^-  (list (list dime))
    %-  zing
    %+  turn  posts-from-gen-call
    |=  i=[resource:g (list node:g)]
      %+  turn  +.i
        |=  i=node:g
        =/  text  (get-text-content:destructure-node i)
        =/  table-text
        ?~  text  ~
        ?.  (gth (lent text) 1)
        (crip i.text)
        %-  crip
        ;;(tape (reel `(list tape)`(turn text |=(i=tape (weld i "\0a"))) weld))
        ~[p+(get-author:destructure-node i) da+(get-time-sent:destructure-node i) t+table-text t+(get-channel:destructure-node -:^i)]
  ==
::
++  clear-query-state
  ^-  (quip card _state)
  :_  =.  state  *state-0  state
  [%shoe ~ %sole %txt "query cleared"]~
::
++  build-query-generator-input
  |%
    ++  put-resource
      |=  i=[%select-resource @ud]
      ^-  (quip card _state)
      =/  current-resource  (~(got by joined-groups-map) +.i)
      =/  render-current-resource  "=group {(scow %p entity.current-resource)}/{(scow %tas name.current-resource)}   "
      :_  %=  state
                resource.query-input  current-resource
                resource.render-input-state  render-current-resource
          ==
      :~
      :+  %shoe  ~
      :+  %sole  %txt
      render-current-resource
      ==
      ::
    ++  put-search-text
      |=  i=[%search-text tape]
      ^-  (quip card _state)
      =/  render-current-text  "=text {+.i}   "
      :_  %=  state
                search-text.query-input  `+.i
                text.render-input-state  render-current-text
          ==
      :~
      :+  %shoe  ~
      :+  %sole  %txt
      render-current-text
      ==
    ++  put-author
      |=  i=[%author (unit @p)]
      ^-  (quip card _state)
      =/  render-current-author  "=author {(scow %p (need +.i))}   "
      :_  %=  state
                author.query-input  +.i
                author.render-input-state  render-current-author
          ==
      :~
      :+  %shoe  ~
      :+  %sole  %txt
      render-current-author
      ==
    ++  put-before
      |=  i=[%before @da]
      ^-  (quip card _state)
      =/  render-current-before  "=before {(scow %da +.i)}   "
      :_  %=  state
                before.query-input  `+.i
                before.render-input-state  render-current-before
          ==
      :~
      :+  %shoe  ~
      :+  %sole  %txt
      render-current-before
      ==
    ++  put-after
      |=  i=[%after @da]
      ^-  (quip card _state)
      =/  render-current-after  "=after {(scow %da +.i)}   "
      :_  %=  state
                after.query-input  `+.i
                after.render-input-state  render-current-after
          ==
      :~
      :+  %shoe  ~
      :+  %sole  %txt
      render-current-after
      ==
  --
::
++  joined-groups-list
  %~  tap  in
  .^((set resource:resource) %gy /(scot %p our:bowl)/group-store/(scot %da now:bowl)/groups)
::
++  joined-groups-listmap
  (fuse:pal (gulf 1 (lent joined-groups-list)) joined-groups-list)
::
++  joined-groups-map
  (malt joined-groups-listmap)
::
++  destructure-node
  |%
    ++  get-text-content
      |=  i=node:g
      ?>  ?=(%& -.post.i)
      %+  turn  (skim contents.p.post.i |=(i=content:g |(?=([%text *] i) ?=([%url *] i))))
      |=  i=content:g
      ?+  -.i  ~
        %text
          ?>  ?=([%text *] i)  (trip text.i)
        %url
          ?>  ?=([%url *] i)  (trip url.i)
      ==
    ++  get-author
      |=  i=node:g
      ?>  ?=(%& -.post.i)
      author.p.post.i
    ::
    ++  get-time-sent
      |=  i=node:g
      ?>  ?=(%& -.post.i)
      =/  time-sent  time-sent.p.post.i
      (sub time-sent (mod time-sent ~s1))
    ::
    ++  get-channel
      |=  i=resource:g
      (crip "{(scow %p entity.i)}/{(scow %tas name.i)}")
  --
::
++  render
  |%
  ::
  ++  start  [%sole %txt "graph-store query. press ? to see query options"]
  ::
  ++  render-options
    ^-  (quip card _state)
    :-
    :~
    :+  %shoe  ~
    :+  %sole  %mor
    =-  (turn - (lead %txt))
    :~
    ""
    "g   show groups"
    "1   select a group to query from and press enter"
    "/   enter a search term"
    "~   enter ship to see all posts from this ship"
    "b   enter a date to see posts before that date. date must be in @da aura without a leading sig. e.g. 2021.5.30 or 2021.5.30..13.03.00"
    "a   enter a date to see posts after that date. date must be in @da aura without a leading sig. e.g. 2021.5.30 or 2021.5.30..13.03.00"
    "r   run query"
    "-   clear query"
    ""
    ==
    ==
    state
  ::
  ++  joined-groups
    ^-  (quip card _state)
    :-
    :~
    :+  %shoe  ~
    :+  %sole  %mor
    =-  (turn - (lead %txt))
    ^-  wall
    %+  turn  joined-groups-listmap
    |=  i=[id=@ud =resource:resource]
    "{(scow %ud id.i)}   {(scow %p -.resource.i)}/{(scow %tas +.resource.i)}"
    ==
    state
  ::
  --
--