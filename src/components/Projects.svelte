<div class="projects-container">
    <slot/>
</div>

<style>
    .projects-container {
        display: grid;
        gap: 52px;

        /* Only needed for mobile */
        justify-content: center;

        /* Mobile */
        grid-template-columns: auto;
        grid-template-rows: auto;
    }

    /* Desktop: section width (1000px) - project shrink before breakpoint (150px) */
    @media (min-width: 850px) {
        .projects-container {
            grid-template-columns: repeat(2, 1fr);
            grid-template-rows: auto;

            /* Project offset */
            padding-top: 100px;
        }
    }
</style>
