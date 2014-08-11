			<div class="navbar-header" id="logged-in-menu">
				<a class="toggle-nav">
					<i class="fa fa-bars fa-2x"></i>
				</a>
			<li id="user_label" class="menu-dropdown notifications">	
				<a class="dropdown-toggle toggle-notifications" data-toggle="dropdown" href="#" id="notif_dropdown"><i class="fa fa-fw fa-bell-o fa-2x" data-content="0" title="[[global:header.notifications]]"></i></a>
						<ul id="notif-list" class="dropdown-menu" aria-labelledby="notif_dropdown">
							<li>
								<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
							</li>
						</ul>
			</li>
			<li id="user_label" class="menu-dropdown chats">			
				<a class="dropdown-toggle toggle-chats" data-toggle="dropdown" href="#" id="chat_dropdown"><i id="chat-count" class="fa fa-comment-o fa-fw fa-2x" title="[[global:header.chats]]"></i></a>
						<ul id="chat-list" class="dropdown-menu" aria-labelledby="chat_dropdown">
							<li>
								<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
							</li>
						</ul>
			</li>			
				<a id="reconnect" class="hide loading" title="Connection to {title} has been lost, attempting to reconnect..."><i class="fa fa-check fa-2x"></i></a>
				</li>
				<div>
					<a href="{relative_path}/">
						<img class="{brand:logo:display} forum-logo" src="{brand:logo}" />
					</a>
					<!-- IF showSiteTitle -->
					<a href="{relative_path}/">
						<h1 class="navbar-brand forum-title">{title}</h1>
					</a>
					<!-- ENDIF showSiteTitle -->

					<div class="header-topic-title visible-xs">
						<span></span>
					</div>
				</div>
			</div>

			<div>


				<!-- IF loggedIn -->
				<ul id="logged-in-menu" class="loggedin-nav navbar-nav pull-left">

					<li id="user_label" class="dropdown userbar">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
							<img id="user-header-picture" src="{user.picture}"/>
						</a>
						<ul id="user-control-list" class="dropdown-menu" aria-labelledby="user_dropdown">
							<li>
								<a id="user-profile-link" href="{relative_path}/user/{user.userslug}"><i class="fa fa-circle status {user.status}"></i> <span id="user-header-name">{user.username}</span></a>
							</li>
							<li id="logout-link">
								<a href="#">[[global:logout]]</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a href="#" class="user-status" data-status="online"><i class="fa fa-circle status online"></i><span> [[global:online]]</span></a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="away"><i class="fa fa-circle status away"></i><span> [[global:away]]</span></a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="dnd"><i class="fa fa-circle status dnd"></i><span> [[global:dnd]]</span></a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="offline"><i class="fa fa-circle status offline"></i><span> [[global:invisible]]</span></a>
							</li>
						</ul>
						  <span>Welcome, {user.username}</span>
					</li>
				</ul>
				<!-- ELSE -->
				<ul id="logged-out-menu main-nav" class="loggedin-nav nav pull-left">
					<!-- IF allowRegistration -->
					<li>
						<a href="{relative_path}/register">
							<i class="fa fa-pencil"></i> <span>[[global:register]]</span>
						</a>
					</li>
					<!-- ENDIF allowRegistration -->
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in"></i> <span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF loggedIn -->

				<!-- IF searchEnabled -->
				<ul class="nav navbar-nav">
					<li>
						<form id="search-form" class="navbar-form navbar-right" role="search" method="GET" action="">
							<div id="search-fields">
								<div class="form-group">
									<input type="text" class="form-control widesearch" placeholder="[[global:search]]" name="query" value="">
									<div class="searchicon">
									<a><i class="fa fa-search fa-fw"></i></a>
									</div>
								</div>
								<button type="submit" class="btn btn-default hide">[[global:search]]</button>
							</div>
						</form>
					</li>
				</ul>
				<!-- ENDIF searchEnabled -->
				<ul class="time pull-left">
					<li>
						<span><i class="fa fa-clock-o pull-left"></i> <div id="time"></div></span>
					</li>
				</ul>
				<ul id="main-nav" class="nav pull-left menu-slide">
					<!-- IF loggedIn -->
					<li>
						<a href="{relative_path}/unread"><i id="unread-count" class="fa fa-fw fa-inbox" data-content="0" title="[[global:header.unread]]"></i> [[global:header.unread]]</a>
					</li>
					<!-- ENDIF loggedIn -->
					<li>
						<a href="{relative_path}/recent"><i class="fa fa-fw fa-clock-o" title="[[global:header.recent]]"></i> [[global:header.recent]]</a>
					</li>
					<li>
						<a href="{relative_path}/tags"><i class="fa fa-fw fa-tags" title="[[global:header.tags]]"></i> [[global:header.tags]]</a>
					</li>
					<li>
						<a href="{relative_path}/popular"><i class="fa fa-fw fa-fire" title="[[global:header.popular]]"></i> [[global:header.popular]]</a>
					</li>
					<li>
						<!-- IF function.displayUsersLink -->
						<a href="{relative_path}/users"><i class="fa fa-fw fa-users" title="[[global:header.users]]"></i> [[global:header.users]]</a>
						<!-- ENDIF function.displayUsersLink -->
					</li>
					<!-- IF isAdmin -->
					<li>
						<a href="{relative_path}/admin" target="_top"><i class="fa fa-fw fa-cogs" title="[[global:header.admin]]"></i> [[global:header.admin]]</a>
					</li>
					<!-- ENDIF isAdmin -->
					<!-- BEGIN navigation -->
					<li class="{navigation.class}">
						<a href="{relative_path}{navigation.route}" title="{navigation.title}">
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->

							<!-- IF navigation.text -->
							<span class="{navigation.textClass}">{navigation.text}</span>
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- END navigation -->
					<li>
						<a href="#" target="_blank"><i class="fa fa-fw fa-link" title="Custom Link"></i> Custom Link</a>
					</li>
				</ul>

			</div>
