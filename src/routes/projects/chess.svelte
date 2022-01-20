<script context="module" lang="ts">
    import hljs from "highlight.js";

    export async function load({fetch}) {
        const figureResponse = await fetch("/case_study/chess/snippet/Figure.java");
        const bishopResponse = await fetch("/case_study/chess/snippet/Bishop.java");
        const knightResponse = await fetch("/case_study/chess/snippet/Knight.java");
        const boardResponse = await fetch("/case_study/chess/snippet/Board.java");

        return {
            props: {
                codeSnippets: {
                    runJava: hljs.highlightAuto("java -jar DennisKrasnovChess.jar", ["sh"]).value,
                    figure: hljs.highlight(await figureResponse.text(), {language: "Java"}).value,
                    bishop: hljs.highlight(await bishopResponse.text(), {language: "Java"}).value,
                    knight: hljs.highlight(await knightResponse.text(), {language: "Java"}).value,
                    board: hljs.highlight(await boardResponse.text(), {language: "Java"}).value,
                }
            }
        }
    }
</script>

<script lang="ts">
    import Button from "../../components/Button.svelte";
    import LandingCentered from "../../components/LandingCentered.svelte";
    import Section from "../../components/Section.svelte";
    import DemoVideo from "../../components/DemoVideo.svelte";
    import WatermarkHeader from "../../components/WatermarkHeader.svelte";
    import Paragraph from "../../components/Paragraph.svelte";
    import CodeSnippet from "../../components/CodeSnippet.svelte";
    import DemoPicture from "../../components/DemoPicture.svelte";

    export let codeSnippets;
</script>

<svelte:head>
    <title>Dennis Krasnov - Chess Case Study</title>
</svelte:head>

<Section>
    <LandingCentered
            title="Chess - Java Swing Game"
            summary="Complete chess game engine with a rules-based AI. Swing-based UI. Won school’s computer science course and department awards."
    >
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Chess" targetBlank buttonRow primary>Github</Button><Button
                href="/case_study/chess/DennisKrasnovChess.jar" targetBlank buttonRow>Download JAR</Button>
		</span>
    </LandingCentered>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="demo"/>
    <DemoVideo videoUrl="/case_study/chess/demo.webm"/>
    <Paragraph>
        When you launch Chess, you're greeted with a (totally artificial) loading screen.
        Creating a new game presents you with plenty of options (including having two CPUs play each other).
        During gameplay, valid moves are highlighted, and a record of all moves is recorded in modified chess notation.
        At any point during gameplay, you can save the game state, and loading the file replays the moves.
        You can also modify the settings at any time.
    </Paragraph>
    <Paragraph>
        Chess is written in Java and Swing, so all you need to run it yourself is a computer with Java installed.
        First download the JAR using the button above, then run
        <CodeSnippet snippet={codeSnippets.runJava} inline/>
        in a terminal.
    </Paragraph>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="oop design"/>
    <Paragraph>
        This project has some sentimental value to me, as it's my first non-trivial project.
        I would have written Chess differently today by preferring functional pattens and relying less on null
        checks and singletons.
        However, I'm still proud of the elegant object oriented design.
    </Paragraph>
    <Paragraph>
        For better readability, I omitted the obnoxious comments (they made us write in grade 10) and irrelevant
        imports, fields, and methods.
    </Paragraph>

    <Paragraph>
        Figure is an abstract class describing a chess piece.
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.figure}/>

    <Paragraph>
        Implementing a Figure is very simple, mainly involving specifying how a piece can move on a board using a
        declarative DSL (domain specific language).
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.knight}/>

    <Paragraph>
        For pieces that can move in a line, you specify a direction vector.
        You can come up with some crazy non-standard movement patterns using a combination of addIfOnBoard and
        addLineToList.
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.bishop}/>

    <Paragraph>
        isUnderAttack is used for highlighting valid moves and checking the win condition.
        The board abstractly uses Figures, completely decoupled from implementation details.
        There can be any number of Figure implementations thanks to polymorphism.
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.board}/>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="flow chart"/>
    <DemoPicture imageUrl="/case_study/chess/flowchart.png"/>
    <Paragraph>
        Take a gander by opening this image in a new tab.
    </Paragraph>
</Section>