<script>
	import { Router, Link, Route } from "svelte-routing";
	import NavLink from "./components/NavLink.svelte";
	import About from "./routes/About.svelte";
	import Portfolio from "./routes/Portfolio.svelte";

	export let name;
</script>

<!-- url="{url}" -->
<Router>
  <nav>
    <NavLink to="/">Portfolio</NavLink>
    <NavLink to="about">About</NavLink>
    <!-- <NavLink to="blog">Blog</NavLink> -->
  </nav>
  <div>
  	<Route path="/" component="{Portfolio}" />
    <Route path="about" component="{About}" />
    <!-- <Route path="blog/*" component="{Blog}" /> -->
  </div>
</Router>

<!-- <main>
	<h1>Hello the mighty {name}!</h1>
	<p>Visit the <a href="https://svelte.dev/tutorial">Svelte tutorial</a> to learn how to build Svelte apps.</p>
</main> -->

<style>
	/* main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	} */
</style>