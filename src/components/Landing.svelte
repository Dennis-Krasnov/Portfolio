<script lang="ts">
	import Button from '../components/Button.svelte';

	export let title: string;
	export let summary: string;
</script>

<div class="landing-container">
	<div class="lhs">
		<h1>{title}</h1>
		<p>{@html summary}</p>

		<ul class="cta">
			<Button href="#projects" primary>view projects</Button><Button href="/dennis_krasnov_resume.pdf" targetBlank>download resume</Button>
		</ul>
	</div>
	<div class="rhs" />
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	$breakpoint: 820px;

	.landing-container {
		display: grid;

		padding: 32px 0 80px 0; // FIXME

		@media (min-width: $breakpoint) {& {
			grid-template-columns: .55fr .45fr;
			gap: 0 40px;

			padding: 64px 0 120px 0; // FIXME

			// Height of lhs when p spans 3 lines
			min-height: 283px;
		}}
	}

	.lhs {
		h1 {
			font-weight: 500;
			margin: 0 0 20px 0;
			font-size: 34px;
			line-height: 44px;

			color: #32325d;
			transition: all 0.25s ease;
			
			@media (min-width: $breakpoint) {& {
				font-size: 42px;
				line-height: 52px;
			}}
		}

		p {
			font-weight: 300;
			font-size: 23px;
			line-height: 35px;

			color: #525f7f;
		}

		.cta {
			margin: 15px 0 0 0;

			@media (min-width: $breakpoint) {& {
				margin: 30px 0 0 0;
			}}
		}
	}

	.rhs {
		background: url("/cartoon.png");
		background-size: contain;
		background-repeat: no-repeat;
		background-position: center;

		@media (max-width: $breakpoint) {& {
			display: none;
		}}
	}
</style>