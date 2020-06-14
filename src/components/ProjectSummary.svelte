<script>
	export let name;
	export let summary;
	export let colourHex;
	export let blackText = false;
	export let projectId;
	export let imageUrl;
</script>

<a rel="prefetch" href="projects/{projectId}">
	<div>
		<div class="placeholder" style="background: {colourHex}">
			<div class="title" style="color: {blackText ? "rgb(21, 48, 79)" : "white"}">
				<h4>{name}</h4>
				<h2>{@html summary}</h2>
			</div>
			<div class="thumbnail">
				<img src="{imageUrl}" alt="{summary}">
			</div>
		</div>
	</div>
</a>

<style lang="scss">
	@import "../style/constants.scss";

	// Inspired by http://qaisar.design

	a {
		width: 100%;
		// display: block;
		// transition: all 0.5s ease;

		&:hover {
			.placeholder {
				transform: scale(0.94);
				transition: all 0.25s ease;
			}

			.thumbnail {
				transition: all 0.25s ease;
    			transform: scale(1.15);
			}
		}
	
		
		.placeholder {
			// height: 682px;
			height: 560px;
			// TODO: breakpoint height change

			padding: 40px;
			position: relative;
			overflow: hidden;
			transition: all 0.25s ease;

			.title {
				position: relative;

				h4 {
					// color: #fff;
					text-transform: uppercase;
					letter-spacing: 2.5px;
					margin-bottom: 10px;
					// font-family: 'Stolzl Bold';
					font-size: 19px;
					line-height: 28px;
				}

				h2 {
					// color: #fff;
					padding-right: 50px;
					font-size: 42px;
					letter-spacing: -0.3px;
				}
			}

			.thumbnail {
				position: absolute;
				bottom: 0;
				right: 0;

				transition: all 0.25s ease;
				user-select: none;

				img {
					display: block;
					max-width: 100%;
					height: auto;
				}
			}
		}

		@media (min-width: $mobile-breakpoint) {& {
			&:nth-child(odd) {
				margin: -$project-offset 0 0 0;
			}
		}}
	}
</style>