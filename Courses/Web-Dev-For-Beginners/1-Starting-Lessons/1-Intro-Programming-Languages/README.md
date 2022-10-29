## What is Programming?
_It is a process of writing instructions to a device, such as a PC or mobile device. These instructions are written using a programming language and then interpreted by the device._

## Programming Languages
_The principal purpose of programming languages is for developers to build instructions to send to a device._

_Programming languages are a vehicle for communication between humans and computers. Devices can understand only the binary characters 1 and 0. For most developers, using only binary characters isn't an efficient way to communicate._

_Programming languages come in a variety of formats and can serve different purposes. For example, JavaScript is used primarily for web applications, and Bash is used primarily for operating systems._

### Low-level and High-level Languages
_To be interpreted by a device, low-level languages generally require fewer steps than high-level languages. However, what makes high-level languages popular is their readability and compatibility. JavaScript and Python are considered a high-level language._

#### Code Comparison:
_The following code is written in JavaScript, a high-level language. It implements an algorithm by using constructs such as variables, for-loops, and other statements._
```javascript
let number = 10
let n1 = 0, n2 = 1, nextTerm;
for (let i = 1; i <= number; i++) {
    console.log(n1);
    nextTerm = n1 + n2;
    n1 = n2;
    n2 = nextTerm;
}

```
_The above code illustrates an algorithm to implement a Fibonacci sequence. Now, here is the corresponding code in high-level assembly language:_

```c
 area ascen,code,readonly
 entry
 code32
 adr r0,thumb+1
 bx r0
 code16
thumb
 mov r0,#00
 sub r0,r0,#01
 mov r1,#01
 mov r4,#10
 ldr r2,=0x40000000
back add r0,r1
 str r0,[r2]
 add r2,#04
 mov r3,r0
 mov r0,r1
 mov r1,r3
 sub r4,#01
 cmp r4,#00
 bne back
 end
```

## Elements of a Program
_Knowing how a program runs and what data it relies on is an important first step toward understanding how to create your own programs._

_A single instruction in a program is called a statement. A statement usually has a character or line spacing that marks where the instruction ends, or terminates. How a program terminates varies with each language._

### Programs are Data-Driven
_Most programs rely on using data that's obtained from a user or another source, where statements might rely on such data to carry out instructions. Data can change how a program behaves, so programming languages come with a way to temporarily store data for later use._

_The data is stored in a statement called a variable. Variables are statements that instruct a device to save data in its memory. Variables in programs are similar to those in algebra, where they have a unique name and their value might change over time._

### Flow Control
_Some statements might not be executed by a device. This usually happens either by design, as written by the developer, or by accident, as the result of an unexpected error._

_Controlling the flow of an application makes it more robust and maintainable. Changes in control ordinarily occur when certain conditions are met. A common statement in modern programming languages, to control how a program is run, is the `if...else` statement._

## Tools of the Trade
_The ability to develop code fast is crucial. Having a tool to do so helps you not only with speed, but it can usually help you with formatting and correctness as well._

_A development environment is a unique set of tools and features that a developer can use to write software. Some of these tools have been customized for developer-specific needs. They might change over time as developers change priorities in work or personal projects, or when they switch to a different programming language. Development environments are as unique as the developers who use them._

### Editors
_An editor is where you write your code and sometimes where you run your code_

Features of the editors:

- *Debugging:* Debugging: Helps discover bugs and errors by stepping through code, line by line. Some editors have debugging capabilities, or they can be customized for specific programming languages.  
- *Syntax highlighting:* Syntax highlighting: Adds colors and text formatting to code, making it easier to read. Most editors allow custom syntax highlighting.
- *Extensions and integrations:* Add specialized features that provide access to other tools that aren't built into the base editor. For example, many developers also need a way to document their code, to explain how it works, or to install a spell check extension to check for typos. Most of these additions are intended for use within a specific editor, and most editors come with a way to search for available extensions.
- *Customization:* Most editors are customizable, which allows developers to create their own unique development environments. Many editors also allow developers to create their own extensions.

### Browser Technologies
_Running your programs on the internet requires some sort of client to help you view the output. A common form of client is a web browser, with which you can view and interact with the content._

