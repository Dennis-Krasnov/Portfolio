<script lang="ts">
    import Experience from "../components/Experience.svelte";
    import Experiences from "../components/Experiences.svelte";
    import Landing from "../components/Landing.svelte";
    import Project from "../components/Project.svelte";
    import Projects from "../components/Projects.svelte";
    import Section from "../components/Section.svelte";
    import Skill from "../components/Skill.svelte";
    import Skills from "../components/Skills.svelte";
    import WatermarkHeader from "../components/WatermarkHeader.svelte";
    import Testimonial from "../components/Testimonial.svelte";
    import Button from '../components/Button.svelte';
    import ContactForm from '../components/ContactForm.svelte';

    // The first time I got paid for development work, Pocket Trade Show
    let professionalStartDate: string = "08/01/2017";
    let millisecondsInYear: number = 31536000000;
    let yearsExperience: number = Math.floor((new Date().getTime() - new Date(professionalStartDate).getTime()) / millisecondsInYear);

    // Log custom event in Google Analytics
    function logDownloadEvent() {
        // @ts-ignore
        firebase.analytics().logEvent("resume_download");
    }
</script>

<svelte:head>
    <title>Dennis Krasnov - Experienced developer available for hire</title>
</svelte:head>

<Section>
    <Landing
        title="Experienced Developer Available for Hire"
        summary="Full stack software engineer with {yearsExperience} years experience designing and developing structured software systems."
        imageUrl="/cartoon_caricature.png"
    >
        <span slot="cta">
<!--            <Button href="/dennis_krasnov_resume.pdf" buttonRow primary targetBlank on:click={logDownloadEvent}>download resume</Button><Button href="#projects" buttonRow>view projects</Button>-->
            <Button href="#projects" buttonRow primary>view projects</Button><Button href="/dennis_krasnov_resume.pdf" buttonRow targetBlank on:click={logDownloadEvent}>download resume</Button>
<!--            <Button href="#contact" buttonRow primary>contact me</Button><Button href="/dennis_krasnov_resume.pdf" buttonRow targetBlank on:click={logDownloadEvent}>download resume</Button>-->
        </span>
    </Landing>
</Section>

<Section id="skills" watermarkPadding dark>
    <WatermarkHeader title="skills" />
    <Skills>
        <Skill
            imageUrl="/skills/backend.svg"
            title="Backend Development"
            summary="<b>Spring</b>-based <b>Java/Kotlin</b> for <b>REST</b> and <b>gRPC</b> services. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs. Project configuration with <b>Gradle</b>."
        />

        <Skill
            imageUrl="/skills/web.svg"
            title="Web Development"
            summary="Responsive websites in <b>HTML5</b>, <b>CSS/SCSS</b>. <b>Rx/Redux</b>-based <b>React</b> applications in <b>ES6 JavaScript</b> and <b>Typescript</b>."
        />

        <Skill
            imageUrl="/skills/systems.svg"
            title="Systems Programming"
            summary="Large <b>C++</b> projects. Safe multithreaded code in <b>Rust</b>. Deep understanding of performant <b>data structures</b> and <b>algorithms</b>."
        />

        <Skill
            imageUrl="/skills/mobile.svg"
            title="Mobile Development"
            summary="<b>Dart/Flutter</b> mobile apps for both <b>iOS</b> and <b>Android</b>. Stream-based <b>BLoC</b> state management. <b>Firebase</b>-powered backend."
        />

        <Skill
            imageUrl="/skills/ux.svg"
            title="UX Design"
            summary="Interactive app prototyping in <b>Figma</b>. <b>Usability Testing</b> with real users. Frequent iterations based on feedback."
        />

        <Skill
            imageUrl="/skills/business.svg"
            title="Full Business Cycle"
            summary="Acquiring customers, gathering <b>requirements</b>, managing <b>expectations</b>, timely execution, long-term <b>maintenance</b>."
        />
    </Skills>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="testimonials" } />
    <Testimonial
        imageUrl="/testimonial/igor.png"
        quote="Dennis is an experienced web developer, with an insight into the nuances of modern website design and implementation, compatibility with different platforms/devices ..."
        name="Igor Kolotilin, Ph.D."
        position="CSO & President of Solar Grants Biotechnology"
    />
</Section>

