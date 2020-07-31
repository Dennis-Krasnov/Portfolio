<script lang="ts">
	export let id: string;
</script>

<section id="{id}">
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
	}
</style>