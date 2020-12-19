<script lang="ts">
	import Button from './Button.svelte';

	export let title: string;
	export let summary: string;

	// Log custom event in Google Analytics
	let logDownloadEvent = () => {
		// @ts-ignore
		firebase.analytics().logEvent("resume_download");
	}
</script>

<div class="landing-container">
	<div class="lhs">
		<h1>{title}</h1>
		<p>{@html summary}</p>

		<div class="cta">
			<Button href="#projects" buttonRow primary>view projects</Button><Button href="/dennis_krasnov_resume.pdf" buttonRow targetBlank on:click={logDownloadEvent}>download resume</Button>
		</div>
	</div>
	<div class="rhs" />
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	.landing-container {
		display: grid;

		padding: 32px 0 80px 0; // FIXME

		@media (min-width: $landing-page-breakpoint) {& {
			grid-template-columns: .55fr .45fr;
			gap: 0 40px;

			padding: 64px 0 120px 0; // FIXME

			// Height of lhs when p spans 2 lines
			min-height: 264px;
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
			
			@media (min-width: $landing-page-breakpoint) {& {
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
			margin: 0 0 0 0;

			@media (min-width: $landing-page-breakpoint) {& {
				margin: 15px 0 0 0;
			}}
		}
	}

	.rhs {
		background: url("/cartoon_caricature.png");
		background-size: contain;
		background-repeat: no-repeat;
		background-position: center;

		@media (max-width: $landing-page-breakpoint) {& {
			display: none;
		}}
	}
</style>