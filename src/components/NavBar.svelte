<script lang="ts">
    import Button from '../components/Button.svelte';
    import Section from "../components/Section.svelte";

    // Must link to # for scoll animation
	// Clearing hash allows user to scroll to /# multiple times in a row
	let eraseHash = () => {
		setTimeout(() => {
			if (history.pushState) {
				history.pushState(null, null, '/');
			} else {
				location.hash = '/';
			}
		}, 50);
	}
</script>

<nav>
    <Section>
        <div class="horizontal">
            <a href="/#" id="logo" on:click={eraseHash}>
                <img src="/logo.png" alt="Dennis Krasnov Logo"/>
                <span>Dennis Krasnov</span>
            </a>

            <div class="expand" />

            <ul class="scroll-links">
                <!-- TODO: create NavButton components! -->
				<li><a href="#skills">skills</a></li>
				<li><a href="#projects">projects</a></li>
				<li><a href="#work">work</a></li>
				<li><a href="#contact">contact</a></li>
            </ul>
            
            <span class="resume-download">
                <Button href="/dennis_krasnov_resume.pdf" targetBlank>download resume</Button>
            </span>
        </div>
    </Section>
</nav>

<style lang="scss">
    @import "../styles/constants.scss";

    nav {
        height: $menu-height;

        // Stick to top of screen
        position: sticky;
		top: 0;
        z-index: 1;
        
        background: white;
        
        .horizontal {
            display: flex;
            flex-flow: row nowrap;
            align-items: center;
            height: $menu-height;

            a {
                display: flex;
                align-items: center;

                img {
                    height: 40px;
                }

                span {
                    margin-left: 8px;
                    font-size: 32px;
                    font-weight: 600;
                    white-space: nowrap;

                    color: black;
                }
            }

            .expand {
                flex: 1;
            }

            .scroll-links {
                display: flex;
                flex-flow: row nowrap;
				justify-content: flex-end;
				align-items: center;
                list-style: none;

                margin: 0 20px 0 0;

                li {
					margin: 0 0 0 10px;

					a { 
                        padding: 8px;
                        font-size: 16px;
                        font-weight: 600;

                        color: #525873;
                        -webkit-transition: all .15s ease;
                        transition: all .15s ease;

                        // Similar hover animation to button
                        &:hover {
                            color: #242733;
                            // padding-bottom: 2px; // FIXME: fix text jumping when hovering bottom part
                            transform: translateY(-2px);
                        }
					}
                }
                
                @media (max-width: $landing-page-breakpoint) {& {
                    display: none;
                }}
            }

            .resume-download {
                @media (max-width: 500px) {& {
                    display: none;
                }}
            }
        }
    }
</style>