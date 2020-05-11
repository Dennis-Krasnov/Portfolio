<script>
</script>

<div class="skills-container">
    <slot/>
</div>

<style>
    .skills-container {
        display: grid;
        justify-content: center;
        justify-items: center;
        grid-template-columns: 100%;
        grid-template-rows: repeat(6, auto);
    }

    /* TODO: nest with scss */
    @media (min-width: 40em) {
        .skills-container {
            grid-template-columns: repeat(2, 250px);
            grid-template-rows: repeat(3, 300px);
            grid-gap: 30px;
        }
    }

    @media (min-width: 60em) {
        .skills-container {
            grid-template-columns: repeat(3, 250px);
            grid-template-rows: repeat(2, 300px);
            grid-gap: 45px;
        }
    }
</style>