<script lang="ts">
    export let src: string;
    export let title: string;
</script>

<iframe src="{src}" title="{title}"></iframe>

<style lang="scss">
	@import "../styles/constants.scss";

    iframe {
      width: 100%;
      height: 500px;

      background: white;
    }
</style>