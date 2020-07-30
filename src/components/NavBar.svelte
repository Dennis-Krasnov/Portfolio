<script lang="ts">
	import NavLink from "../components/NavLink.svelte";
</script>

<nav>
    <NavLink to="/">Portfolio</NavLink>
    <NavLink to="about">About</NavLink>
</nav>

<style>
    nav {
        position: sticky;
		top: 0;
		z-index: 1;
		height: 100px;
		background: white;
    }
</style>