#### Developer Browsers
_Web developers rely on browsers to observe how their code runs on the web. Browsers are also used to view visual elements of a webpage that are written in the editor in languages such as HTML_

##### Developer Tools
_Many browsers come with developer tools that contain helpful features and information to assist developers with collecting and capturing important insights about their applications. For example, if a webpage has errors, it's sometimes helpful to know when they occurred. Developer tools in a browser can be configured to capture this information._

Most popular browsers:

- [Chrome](https://developers.google.com/web/tools/chrome-devtools/)
- [Firefox](https://developer.mozilla.org/docs/Tools)
- [Edge](https://docs.microsoft.com/microsoft-edge/devtools-guide-chromium?WT.mc_id=academic-13441-cxa)

### Command-Line Tools

_Como desarrollador, es probable que use herramientas de línea de comandos para realizar algunas o todas las tareas de programación. Dado que los entornos de desarrollo son únicos para cada desarrollador, algunos evitan usar la línea de comandos, otros se basan exclusivamente en ella y otros prefieren combinar ambas opciones._

#### Why command-line tools?

_The command line, compared to a graphical user interface, has no graphical elements and is primarily text based. The reasons for using the command line are many:_

- *Preference:* Some developers prefer a less graphical view for their daily programming tasks.
- *Better workflow:* Developing code requires a significant amount of typing, and some developers prefer not to disrupt their flow on the keyboard. They use keyboard -shortcuts to swap between desktop windows, work on various files, and open tools.
- *Avoiding mouse arm syndrome:* Most tasks can be completed with a mouse, but one benefit of using the command line is that a lot can be done with command-line tools without having to constantly switch from mouse to keyboard and back again.
- *Configurability:* With command-line tools, you can save your custom configuration, change it later, and import it to other development machines.


#### Command line ptions

_Your command-line tool options differ depending on the operating system you use. The computer icon (💻) indicates that the command-line tools come preinstalled on the operating system._


| _Windows_ | _MacOS_ | _Linux_ | _Popular Command Line Tools_ |
| --- | --- | --- | --- |
| - [Powershell](https://docs.microsoft.com/powershell/scripting/overview?view=powershell-7?WT.mc_id=academic-13441-cxa) 💻 <br> - [Command Line](https://docs.microsoft.com/windows-server/administration/windows-commands/windows-commands?WT.mc_id=academic-13441-cxa) (also known as CMD) 💻 <br> - [Windows Terminal](https://docs.microsoft.com/windows/terminal/?WT.mc_id=academic-13441-cxa) <br> - [mintty](https://mintty.github.io/) | - [Terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac) 💻 <br> - [iTerm](https://iterm2.com/)  <br> - [Powershell](https://docs.microsoft.com/powershell/scripting/install/installing-powershell-core-on-macos?view=powershell-7?WT.mc_id=academic-13441-cxa) | - [Bash](https://www.gnu.org/software/bash/manual/html_node/index.html) 💻 <br> - [KDE Konsole](https://docs.kde.org/trunk5/en/konsole/konsole/index.html) <br> - [Powershell](https://docs.microsoft.com/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7?WT.mc_id=academic-13441-cxa) | - [Git](https://git-scm.com/) (💻 on most operating systems) <br> - [NPM](https://www.npmjs.com/) <br> - [Yarn](https://classic.yarnpkg.com/en/docs/cli/) |

### Documentation
_When developers want to learn something new, they'll most likely turn to expert documentation. Expert documentation can guide them through how to use programming tools and languages properly, and help them gain deeper knowledge about how it all fits together._

#### Popular Web-development Documentation

- [Mozilla Developer Network (MDN)](https://developer.mozilla.org/docs/Web), from Mozilla, the publishers of the [Firefox](https://www.mozilla.org/firefox/) browser
- [Frontend Masters](https://frontendmasters.com/learn/)
- [Web.dev](https://web.dev), from Google, publishers of [Chrome](https://www.google.com/chrome/)
- [Microsoft's own developer docs](https://docs.microsoft.com/microsoft-edge/#microsoft-edge-for-developers), for [Microsoft Edge](https://www.microsoft.com/edge)
