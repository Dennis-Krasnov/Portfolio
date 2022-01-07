<script lang="ts">
    export let imageUrl: string;
    export let altText: string;
</script>

<img src="{imageUrl}" alt="{altText}">

<style lang="scss">
	@import "../styles/constants.scss";

    img {
      width: 100%;
      user-select: none;
    }
</style>