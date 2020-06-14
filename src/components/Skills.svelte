<script>
</script>

<div class="skills-container">
    <slot/>
</div>

<style lang="scss">
    @import "../style/constants.scss";

    .skills-container {
        display: grid;
        justify-content: center;
        justify-items: center;

        // Overriden
        grid-template-columns: 100%;
        grid-template-rows: repeat(6, auto);
        grid-gap: 26px 0;
        gap: 26px 0;

        @media (min-width: $mobile-breakpoint) {& {
            grid-template-columns: repeat(3, 1fr);
            grid-template-rows: repeat(2, 1fr);
            grid-gap: 42px 26px;
            gap: 42px 26px;
        }}
    }
</style>