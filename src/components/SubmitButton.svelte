<script lang="ts">
	export let disabled: boolean = false;
</script>

<button type="submit" {disabled}><slot/></button>

<style lang="scss">
	@import "../styles/constants.scss";

	// Adapted from Button

	button {
		// Reset button css styles
		all: unset;

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

		background-color: $logo-colour;
	
		&:hover {
			box-shadow: 0 7px 14px rgba(50, 50, 93, .1), 0 3px 6px rgba(0, 0, 0, .08);
			transform: translateY(-2px);

			// Add link-like cursor
			cursor: pointer;
		}
	}
</style>