<Section id="work" watermarkPadding dark>
    <WatermarkHeader title="work" />
    <Experiences>
        <Experience
			imageUrl = "/work/cgi.svg"
			position = "Developer co-op"
			company = "CGI"
			startDate = "Jan 2021"
			endDate = "Apr 2021"
			points = {[
                "I'm currently working here :)",
            ]}
        />

        <Experience
			imageUrl = "/work/raywenderlich.svg"
			position = "Technical Editor"
			company = "Razeware"
			startDate = "Oct 2020"
			endDate = "present"
			points = {[
                "<a href=\"https://raywenderlich.com\" target=_blank>raywenderlich.com</a> provides high-quality tutorials averaging 90k daily pageviews",
                "Ensured technical accuracy of tutorial articles utilizing expert knowledge of Flutter",
                "Technical edited <a href=\"https://www.raywenderlich.com/16628777-theming-a-flutter-app-getting-started\" target=_blank>Theming a Flutter App: Getting Started</a> article, more on the way", // TODO: a, b, c articles
            ]}
        />

        <Experience
			imageUrl = "/work/ultimate-software.svg"
			position = "Software Engineering Intern"
			company = "Ultimate Software"
			startDate = "Sep 2019"
			endDate = "Dec 2019"
			points = {[
                "Developed authorization microservices in identity platform team",
                "Modified critical identity gateway serving 51M users, added permissions claim to JWT, refactored to prevent zero trust authorization recursion",
                "Identified production-level architecture issue in event sourcing which would break future migrations, documented and escalated to tech lead",
                "Java, Axon Framework, Spring, CQRS, event sourcing, ForgeRock IG",
            ]}
        />

        <Experience
			imageUrl = "/work/sgbiotec.png"
			position = "Freelance Developer"
			company = "Solar Grants Biotechnology"
			startDate = "Jun 2018"
			endDate = "Aug 2019"
			points = {[
                "Created <a href=\"https://sgbiotec.com\" target=\"sgbiotec\">sgbiotec.com</a>, an online store selling lab-grade fluorescent proteins",
                "Designed UI with structured product description and custom shopping cart, integrated with Shopify storefront API",
                "React, MobX, Shopify storefront API, Docker Compose",
            ]}
        />

        <Experience
			imageUrl = "/work/pocket-trade-show.png"
			position = "Freelance Developer"
			company = "Pocket Trade Show"
			startDate = "Jul 2016"
			endDate = "Aug 2017"
			points = {[
                "Created Pocket Trade Show, an online tradeshow platform that connects buyers and sellers",
                "Developed web frontend using MVC pattern in PHP, implemented file upload to S3 bucket",
                "Restructured MySQL database to accomadate web in addition to mobile app, migrated existing data",
                "PHP 7, jQuery, MySQL, AWS S3",
            ]}
        />
    </Experiences>
</Section>

<Section id="projects" watermarkPadding>
    <WatermarkHeader title="projects" />
    <Projects>
        <Project
            name = "Creative FOSS"
            summary = "Open Source Collaboration Tool"
            colourHex = "#82b440"
            projectId = "creative-foss"
            imageUrl = "/project-thumbnails/creative-foss.png"
        />

        <Project
            name = "Diet Driven"
            summary = "Calorie Counter Mobile App"
            colourHex = "#eaeceb"
            blackText
            projectId = "diet-driven"
            imageUrl = "/project-thumbnails/diet-driven.png"
        />

        <Project
            name = "Chess"
            summary = "Java Swing Game"
            colourHex = "#e5e8ee"
            blackText
            projectId = "chess"
            imageUrl = "/project-thumbnails/chess.png"
        />

        <Project
            name = "krasnov.dev"
            summary = "Portfolio Website"
            colourHex = "#578ffb"
            projectId = "portfolio"
            imageUrl = "/project-thumbnails/portfolio.png"
        />
    </Projects>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="education" />
    <Experiences>
        <Experience
            imageUrl = "/education/waterloo.png"
            position = "Bachelor of Computer Science"
            company = "University of Waterloo"
            startDate = "Sep 2018"
            endDate = "Apr 2023"
            points = {[
                "$2000 President’s Scholarship of Distinction scholarship for 95% admission average",
                "Coursework: data structure analysis, OOP programming in C++, algorithm analysis, operating systems design, computer architecture",
            ]}
        />
    </Experiences>
</Section>

<!--<Section id="contact" watermarkPadding>-->
<!--    <WatermarkHeader title="contact" />-->
<!--    <ContactForm />-->
<!--</Section>-->

<style lang="scss"></style>