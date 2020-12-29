<script lang="ts"></script>

<div class="skills-container">
    <slot/>
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	.skills-container {
        display: grid;

        // Overriden
        grid-template-columns: 100%;
        grid-template-rows: repeat(6, auto);
        gap: 26px 0;

        @media (min-width: $mobile-breakpoint) {& {
            grid-template-columns: repeat(3, 1fr);
            grid-template-rows: repeat(1, 1fr);
            gap: 42px 26px;
        }}
    }
</style>