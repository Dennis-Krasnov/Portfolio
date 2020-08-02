<script lang="ts">
	import { Router, Route } from "svelte-routing";

	import NavBar from "./components/NavBar.svelte";
	import Footer from "./components/Footer.svelte";

	import About from "./routes/About.svelte";
	import Portfolio from "./routes/Portfolio.svelte";
</script>

<Router>
	<NavBar />
	<main>
		<Route path="/" component="{Portfolio}" />
		<Route path="projects/nanobox" component="{About}" />
		<Route path="projects/diet-driven" component="{About}" />
		<Route path="projects/portfolio" component="{About}" />
		<Route path="projects/chess" component="{About}" />
	</main>
	<Footer />
</Router>


<style lang="scss">
	:global(html) {
		scroll-behavior: smooth;

		@media screen and (prefers-reduced-motion: reduce) {& {
			scroll-behavior: auto;
		}}
	}

	:global(body) {
		font-size: 16px;
		font-family: 'Source Sans Pro', sans-serif;
		color:rgb(51, 51, 51);
	}

	:global(h1, h2, h3, h4, h5, h6, p, ul, ol, pre) {
		margin: 0;
		padding: 0;
	}

	:global(a) {
		text-decoration: none;
	}
</style>