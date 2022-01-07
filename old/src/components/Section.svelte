<script lang="ts">
	export let id: string = "";
	export let watermarkPadding: boolean = false;
	export let dark: boolean = false;

	$: watermarkPaddingClass = watermarkPadding ? "watermark-padding" : "";
</script>

<section id="{id}" class:dark>
	<div class="content" class:watermark-padding={watermarkPadding}>
		<slot/>
	</div>
</section>

<style lang="scss">
	@import "../styles/constants.scss";

	section {
		// Don't let menu go overtop section when anchor scrolling
		scroll-margin-top: $menu-height;

		&.dark {
			background: #f5f5f9;
		}

		.content {
			max-width: $max-content-width;
			width: 95%;
			margin: 0 auto;

			&.watermark-padding {
				padding: 80px 0 100px 0;
			}
		}
	}
</style>