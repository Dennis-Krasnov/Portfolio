<script lang="ts">
    export let url: string;
</script>

<a href="{url}" target="_blank" rel="noopener"><slot/></a>

<style>
  a {
    margin: 0 10px;
    padding: 15px;

    color: #556;
    transition: all .15s ease;
  }

  /* Similar hover animation to button */
  a:hover {
      color: #242733;
      /* padding-bottom: 2px;  FIXME: fix text jumping when hovering bottom part */
      transform: translateY(-2px);
  }
</style>