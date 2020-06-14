<script>
</script>

<div class="projects-container">
    <slot/>
</div>

<style lang="scss">
    @import "../style/constants.scss";

    .projects-container {
        display: grid;
        justify-content: center;
        justify-items: center;

        // Overriden
        grid-template-columns: auto;
        grid-template-rows: auto;
        grid-gap: 52px;
        gap: 52px;

        @media (min-width: $mobile-breakpoint) {& {
            grid-template-columns: repeat(2, 1fr);
            grid-template-rows: auto;

            padding: $project-offset 0 0 0;
        }}
    }
</style>