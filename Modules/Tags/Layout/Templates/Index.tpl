{*
	variables that are available:
	- {$tags}: contains an array with all tags that are used on the site, each element contains data about the tag
*}

<header class="hd">
	<h3>{$lblTags|ucfirst}</h3>
</header>

<section id="tagsIndex" class="mod">
	<div class="bd content">
		{option:!tags}<p>{$msgTagsNoItems}</p>{/option:!tags}
		{option:tags}
			<ul>
				{iteration:tags}
					<li><a href="{$var|geturlforblock:'Tags':'Detail'}/{$tags.url}">{$tags.name}</a></li>
				{/iteration:tags}
			</ul>
		{/option:tags}
	</div>
</section>