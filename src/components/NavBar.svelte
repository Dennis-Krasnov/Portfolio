<script lang="ts">
    import Button from './Button.svelte';
    import NavBarButton from './NavBarButton.svelte';
    import Section from "./Section.svelte";

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
                <img src="/logo.svg" alt="Dennis Krasnov Logo"/>
                <span>Dennis Krasnov</span>
            </a>

            <div class="expand" />

            <div class="scroll-links">
                <NavBarButton hash="skills">skills</NavBarButton>
                <NavBarButton hash="work">work</NavBarButton>
                <NavBarButton hash="projects">projects</NavBarButton>
                <NavBarButton hash="contact">contact</NavBarButton>
            </div>
            
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
        z-index: 3;
        
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

                margin: 0 20px 0 0;
                
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