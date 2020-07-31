<script lang="ts">
    import Section from "../components/Section.svelte";
	// import NavLink from "../components/NavLink.svelte";
</script>

<nav>
    <Section>
        el nav
    </Section>
    <!-- <NavLink to="/">Portfolio</NavLink>
    <NavLink to="about">About</NavLink> -->
</nav>

<style lang="scss">
    @import "../styles/constants.scss";

    nav {
        // Stick to top of screen
        position: sticky;
		top: 0;
        z-index: 1;
        
        height: $menu-height;
        
		background: white;
    }
</style>