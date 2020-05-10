<script>
	export let logoUrl;
	export let summary;
	export let liveUrl;
	export let projectId;
	export let imageUrl;
</script>

<h2 on:click={() => console.log(summary)}>{summary}</h2>

<a href="{liveUrl}" target="_blank">see it live</a>
<a rel="prefetch" href="projects/{projectId}">see case study</a>

<style>

</style>