<script>
	export let title;
	export let subheading;
</script>

<!-- TODO: light/dark/etc modifiers? -->
<div id="{title}" class="section">
	<h1>{title}</h1>
	<p>{subheading}</p>
	<slot/>
</div>

<style>
	.section {
		max-width: 1185px;
		width: 95%;
		margin: 120px auto 0 auto;
		/* TODO: make media query - this margin only for desktops! */

		scroll-margin-top: 75px;
	}

	/* TODO: nest with scss */
	/* @media screen and (prefers-reduced-motion: reduce) {
		.section {
			scroll-behavior: auto;
		}
	} */

	h1 {
		/* font-size: 33px; */
		/* font-height: 37px; */
		text-align: center;
		text-transform: uppercase;
		font-weight: 700;

		color: rgba(36, 41, 46, 0.9);
	}

	p {
		margin: 25px auto 50px auto;
		max-width: 647px;
		/* line-height: 24px; */
		text-align: center;
		/* font-size: 18px; */
		font-weight: 700;

		/* font-style: italic; */
	}

</style>