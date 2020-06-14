<script>
	import Button from '../components/Button.svelte';

	export let title;
	export let summary;
</script>

<div class="landing-container">
	<div class="lhs">
		<h1>{title}</h1>
		<p>{@html summary}</p>

		<ul class="cta">
			<Button href="#projects" primary>view projects</Button><Button href="/resume.pdf" targetBlank>download resume</Button>
		</ul>
	</div>
	<div class="rhs">
	</div>
</div>
<!-- TODO: pdf icon inside button -->

<!-- <h2>Companies I've worked for</h2>
<p>lalla</p> -->
<!-- <div>
	{#each companyLogoUrls as companyLogoUrl}
		<div>{companyLogoUrl}</div>
	{/each}
</div> -->

<style lang="scss">
	@import "../style/constants.scss";

	// $two-by-three-breakpoint: 670px;
	$two-by-three-breakpoint: 820px;

	.landing-container {
		display: grid;

		// grid-template-rows: .55fr .45fr;
		grid-gap: 0 30px;
		gap: 0 30px;
		padding: $m-l 0 0 0;

		@media (min-width: $two-by-three-breakpoint) {& {
			grid-template-columns: .55fr .45fr;
			// grid-template-rows: auto;
			grid-gap: 0 40px;
			gap: 0 40px;

			min-height: 299px; // height of lhs when p spans 3 lines.

			// padding: $m-xl 0 (2 * $m-xl) 0;
			// padding: $m-xl 0 $m-xl 0;
			// padding: $m-xl 0 $m-l 0;
			padding: $m-xl 0 $m-l 0;
			// padding: $m-xl 0 0 0;
		}}
	}

	.lhs {
		h1 {
			font-weight: 500;
			margin: 0 0 20px 0;
			color: #32325d;

			font-size: 34px;
			line-height: 44px;

			transition: all 0.25s ease;
			
			@media (min-width: $two-by-three-breakpoint) {& {
				font-size: 42px;
				line-height: 52px;
			}}
		}

		p {
			font-weight: 300;
			color: #525f7f;
			font-size: 23px;
			line-height: 35px;
			// text-align: center;
		}

		.cta {
			// margin: 0 0 30px;
			margin: 15px 0 30px;

			@media (min-width: $two-by-three-breakpoint) {& {
				// margin: 50px 0 0 0;
				margin: 30px 0 0 0;
			}}
		}
	}

	.rhs {
		// width: 436px;
		// height: 353px;

		// width: 436px;
		// height: 353px;
		// background: rgba(255, 0, 0, 0.336);
		background: url("/cartoon.png");
		background-size: contain;
		background-repeat: no-repeat;
		background-position: center;
		// background-position: top left;

		// -webkit-transform-origin: top center;
		// transform-origin: top center;
		// transform: scale(1.3) translateX(50px) translateY(0);
		// transform: scale(1.3) translateX(50px) translateY(0) perspective(3190px) rotateY(-29deg) rotateX(4deg) rotate(1deg);

		display: none;

		@media (min-width: $two-by-three-breakpoint) {& {
			display: block;
		}}
	}
</style>