<script lang="ts">
	export let title: string;
	export let fontSizeViewWidth: number = 12;
</script>

<!-- TODO: try applying typewriter animation: https://www.npmjs.com/package/svelte-typewriter -->
<h1 style="--font-size: {fontSizeViewWidth}">{title}</h1>

<style lang="scss">
	@import "../styles/constants.scss";

	h1 {
		font-size: calc(1vw * var(--font-size));
		font-weight: 700;
		line-height: 1;
		text-align: center;
		margin-bottom: 48px;

		color: #556; // Instead of body's rgb(51, 51, 51)
		text-transform: uppercase;
		user-select: none;

		@media (min-width: 1200px) {& {
            // Seamlessly cap watermark size at 1200px * 19%
            font-size: calc(1200px * var(--font-size) / 100);
		}}
	}
</style>