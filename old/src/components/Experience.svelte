<script lang="ts">
    export let imageUrl: string;
    export let position: string;
    export let company: string;
    export let startDate: string;
    export let endDate: string;
    export let points: string[];
</script>

<div class="experience-container">
    <div class="logo-daterange">
<!--        <div class="date">{startDate}</div>-->
<!--        TODO: remove unnecessary stylings for dates! -->
        <div class="logo"><img src="{imageUrl}" alt="{company} logo"/></div>
<!--        <div class="date">{endDate}</div>-->
    </div>
    <div class="content">
<!--        <div class="header"><h2>{position}</h2><h4>@ {company}</h4></div>-->
        <div class="header">
            <h2>{position}</h2>
            <h4>@ {company}</h4>
<!--            <h5>{startDate} -> {endDate}</h5>-->
        </div>
        <ul>
            {#each points as point}
                <li>{@html point}</li>
            {/each}
        </ul>
    </div>
</div>

<style lang="scss">
    @import "../styles/constants.scss";

	.experience-container {
        padding: 0 0 92px 0;

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
                width: 100px;
                height: 100px;
                padding: 15px;
                margin: 0 0 10px 0;
                border-radius: 50%;
                border: 1px solid #e8e8eb;

                background: white;

                img {
                    width: 60px;
                    height: 60px;
                    padding: 20px;
                    
                    object-fit: contain;
                    user-select: none;
                }
            }
        }

        .content {
            .header {
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
                justify-content: center;

                .logo {
                    margin: 5px 0;
                    width: 120px;
                    height: 120px;

                    img {
                        width: 80px;
                        height: 80px;
                    }
                }
            }

            .content {
                padding: 0 0 0 60px;

                ul {
                    // Make text more readable
                    padding: 0 calc(min(100px, 10vw)) 0 18px;
                }
            }
        }}
    }
</style>