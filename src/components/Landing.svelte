<script>
	export let title;
	export let summary;
	export let companyLogoUrls;
</script>

<big>{title}</big>
<p>{summary}</p>

<a href="#skills" class="secondary-button">view my work</a>

<a href="/successkid.jpg" class="primary-button" download>download resume</a>
<!-- TODO: pdf icon inside button -->

<h2>Companies I've worked for</h2>
<p>lalla</p>
<div>
	{#each companyLogoUrls as companyLogoUrl}
		<div>{companyLogoUrl}</div>
	{/each}
</div>


<style>

</style>