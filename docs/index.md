# Solidity

Solidity is an object-oriented, high-level language for implementing
smart contracts. Smart contracts are programs which govern the behaviour
of accounts within the Ethereum state.

Solidity is a [curly-bracket
language](https://en.wikipedia.org/wiki/List_of_programming_languages_by_type#Curly-bracket_languages).
It is influenced by C++, Python and JavaScript, and is designed to
target the Ethereum Virtual Machine (EVM). You can find more details
about which languages Solidity has been inspired by in the
`language influences <language-influences>`{.interpreted-text
role="doc"} section.

Solidity is statically typed, supports inheritance, libraries and
complex user-defined types among other features.

With Solidity you can create contracts for uses such as voting,
crowdfunding, blind auctions, and multi-signature wallets.

When deploying contracts, you should use the latest released version of
Solidity. Apart from exceptional cases, only the latest version receives
[security
fixes](https://github.com/ethereum/solidity/security/policy#supported-versions).
Furthermore, breaking changes as well as new features are introduced
regularly. We currently use a 0.y.z version number [to indicate this
fast pace of change](https://semver.org/#spec-item-4).

::: warning
::: title
Warning
:::

Solidity recently released the 0.8.x version that introduced a lot of
breaking changes. Make sure you read
`the full list <080-breaking-changes>`{.interpreted-text role="doc"}.
:::

Ideas for improving Solidity or this documentation are always welcome,
read our `contributors guide <contributing>`{.interpreted-text
role="doc"} for more details.

::: hint
::: title
Hint
:::

You can download this documentation as PDF, HTML or Epub by clicking on
the versions flyout menu in the bottom-left corner and selecting the
preferred download format.
:::

## Getting Started

**1. Understand the Smart Contract Basics**

If you are new to the concept of smart contracts we recommend you to get
started by digging into the \"Introduction to Smart Contracts\" section,
which covers:

-   `A simple example smart contract <simple-smart-contract>`{.interpreted-text
    role="ref"} written in Solidity.
-   `Blockchain Basics <blockchain-basics>`{.interpreted-text
    role="ref"}.
-   `The Ethereum Virtual Machine <the-ethereum-virtual-machine>`{.interpreted-text
    role="ref"}.

**2. Get to Know Solidity**

Once you are accustomed to the basics, we recommend you read the
`"Solidity by Example" <solidity-by-example>`{.interpreted-text
role="doc"} and "Language Description" sections to understand the core
concepts of the language.

**3. Install the Solidity Compiler**

There are various ways to install the Solidity compiler, simply choose
your preferred option and follow the steps outlined on the
`installation page <installing-solidity>`{.interpreted-text role="ref"}.

::: hint
::: title
Hint
:::

You can try out code examples directly in your browser with the [Remix
IDE](https://remix.ethereum.org). Remix is a web browser based IDE that
allows you to write, deploy and administer Solidity smart contracts,
without the need to install Solidity locally.
:::

::: warning
::: title
Warning
:::

As humans write software, it can have bugs. You should follow
established software development best-practices when writing your smart
contracts. This includes code review, testing, audits, and correctness
proofs. Smart contract users are sometimes more confident with code than
their authors, and blockchains and smart contracts have their own unique
issues to watch out for, so before working on production code, make sure
you read the `security_considerations`{.interpreted-text role="ref"}
section.
:::

**4. Learn More**

If you want to learn more about building decentralized applications on
Ethereum, the [Ethereum Developer
Resources](https://ethereum.org/en/developers/) can help you with
further general documentation around Ethereum, and a wide selection of
tutorials, tools and development frameworks.

If you have any questions, you can try searching for answers or asking
on the [Ethereum StackExchange](https://ethereum.stackexchange.com/), or
our [Gitter channel](https://gitter.im/ethereum/solidity/).

## Translations

Community volunteers help translate this documentation into several
languages. They have varying degrees of completeness and up-to-dateness.
The English version stands as a reference.

::: note
::: title
Note
:::

We recently set up a new GitHub organization and translation workflow to
help streamline the community efforts. Please refer to the [translation
guide](https://github.com/solidity-docs/translation-guide) for
information on how to contribute to the community translations moving
forward.
:::

-   [French](https://solidity-fr.readthedocs.io) (in progress)
-   [Italian](https://github.com/damianoazzolini/solidity) (in progress)
-   [Japanese](https://solidity-jp.readthedocs.io)
-   [Korean](https://solidity-kr.readthedocs.io) (in progress)
-   [Russian](https://github.com/ethereum/wiki/wiki/%5BRussian%5D-%D0%A0%D1%83%D0%BA%D0%BE%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%BE-%D0%BF%D0%BE-Solidity)
    (rather outdated)
-   [Simplified Chinese](https://learnblockchain.cn/docs/solidity/) (in
    progress)
-   [Spanish](https://solidity-es.readthedocs.io)
-   [Turkish](https://github.com/denizozzgur/Solidity_TR/blob/master/README.md)
    (partial)

# Contents

`Keyword Index <genindex>`{.interpreted-text role="ref"},
`Search Page <search>`{.interpreted-text role="ref"}

::: {.toctree maxdepth="2" caption="Basics"}
introduction-to-smart-contracts.rst installing-solidity.rst
solidity-by-example.rst
:::

::: {.toctree maxdepth="2" caption="Language Description"}
layout-of-source-files.rst structure-of-a-contract.rst types.rst
units-and-global-variables.rst control-structures.rst contracts.rst
assembly.rst cheatsheet.rst grammar.rst
:::

::: {.toctree maxdepth="2" caption="Compiler"}
using-the-compiler.rst analysing-compilation-output.rst
ir-breaking-changes.rst
:::

::: {.toctree maxdepth="2" caption="Internals"}
internals/layout_in_storage.rst internals/layout_in_memory.rst
internals/layout_in_calldata.rst internals/variable_cleanup.rst
internals/source_mappings.rst internals/optimizer.rst metadata.rst
abi-spec.rst
:::

::: {.toctree maxdepth="2" caption="Additional Material"}
050-breaking-changes.rst 060-breaking-changes.rst
070-breaking-changes.rst 080-breaking-changes.rst natspec-format.rst
security-considerations.rst smtchecker.rst resources.rst
path-resolution.rst yul.rst style-guide.rst common-patterns.rst bugs.rst
contributing.rst brand-guide.rst language-influences.rst
:::
