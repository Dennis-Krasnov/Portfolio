<script>
</script>

<div class="skills-container">
    <slot/>
</div>

<style lang="scss">
    @import "../style/constants.scss";

    $two-by-three-breakpoint: 42.5em;
    // $two-by-three-breakpoint: 40em;
    // $three-by-two-breakpoint: 60em;

    // $card-width: 250px;
    // $card-width: 400px;
    // $card-height: 300px;

    .skills-container {
        display: grid;
        justify-content: center;
        justify-items: center;

        // Overriden
        grid-template-columns: 100%;
        grid-template-rows: repeat(6, auto);
        grid-gap: 26px 0;
        gap: 26px 0;

        @media (min-width: $two-by-three-breakpoint) {& {

            // grid-template-columns: repeat(2, $card-width);
            // grid-template-rows: repeat(3, $card-height);
            // grid-gap: $m-l;
            grid-template-columns: repeat(3, 1fr);
            grid-template-rows: repeat(2, 1fr);
            // grid-gap: 0 26px;
            // gap: 0 26px;
            grid-gap: 42px 26px;
            gap: 42px 26px;
        }}

        // @media (min-width: $three-by-two-breakpoint) {& {
        //     grid-template-columns: repeat(3, $card-width);
        //     grid-template-rows: repeat(2, $card-height);
        //     grid-gap: $m-xl;
        // }}
    }
</style>