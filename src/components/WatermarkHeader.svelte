<script lang="ts">
	export let title: string;
</script>

<h1>{title}</h1>

<style lang="scss">
	@import "../styles/constants.scss";

	// TODO: If I make these inline I might not need to make sections position: relative and hide overflow!
	h1 {
		text-align: center;
	}
</style>