<script>
</script>

<nav>
	<div class="horizontal">
		<div class="spacer">
			<!-- FIXME: doesn't work when clicking it twice... -->
			<!-- TODO: on:click={() => clear # from url?} -->
			<a rel="prefetch" href="/#" id="logo" on:click={() => {
				setTimeout(() => {
						console.log("hello");
						// TODO: if still on #
						if(history.pushState) {
							history.pushState(null, null, '/');
						}
						else {
							location.hash = '/';
						}
					},
					100
				);
			}}><img src="/logo.png" alt="Dennis Krasnov Logo"/></a>
			<!-- Dennis Krasnov -->
		</div>
		<a href="#skills">skills</a>
		<a href="#projects">projects</a>
		<a href="#experience">experience</a>
		<a href="#contact">contact</a>
		<!-- TODO: hamburger for mobile! -->
	</div>
</nav>

<style>
	nav {
		/* position: -webkit-sticky; */
		position: sticky;
		top: 0;
		z-index: 1;

		display: border-box;
		height: 49px;
		line-height: 50px;
		border-bottom: 1px solid rgba(255,62,0,0.1);

		/* text-align: center; */
		background: white;
	}

	#logo img {
		width: 40px;
		height: 40px;
		margin: 5px;
		object-fit: contain;
	}

	.horizontal {
		display: flex;
	}

	.horizontal > a {
		display: none;
	}

	.spacer {
		flex: 1;
	}

	.horizontal > a {
		margin: 0 10px 0 0;
	}

	@media (min-width: 40em) {
		.horizontal > a {
			display: inline-block;
		}
	}
</style>