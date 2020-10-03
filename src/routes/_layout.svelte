<script lang="ts">
	import NavBar from "../components/NavBar.svelte";
	import Footer from "../components/Footer.svelte";
</script>

<NavBar />

<main>
	<slot></slot>
</main>

<Footer />

<style></style>