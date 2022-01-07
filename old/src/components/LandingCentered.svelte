<script lang="ts">
	export let title: string;
	export let summary: string;
</script>

<div class="landing-container">
	<h1>{title}</h1>
	<p>{@html summary}</p>

	<div class="cta">
		<slot name="cta" />
	</div>
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	.landing-container {
		text-align: center;
		padding: 32px 0 80px 0; // FIXME

		// For better readability
		max-width: 700px;
		margin: 0 auto;

		@media (min-width: $landing-page-breakpoint) {& {
			padding: 64px 0 120px 0; // FIXME
		}}

		h1 {
			font-weight: 500;
			margin: 0 0 20px 0;
			font-size: 34px;
			line-height: 44px;

			color: #32325d;
			transition: all 0.25s ease;
			font-weight: bold;
			
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
</style>