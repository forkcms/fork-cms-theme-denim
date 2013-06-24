{*
	Variables that are available:
	- {$tagsModules}: contains all tags, grouped per module
*}

<section id="tagsDetail" class="mod">
	<header class="hd">
		<h3>{$lblItemsWithTag|sprintf:{$tag.name}|ucfirst}</h3>
	</header>
	<div class="bd content">
		{option:tagsModules}
			{iteration:tagsModules}
				<header class="hd">
					<h3>{$tagsModules.label}</h3>
				</header>
				<div class="bd">
					<ul>
						{iteration:tagsModules.items}
							<li><a href="{$tagsModules.items.full_url}">{$tagsModules.items.title}</a></li>
						{/iteration:tagsModules.items}
					</ul>
				</div>
			{/iteration:tagsModules}
		{/option:tagsModules}
		<footer class="links">
			<ul>
				<li class="overview"><span>&nbsp;</span><a href="{$var|geturlforblock:'tags'}" title="{$lblToTagsOverview|ucfirst}">{$lblToTagsOverview|ucfirst}</a></li>
			</ul>
		</footer>
	</div>
</section>