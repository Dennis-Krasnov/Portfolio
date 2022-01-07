<script lang="ts">
	export let url: string;
	export let icon: string;
</script>

<a href="{url}" target="_blank" rel="noopener"><i class="fab fa-{icon} fa-2x"/></a>

<style lang="scss">
	a {
		margin: 0 10px;
		padding: 15px;

		color: #556;
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