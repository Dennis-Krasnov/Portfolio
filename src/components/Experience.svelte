<script>
	export let name;
	export let title;
	// TODO: export let logoUrl;

	// TODO: array of start/end dates
	export let startDate;
	export let endDate;

	$: shortenedStartDate = startDate;
	$: shortenedEndDate = endDate;

	export let points;

	export let quote;
	export let quotee;
</script>

<h3>{name}</h3>
{title} {startDate} {endDate}

<ul>
	{#each points as point}
	<li>{point}</li>
	{/each}
</ul>

<blockquote>"{quote}" - {quotee}</blockquote>

<style lang="scss">
	@import "../style/constants.scss";

	// TODO: timeline only for large screens!

</style>