<script lang="ts">
	export let title: string;
	export let negativeMargin: number = 0;
</script>

<!-- TODO: use vw instead of pixels, headers are barely visible when screen is just larger than mobile breakpoint -->
<!-- TODO: try applying typewriter animation: https://www.npmjs.com/package/svelte-typewriter -->
<h1 style="margin-bottom: -{negativeMargin}px">{title}</h1>

<style lang="scss">
	@import "../styles/constants.scss";

	h1 {
		font-size: 19vw;
		font-weight: 700;
		line-height: 1;
		text-align: center;

		color: #556; // Instead of body's rgb(51, 51, 51)
		text-transform: uppercase;
		user-select: none;

		@media (min-width: 1200px) {& {
			// Seamlessly cap watermark size at 1200px * 19%
			font-size: 228px;
		}}

		@media (max-width: $mobile-breakpoint) {& {
			// Revert to a normal header on mobile screens
			margin-bottom: 32px !important;
		}}
	}
</style>