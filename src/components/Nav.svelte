<script>
	import Section from '../components/Section.svelte';

	let eraseHash = () => {
		const delay = 50;
		setTimeout(() => {
				if(history.pushState) {
					history.pushState(null, null, '/');
				}
				else {
					location.hash = '/';
				}
			},
			delay
		);
	}
</script>

<nav>
	<Section id="navigation" noPadding>
		<div class="horizontal">
			<a rel="prefetch" href="/#" id="logo" on:click={eraseHash}>
				<img src="/logo.png" alt="Dennis Krasnov Logo"/>
				<span>Dennis Krasnov</span>
			</a>
			<div class="hamburger">
				<div class="icon"></div>
			</div>
			<ul class="buttons">
				<li><a href="#skills">skills</a></li>
				<li><a href="#projects">projects</a></li>
				<li><a href="#work">work</a></li>
				<li><a href="#contact">contact</a></li>
			</ul>
		</div>
	</Section>
</nav>

<style lang="scss">
	@import "../style/constants.scss";
	@import "../style/font-lock.scss";

	// Inspired by https://squidex.io/

	nav {		
		position: sticky;
		top: 0;
		z-index: 1;
		height: $menu-height;
		background: white;

		.horizontal {
			display: flex;
			flex-flow: row nowrap;
			padding: 8px 0;

			> a {
				display: flex;
				flex-flow: row nowrap;


				img {
					height: $menu-height - 16px;
					user-select: none;
				}

				span {
					@include scss-font-lock(18px, 32px, 320px, $mobile-breakpoint);
					margin: 0 0 0 5px;
					margin: 0 0 0 5px;
					line-height: $menu-height - 16px;
					// font-size: 38px;
					text-transform: uppercase;
					font-weight: 600;
					// color: rgb(21, 48, 79);
					color: #32325d;
				}
				// display: inline-block;
				// padding-top: 0.3125rem;
				// padding-bottom: 0.3125rem;
				// margin-right: 1rem;
				// font-size: 1.25rem;
				// line-height: inherit;
				// white-space: nowrap;

				// svg:not(:root) {
				// 	overflow: hidden;
				// }

			}

			.hamburger {
				flex: 1;

				.icon {
					margin: 0 0 0 auto;
					width: $menu-height - 16px;
					height: $menu-height - 16px;
					background: red;
				}

				@media (min-width: $mobile-breakpoint) {& {
					display: none;
				}}
			}

			.buttons {
				flex: 1;

				display: none;
				flex-flow: row nowrap;
				justify-content: flex-end;
				align-items: center;
				list-style: none;

				li {
					margin: 0 0 0 10px;

					a {
						padding: 8px;
						font-size: 16px;
						color: #525873;
						font-weight: 600;

						// Hover animation 
						// Inspired by https://tobiasahlin.com/blog/css-trick-animating-link-underlines/
						position: relative;

						&:before {
							content: "";
							position: absolute;
							width: 100%;
							height: 2px;
							bottom: 0;
							left: 0;
							background-color: #000;
							visibility: hidden;
							transform: scaleX(0);
							transition: all 0.3s ease-in-out 0s;
						}

						&:hover::before {
							visibility: visible;
							transform: scaleX(1);
						}
					}
				}

				@media (min-width: $mobile-breakpoint) {& {
					display: flex;
				}}
			}
		}
	}
</style>