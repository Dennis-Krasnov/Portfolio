<script lang="ts">
	import { Router, Route } from "svelte-routing";

	import NavBar from "./components/NavBar.svelte";
	import Footer from "./components/Footer.svelte";

	import ChessCaseStudy from "./routes/ChessCaseStudy.svelte";
	import DietDrivenCaseStudy from "./routes/DietDrivenCaseStudy.svelte";
	import NanoboxCaseStudy from "./routes/NanoboxCaseStudy.svelte";
	import Portfolio from "./routes/Portfolio.svelte";
	import PortfolioCaseStudy from "./routes/PortfolioCaseStudy.svelte";
</script>

<Router>
	<NavBar />
	<main>
		<Route path="/" component="{Portfolio}" />
		<Route path="projects/nanobox" component="{NanoboxCaseStudy}" />
		<Route path="projects/diet-driven" component="{DietDrivenCaseStudy}" />
		<Route path="projects/portfolio" component="{PortfolioCaseStudy}" />
		<Route path="projects/chess" component="{ChessCaseStudy}" />
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