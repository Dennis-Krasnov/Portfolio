<script lang="ts"></script>

<div class="projects-container">
    <slot/>
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	.projects-container {
        display: grid;
        justify-content: center;
        gap: 52px;

        // Overriden
        grid-template-columns: auto;
        grid-template-rows: auto;

        @media (min-width: $max-content-width - $project-shink-before-breakpoint) {& {
            grid-template-columns: repeat(2, 1fr);
            grid-template-rows: auto;

            padding: $project-offset 0 0 0;
        }}
    }
</style>