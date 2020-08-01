<script lang="ts">
	import { Link } from "svelte-routing";

    export let name: string;
	export let summary: string;
	export let colourHex: string;
	export let blackText: boolean = false;
	export let projectId: string;
	export let imageUrl: string;

	$: colourClass = blackText ? "" : "white-text";
</script>

<div class="project-container">
	<!-- TODO: switch back to a? what advantage does Link give? -->
	<Link to="projects/{projectId}">
		<div class="placeholder" style="background: {colourHex}">
			<div class="title {colourClass}">
				<h4>{name}</h4>
				<h2>{@html summary}</h2>
			</div>
			<div class="thumbnail">
				<img src="{imageUrl}" alt="{summary}">
			</div>
		</div>
	</Link>
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	// Inspired by http://qaisar.design

	.project-container {
		// Force shorter names/summaries to fill full width
		width: 100%;

		&:hover {
			.placeholder {
				transform: scale(0.94);
			}

			.thumbnail {
    			transform: scale(1.15);
			}
		}
	
		
		.placeholder {
			position: relative;
			height: 520px;
			padding: 40px;

			// Width of placeholder on largest screen
			max-width: 394px;

			overflow: hidden;
			transition: all 0.25s ease;

			.title {
				color: rgb(21, 48, 79);

				h4 {
					text-transform: uppercase;
					letter-spacing: 2.5px;
					margin-bottom: 10px;
					font-size: 19px;
					line-height: 28px;
				}

				h2 {
					padding-right: 50px;
					font-size: 42px;
					letter-spacing: -0.3px;
				}

				&.white-text {
					color: white;
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

		@media (min-width: $max-content-width - $project-shink-before-breakpoint) {& {
			margin: auto;

			// Switch to :nth-child(odd) for alternative layout
			&:nth-child(even) {
				margin: -$project-offset 0 $project-offset 0;
			}
		}}
	}
</style>