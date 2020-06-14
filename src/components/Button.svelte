<script>
	export let href;
	export let primary = false;
	export let targetBlank = false;
</script>

<a href="{href}" class={primary ? "primary" : "secondary"} target={targetBlank ? "_blank" : "_self"}><slot/></a>

<style lang="scss">
	@import "../style/constants.scss";

	// Inspired by https://stripe.com

	a {
		color: white;
		white-space: nowrap;
		display: inline-block;
		height: 40px;
		line-height: 40px;
		padding: 0 14px;
		-webkit-box-shadow: 0 4px 6px rgba(50,50,93,.11),0 1px 3px rgba(0,0,0,.08);
		box-shadow: 0 4px 6px rgba(50,50,93,.11),0 1px 3px rgba(0,0,0,.08);
		background: #fff;
		background-color: rgb(255, 255, 255);
		border-radius: 4px;
		font-size: 15px;
		font-weight: 600;
		text-transform: uppercase;
		letter-spacing: .025em;
		text-decoration: none;
		-webkit-transition: all .15s ease;
		transition: all .15s ease;

		margin: 15px 0 0 0;

		&.primary {
			background-color: $logo-colour;
		}

		&.secondary {
			background-color: #32325d;
		}

		&:first-child {
			margin: 15px 12px 0 0;
		}

		&:hover {
			// TODO: create hover animation
			// outline: none;
			// box-shadow:0 0 0 1.5px hsla(0,0%,100%,.75),inset 0 0 0 1.25px rgba(82,95,127,.5),0 13px 27px -5px rgba(50,50,93,.25),0 8px 16px -8px rgba(0,0,0,.3),0 -6px 16px -6px rgba(0,0,0,.025)
		}
	}
</style>