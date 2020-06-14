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

<style lang="scss">
	@import "../style/constants.scss";

	// $two-by-three-breakpoint: 670px;
	$two-by-three-breakpoint: 820px;

	.landing-container {
		display: grid;

		grid-gap: 0 30px;
		gap: 0 30px;
		padding: $m-l 0 0 0;

		@media (min-width: $two-by-three-breakpoint) {& {
			grid-template-columns: .55fr .45fr;
			grid-gap: 0 40px;
			gap: 0 40px;

			min-height: 299px; // height of lhs when p spans 3 lines.

			padding: $m-xl 0 $m-l 0;
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
		}

		.cta {
			margin: 15px 0 30px;

			@media (min-width: $two-by-three-breakpoint) {& {
				margin: 30px 0 0 0;
			}}
		}
	}

	.rhs {
		background: url("/cartoon.png");
		background-size: contain;
		background-repeat: no-repeat;
		background-position: center;

		display: none;
		@media (min-width: $two-by-three-breakpoint) {& {
			display: block;
		}}
	}
</style>