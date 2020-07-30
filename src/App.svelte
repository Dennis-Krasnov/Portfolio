<script lang="ts">
	import { Router, Route } from "svelte-routing";

	import NavBar from "./components/NavBar.svelte";
	import Footer from "./components/Footer.svelte";

	import About from "./routes/About.svelte";
	import Portfolio from "./routes/Portfolio.svelte";

  	// export let name: string;
</script>

<Router>
	<NavBar/>
	<main>
		<Route path="/" component="{Portfolio}" />
    	<Route path="about" component="{About}" />
	</main>
	<Footer/>
</Router>