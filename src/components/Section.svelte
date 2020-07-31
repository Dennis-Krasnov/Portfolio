<script lang="ts">
	export let id: string;
	export let dark: boolean = false;

	$: darkClass = dark ? "dark" : "";
</script>

<section id="{id}" class="{darkClass}">
	<div class="content">
		<slot/>
	</div>
</section>

<style lang="scss">
	@import "../styles/constants.scss";

	section {
		// Allow overflowing absolute-positioned headers
		position: relative;
		overflow: hidden;

		// Don't let menu go overtop section when anchor scrolling
		scroll-margin-top: $menu-height;

		.content {
			max-width: $max-content-width;
			width: 95%;
			margin: 0 auto;
		}

		&.dark {
			background: #f5f5f9;
		}
	}
</style>