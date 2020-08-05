<script lang="ts"></script>

<div class="experiences-container">
    <slot/>
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	.experiences-container {
        position: relative;
        // display: grid;
        // gap: 64px 0;

        @media (min-width: $mobile-breakpoint) {& {
            &::after {
                content: '';
                position: absolute;
                width: 6px;
                background-color: $timeline-colour;
                top: 0;
                bottom: 0;
                left: 15px + 24px - 3px;
                z-index: 1;
            }
        }}
    }
</style>