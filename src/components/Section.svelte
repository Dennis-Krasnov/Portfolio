<script>
	export let id;
	export let watermark = "";
	export let watermarkCreep = 0;
	export let dark = false;
	export let noPadding = false;

	$: darkClass = dark ? "dark" : "";
	$: paddingClass = noPadding ? "no-padding" : "";
	$: watermarkClass = dark ? "right" : "left";
</script>

<section id="{id}" class="section {darkClass} {paddingClass}">
{#if watermark}
	<h1 class="{watermarkClass}">{watermark}</h1>
	<div class="watermark-spacer" style="margin-bottom: max(-{19 * watermarkCreep}vw, -{227.8 * watermarkCreep}px)"></div>
{/if}
	<div class="content">
		<slot/>
	</div>
</section>

<style lang="scss">
	@import "../style/constants.scss";

	$breakpoint: 1200px;
	$padding-size: 80px;

	.section {
		position: relative;
		overflow: hidden;
		scroll-margin-top: $menu-height;
		padding: $padding-size 0 ($padding-size + 20px) 0; // TODO: calculate the font size difference properly

		h1 {
			position: absolute;
			user-select: none;

			font-size: 19vw;
			line-height: 1;
			font-weight: 700;

			text-transform: uppercase;
			z-index: -1;
			// color:  #222534;
			color: #3e404a;

			@media (min-width: $breakpoint) {& {
				font-size: 227.8px;
			}}

			&.left {
				top: $padding-size;
				left: calc(max(-2.5vw, -30px));
			}

			&.right {
				top: $padding-size;
				right: calc(max(-2.5vw, -30px)); // TODO: scroll bar takes up some space, => -1.5vw??
			}
		}

		.watermark-spacer {
			height: 19vw;

			@media (min-width: $breakpoint) {& {
				height: 227.8px;
			}}
		}

		.content {
			max-width: $max-screen-width;
			width: 95%;
			margin: 0 auto;
		}


		&.no-padding {
			padding: 0;
		}

		// 	padding: 80px 0 0 0;
		// }
		// // @media (min-width: 40em) {& {
		// // 	margin: $m-xl * 2 auto 0 auto;
		// // }}

		// &.no-top-padding {
		// 	padding-top: 0;
		// }

		// &.no-bottom-padding {
		// 	padding-bottom: 0;
		// }

		&.dark {
			background: #f5f5f9;
			z-index: -2;
		}
	}
</style>