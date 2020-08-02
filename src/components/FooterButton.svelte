<script lang="ts">
	export let url: string;
	export let icon: string;
</script>

<a href="{url}"><i class="fab fa-{icon} fa-lg" /></a>

<style lang="scss">
	a {
		margin: 0 10px;
		border-radius: 50%;
		padding: 15px;

		// background: #f5f5f9; // FIXME: looks better without background circle!
		color: black;
		-webkit-transition: all .15s ease;
		transition: all .15s ease;

		// Similar hover animation to button
		&:hover {
			color: #242733;
			// padding-bottom: 2px; // FIXME: fix text jumping when hovering bottom part
			transform: translateY(-2px);
		}
	}
</style>