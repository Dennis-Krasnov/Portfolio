<script lang="ts">
    export let imageUrl: string;
    export let position: string;
    export let company: string;
    export let startDate: string;
    export let endDate: string;
    export let points: string[];
    export let quote: string = "";
	export let quotee: string = "";
</script>

<div class="experience-container">
    <div class="logo-daterange">
        <div class="date">{startDate}</div>
        <div class="logo"><img src="{imageUrl}" alt="{company} logo"/></div>
        <div class="date">{endDate}</div>
    </div>
    <div class="content">
        <div class="header"><h2>{position}</h2><h4>@ {company}</h4></div>
        <ul>
            {#each points as point}
                <li>{point}</li>
            {/each}
        </ul>
        {#if quote && quotee}
            <blockquote>"{quote}" - {quotee}</blockquote>
        {/if}
    </div>
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	.experience-container {
        padding: 32px 0;

        display: flex;
        flex-flow: column nowrap;

        .logo-daterange {
            display: flex;
            flex-flow: row nowrap;
            justify-content: center;
            align-items: center;

            // Stay above timeline
            z-index: 2;

            .date {
                // Same as skill header
                font-weight: 600;
                font-size: 19px;
                line-height: 32px;
                color: #32325d;

                @media (max-width: $mobile-breakpoint) {& {
                    margin: 0 16px;
                }}
            }

            .logo {
                width: 48px;
                height: 48px;
                padding: 15px;
                border-radius: 50%;

                background: $timeline-colour;

                img {
                    width: 48px;
                    height: 48px;
                    object-fit: contain;
                }
            }
        }

        .content {
            .header {
                display: flex;
                flex-flow: row wrap;
                align-items: baseline;
                margin-bottom: 16px;

                h2 {
                    margin-right: 16px;

                    // Similar to project large heading
					font-size: 42px;
					letter-spacing: -0.3px;
				}

                h4 {
                    // Similar to project small heading
					text-transform: uppercase;
					letter-spacing: 2.5px;
					font-size: 19px;
				}
            }

            ul {
                padding: 0 0 0 18px;

                // Similar to skill paragraph
                font-weight: 400;
                font-size: 17px;
                color: #525f7f;
                line-height: 28px;
            }
        }

        @media (min-width: $mobile-breakpoint) {& {
            flex-flow: row nowrap;

            .logo-daterange {
                flex-flow: column-reverse nowrap;
                justify-content: start;
            }

            .content {
                padding: 0 0 0 48px;
            }
        }}
    }
</style>