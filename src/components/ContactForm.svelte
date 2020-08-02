<script lang="ts">
	import { Form, Input, Select, Choice } from 'sveltejs-forms';
	import * as yup from 'yup';

	import Spinner from "../components/Spinner.svelte";
	import SubmitButton from "../components/SubmitButton.svelte";

	const schema = yup.object().shape({
		name: yup.string().required(),
		email: yup.string().required().email(),
		message: yup.string().required(),
		// password: yup.string().min(4),
		// language: yup.string().required(),
		// os: yup.string(),
	});

	function handleSubmit({ detail: { values, setSubmitting, resetForm } }) {
		setTimeout(() => {
			console.log(values);
			setSubmitting(false);
			resetForm();
		}, 5000);
	}
</script>

<div class="contact-container">
	<div class="contact-info">
		<!-- TODO: component -->
		<a href="https://www.google.ca/maps/place/Waterloo,+ON/@43.4822754,-80.5817388,13z/data=!3m1!4b1!4m5!3m4!1s0x882bf1565ffe672b:0x5037b28c7231d90!8m2!3d43.4642578!4d-80.5204096" target="_blank"><i class="far fa-map-marker-alt fa-fw fa-2x"></i><span>Waterloo, ON</span></a>
		<a href="mailto:dennis@krasnov.dev"><i class="far fa-envelope fa-fw fa-2x"></i><span>dennis@krasnov.dev</span></a>
		<a href="tel:226-580-9787"><i class="far fa-mobile-android fa-fw fa-2x"></i><span>(226) 580 - 9787</span></a>
	</div>
	<div class="contact-form">
		<Form {schema} on:submit={handleSubmit} let:isSubmitting>
			<Input
				name="name"
				label="Name"
				placeholder="John Doe" 
			/>
			<Input
				name="email"
				label="Email"
				placeholder="john.doe@gmail.com" 
			/>
			<Input
				name="message"
				label="Message"
				placeholder="Hello there!"
				multiline
			/>
			{#if isSubmitting}
				<Spinner />
			{:else}
				<SubmitButton>shoot me a message</SubmitButton>
			{/if}
		</Form>
	</div>
</div>

<style lang="scss">
	@import "../styles/constants.scss";

	.contact-container {
		display: flex;
		flex-flow: column nowrap;

		.contact-info {
			flex: 1;

			display: flex;
			flex-flow: column nowrap;
			justify-content: center;
			align-items: start;

			a {
				margin: 25px 0;
				display: flex;
				align-items: center;

				color: #556;

				span {
					margin-left: 8px;
					font-size: 26px;
					white-space: nowrap;
					font-weight: 600;
				}

				&:hover {
					color: #242733;
					transform: translateY(-2px);
				}
			}
		}

		.contact-form {
			flex: 1;
		}

		@media (min-width: $mobile-breakpoint) {& {
			flex-flow: row nowrap;

			.contact-info {
				// Center vertically with form (excluding button)
				padding-bottom: 60px;
			}
		}}
	}

	// Inspired by https://mdauner.github.io/sveltejs-forms/?ref=madewithsvelte.com

	:global(.sveltejs-forms .field) {
		margin: 20px 0;
	}

	:global(.sveltejs-forms .field label) {
		display: block;
		color: #4a5568;
		font-weight: 700;
	}

	:global(.sveltejs-forms .field input,textarea) {
		margin: 8px 0;

		box-shadow: 0 1px 3px 0 rgba(0,0,0,.1),0 1px 2px 0 rgba(0,0,0,.06);
		-webkit-appearance: none;
		-moz-appearance: none;
		appearance: none;
		border-width: 1px;
		border-radius: .25rem;
		width: calc(100% - 24px); // Minus padding
		padding: .5rem .75rem;
		color: #4a5568;
		line-height: 1.25;
		border-style: solid;
	}

	:global(.sveltejs-forms .field textarea) {
		resize: vertical;
		min-height: 120px;
		height: 120px;
	}

	:global(.sveltejs-forms .field.error .message) {
		color: #f56565;
		font-style: italic;
	}
</style>