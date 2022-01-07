<div class="skills-container">
    <slot/>
</div>

<style>
    .skills-container {
        display: grid;

        /* Mobile */
        grid-template-columns: 100%;
        grid-template-rows: repeat(6, auto);
        gap: 26px 0;
    }

    /* Desktop */
    @media (min-width: 668px) {
        .skills-container {
            grid-template-columns: repeat(3, 1fr);
            grid-template-rows: repeat(1, 1fr);
            gap: 42px 26px;
        }
    }
</style>