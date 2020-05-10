<script>
</script>

<nav>
	<div class="horizontal">
		<div class="spacer">
			<!-- FIXME: doesn't work when clicking it twice... -->
			<!-- TODO: on:click={() => clear # from url?} -->
			<a rel="prefetch" href="/#" id="logo">(logo) Dennis Krasnov</a>
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

	.horizontal {
		display: flex;
	}

	.spacer {
		flex: 1;
	}

	.horizontal > a {
		margin: 0 10px 0 0;

		/* line-height: 100%;
  		text-align: center; */
	}
</style>