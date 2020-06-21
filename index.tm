<TeXmacs|1.99.12>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|GSoC 2020 Project for GNU <TeXmacs>>>

  <section*|Task>

  <\itemize-dot>
    <item>TeXmacs -\<gtr\> markdown converter development

    <\itemize-dot>
      <item>Incorporate max's <hlink|tm2md|https://bitbucket.org/mdbenito/tm2md/src/master/>
      converter into TeXmacs. (done)

      <item>Write new menu and preference. (done)

      <item>Bug Fixing
    </itemize-dot>

    <item>markdown -\<gtr\> TeXmacs converter development

    <\enumerate-numeric>
      <item>Direct Conversion

      <\itemize-dot>
        <item>Write C++ code for parsing markdown document as
        <verbatim|tree>. (WIP)

        <item>Write scheme code for tree -\<gtr\> md-stree conversion.

        <item>Write scheme code for md-stree -\<gtr\> tm-stree conversion.
      </itemize-dot>

      <item>Inderect Conversion (makeshift)

      <\itemize-dot>
        <item>Use markdown -\<gtr\> html 3rd party script and exsited html
        -\<gtr\> TeXmacs converter to implement conversion.
      </itemize-dot>
    </enumerate-numeric>

    \;
  </itemize-dot>

  <section*|Links>

  <\itemize>
    <item><hlink|Materials|mentors.tm> provided by Mentors

    <item>Materials provided by the Student

    <\itemize>
      <item><hlink|Proposal|proposal.tm>

      <item>Other documents
    </itemize>
  </itemize>

  <section*|Quickstart>

  This page serves as a project tracker.

  <subsection*|Download>

  <\verbatim-code>
    cd $HOME

    git clone git@github.com:texmacs/gsoc2020.git

    cd gsoc2020
  </verbatim-code>

  <subsection*|Update>

  <\enumerate>
    <item>Update the files ended with <shell|.tm>, and do not forget to
    generate the corresponding <shell|.html> files using Tools -\<gtr\>
    Update web site... . Assuming you have downloaded the repo to
    <shell|$HOME/gsoc2020>, please choose <shell|$HOME/gsoc2020> and click
    the <verbatim|Choose> button.

    <item>Create pull request to <hlink|gsoc2020|https://github.com/texmacs/gsoc2020>
  </enumerate>

  \ 

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|project-flag|true>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|<rigid|\<circ\>>>|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<rigid|\<circ\>>>|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<rigid|\<circ\>>>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Timeline>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Links>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Quickstart>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Download
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Update <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>