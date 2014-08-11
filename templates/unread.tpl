<div class="unread">
	<ol class="breadcrumb">
		<li><a href="{relative_path}/">[[global:home]]</a></li>
		<li class="active">[[unread:title]]</li>
	</ol>

	<div id="category-no-topics" class="alert alert-warning {no_topics_message}">
		<strong>[[unread:no_unread_topics]]</strong>
	</div>

	<div class="markread btn-group {show_markread_button}">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			[[unread:mark_as_read]] <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">

			<li role="presentation">
				<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
			</li>

			<li role="presentation">
				<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
			</li>
			<li class="divider"></li>
		</ul>
	</div>

	<a href="{relative_path}/unread">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>

	<div class="category row">
		<div class="col-md-12">
			<!-- IMPORT partials/topics_list.tpl -->
			<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		</div>
	</div>
</div>
