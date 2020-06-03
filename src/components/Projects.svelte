<script>
</script>

<div class="projects-container">
    <slot/>
</div>

<style lang="scss">
    @import "../style/constants.scss";

    $two-by-three-breakpoint: 42.5em;

    .projects-container {
        display: grid;
        justify-content: center;
        justify-items: center;

        // Overriden
        grid-template-columns: auto;
        grid-template-rows: auto;
        // grid-gap: 26px 0;
        gap: 52px;

        @media (min-width: $two-by-three-breakpoint) {& {
            grid-template-columns: repeat(2, 1fr);
            grid-template-rows: auto;
            // grid-gap: 42px 26px;
            // gap: 42px 26px;
        }}
    }
</style>