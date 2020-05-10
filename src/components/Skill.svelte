<script>
	export let imageUrl;
	export let title;
	export let summary;
</script>

<div class="skill-container">
	<div/>
	<h2>{title}</h2>
	<p>{summary}</p>
</div>

<style>
	.skill-container {
		display: flex;
		flex-flow: column nowrap;
		padding: 25px 0;
	}

	@media (min-width: 40em) {
		.skill-container {
			padding: 25px;
		}
	}

	.skill-container > div {
		background: red;

		/* https://stackoverflow.com/a/33269282 */
		min-height: 35px;
		height: auto;
		flex-shrink: 0;
	}

	.skill-container > h2 {
		margin: 20px 0 0 0;
	}

	.skill-container > p {
		margin: 20px 0 0 0;
	}
</style>