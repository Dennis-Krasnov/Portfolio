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

<style>
	/* main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	} */
</style>