<script lang="ts">
	import FooterButton from "../components/FooterButton.svelte";
	import Section from "../components/Section.svelte";

	let currentYear: number = new Date().getFullYear();
</script>

<footer>
	<Section>
		<div class="social">
			<FooterButton url="https://github.com/Dennis-Krasnov" icon="github" />
			<FooterButton url="https://www.linkedin.com/in/denniskrasnov" icon="linkedin-in" />
			<FooterButton url="https://www.hackerrank.com/krasnov" icon="hackerrank" />
		</div>
		<div class="copyright">
			© {currentYear} Dennis Krasnov
		</div>
	</Section>
</footer>

<style lang="scss">
	.social {
		display: flex;
		flex-flow: row nowrap;
		justify-content: center;
	}

	.copyright {
		margin: 20px 0;
		text-align: center;

		color: #525f7f;
	}
</style>