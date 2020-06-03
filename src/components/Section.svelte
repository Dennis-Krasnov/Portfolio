<script>
	export let title;
	export let subheading;
</script>

<!-- TODO: light/dark/etc modifiers? -->
{#if title}
	<section id="{title}" class="section">
		<h1>{title}</h1>
		<p>{subheading}</p>
		<slot/>
	</section>
{:else}
	<section class="section">
		<slot/>
	</section>
{/if}

<style lang="scss">
	@import "../style/constants.scss";
	// @import "../style/mixins.scss";

	.section {
		max-width: $max-screen-width;
		width: 95%;
		margin: $m-xl auto 0 auto;
		// margin-top: 30px;
		// @include css-lock($m-xl, $m-xl * 5, 320px, 1200px, margin-top);
		// margin-right: auto;
		// margin-bottom: 0;
		// margin-left: auto;

		// calc(64px + (320px - 64px) * ((100vw - 320px) / (1200px - 320px)))
		// calc(64px + (320px - 64px) * ((100vw - 320px)))
		// calc(64px + (320px - 64px))
		// calc(64px)

		scroll-margin-top: $m-l + $menu-height;

		// @media (min-width: 40em) {& {
		// 	margin: $m-xl * 2 auto 0 auto;
		// }}

		&:first-child {
			margin: 0 auto;
		}
	}

	h1 {
		font-size: 2em; // 28 -> 36px
		text-align: center;
		text-transform: uppercase;
		font-weight: 700;

		color: rgba(36, 41, 46, 0.9);
	}

	p {
		margin: $m-n auto $m-l auto;
		max-width: 647px;
		text-align: center;
		font-style: italic;
		// font-weight: 700;
	}
</style>