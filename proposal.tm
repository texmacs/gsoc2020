<TeXmacs|1.99.12>

<style|generic>

<\body>
  <doc-data|<\doc-title>
    Proposal for GSoC 2020
  </doc-title>>

  <section|About Me>

  <\itemize-dot>
    <with|font-series|bold|<item>Personal Information>

    <with|font-series|bold|Name:> Xiang Yue

    <with|font-series|bold|Email:> yx1107@foxmail.com

    <with|font-series|bold|Github Account:> Blickwinkel1107

    <with|font-series|bold|<item>Education>

    Nanjing University, Nanjing, Jiangsu, China.

    Computer Science, expected graduation July 2020.

    <with|font-series|bold|<item>Related Experience>

    Three-year C++/Java and Back-end development experience. Led several
    group projects, like second-hand transaction platform application,
    independent parkour game and so on.

    Developed an outdated requirement tracer as an add-on of Eclipse IDE, to
    help developers find which requirement document is possible to be
    outdated after commit code changes.

    Participated in natural language processing researches and in proceedings
    of \ machine translation track of IJCAI 2020.

    Interned in Intel to help maintain open-source development of the
    Analytics Zoo framework.
  </itemize-dot>

  <section|Project Name>

  Improved TeXmacs Converters

  <slink|https://www.gnu.org/software/soc-projects/ideas-2020.html#texmacs>

  <section|Summary>

  GNU TeXmacs is a free scientific editing platform designed to create
  beautiful technical documents. It also provides options for users to
  convert documental form between TeXmacs document and other forms (eg. Html,
  BibTex, LaTeX). However, with the development of technique and documental
  forms, TeXmacs users need more conversion options for more documental
  forms, which requires contributors to spend much time developing new
  converters from scratches. To optimize this phenomenon, the proposal aims
  to develop a new converter for conversion of markdown documents while
  offering a general framework for converters development. On the one hand,
  markdown converter will appeal more users to use TeXmacs; on the other
  hand, the basic framework helps contributors create and write new
  converters. The proposal lists a detailed development timeline as well.
  This upgrade will make TeXmacs attract more contributors to join TeXmacs
  and develop various converters. In addition, this will also bring users
  more options to import/export and appeal to more users who enjoy using
  Html5, markdown, and other documental forms.

  <section|Benefits>

  <\enumerate-roman>
    <item>More Powerful Converter

    Today, users on Internet have various options to choose the document to
    write things, like Jupyter, markdown, MS Office Word, and so on, which
    means the contributor of TeXmacs needs to upgrade the modules of
    conversion to enable TeXmacs to support more documents or file format.
    Not only for better user experience but also for the improvement of
    TeXmacs itself.\ 

    Converters now support conversion to/from Html, BibTex, XML, and LaTeX
    while users require conversions to more documents in the mainstream, like
    markdown. So, the development of a markdown converter is the first
    priority. Most websites use markdown to write help or comments, like
    Github, Reddit, Diaspora, SourceForge, and so on. This explains why once
    TeXmacs supports markdown conversion, more users will be attracted.

    Also, contributors always meet troubles when developing new converters
    one and another from the very beginning. To handle this, TeXmacs needs a
    new, easy-to-use framework for converters. For contributors, the
    framework aims to provide basic functions to create new converters and
    development and save their time reviewing other parts of codes; for
    users, new converters provide them a better experience to import/export
    document forms. TeXmancs also needs to prepare some basic tools and
    frameworks for contributors to develop converters based on these.

    The extension of converters and the development of the framework will
    further empower the current TeXmacs converter functionality and improve
    the quality of TeXmacs.

    <item>More Contributors to the GNU community

    As a GNU project, TeXmacs need to get more opensource people to maintain.
    A converter framework satisfies contributors who want to add more
    converters in TeXmacs. They use and refer to the basic functions that the
    framework provides, and develop more things to empower TeXmacs conversion
    functionality. My development proposal is only a start, and there can be
    some bugs within the module. But, the new contributors attracted by these
    will possibly join us and help maintain the new module, even the whole
    TeXmacs project. Their contribution will make GNU sphere better and
    attract more people to join. In the end, good cycle forms, and the GNU
    community will be larger and stronger.

    <item>More Users of TeXmacs

    Better TeXmacs means more users to use our product. Conversion to more
    documental forms is crucial to attracting users. For instance, if it is
    possible for conversion between TeXmacs and markdown, TeXmacs will
    receive a big circle of users since there are thousands of people knowing
    how to write .md. Also, most of the webpage has applied Html5, so the
    extension for Html5 converters will draw the attention of plentiful web
    developers to join TeXmacs. The above all explain why TeXmacs need more
    powerful converters. So the join of more contributors will bring TeXmacs
    more converters, which helps TeXmacs receive more users.
  </enumerate-roman>

  <section|Deliverables>

  <\enumerate-roman>
    <item>Front End - the Place to Show Conversion Options

    The framework should make contributors think less about minor code and
    pay more attention to the algorithm part - the conversion part. So the
    converter framework needs to help contributors firstly create Front-End
    items automatically. To achieve this, I need to figure out where the
    conversion options are presented in TeXmacs, and what codes produce them.

    <\big-figure|<image|images/frontend.png||280pt||>>
      Conversion Options between different document forms
    </big-figure>

    There are mainly two steps to locate the Front-End part.

    First of all, it is important for any developer to locate where users can
    experience new features at the interface, which is also imperative for
    inverse engineering. TeXmacs shows conversion options as
    <verbatim|File-\<gtr\>Import/Export-\<gtr\>[File Type]> in
    <with|font-series|bold|Figure 1>. So the ultimate objective is to add
    \PMarkdown\Q or other documental form items in submenus of Import and
    Export options.\ 

    Second, locating the source code of front-end view. The front-end codes
    are at <verbatim|$TEXMACS_PATH/TeXmacs/progs/texmacs/menus/file-menu.scm>.\ 

    Line 236~238 shows \PImport\Q and \PExport\Q options. And line 108~131
    shows submenus, the dynamic options of conversion. We can see these words
    match what shows in the user-end view. The Scheme codes were written well
    there, and it is possible for me to figure out the important class within
    the critical parts.\ 

    After getting familiar with them, I can follow the codes written before
    and link up the front-end modification with framework codes in a short
    period of time. Still, compilation and testing work is in need and may
    cost a lot of time.

    <item>Back-End - How Contributors Write New Converters

    To further help contributors focus on algorithm part of converters, I
    need to learn the procedures to write a converter in the Back-End part
    and try to extend converters. Since markdown and Html5 prevail in
    communities, I choose to write these two converters as a trial. Also, I
    do this for the improvement of current converters.

    Fortunately, to write the core parts of the converter is just the same as
    writing a function - declare and implement. TeXmacs offers friendly ways
    to declare converters and data formats
    (<slink|http://www.texmacs.org/tmweb/manual/webman-convert.en.html>) with
    high abstraction as follows:

    <\verbatim>
      (define-format <with|font-shape|italic|format>

      \ \ (:name <with|font-shape|italic|format-name>)

      \ \ <with|font-shape|italic|options>)

      (converter <with|font-shape|italic|from-format-name to-format-name>

      \ \ <with|font-shape|italic|options>)
    </verbatim>

    Moreover, we can see example in <verbatim|$/TEXMACS_PATH/progs/convert/init-html.scm>.
    This directory shows how converter converts TeXmacs doc to Html. We can
    locate declaration of \PHtml\Q format (line 36) and converter from
    \Ptexmacs-stree\Q to several html-related data formats (line 48~68).\ 

    So, in the same way, I can declare a new converter in a new directory
    with <verbatim|init-xxx.scm>. The more important matter is to implement
    the conversion.\ 

    <\enumerate-alpha>
      <item>Markdown converter

      The <with|font-series|bold|first task> of the proposal is to import a
      fresh new markdown converter to TeXmacs. Mere transplanting converter
      module is not that hard though, more important thing is to verify
      whether or not the converter can process conversion perfectly. So, my
      core works are as follows:

      <\enumerate-numeric>
        <item>Module Transplant

        Contributors of TeXmacs have published a markdown converter.
        (<slink|https://bitbucket.org/mdbenito/tm2md/src/master/>). So, I
        just need to transplant the module into the TeXmacs code instead of
        developing markdown converters from scratches.\ 

        Transplanting seems easy enough though, I shall not only transplant
        source code of the markdown converter but also display markdown
        converter options in the user interface. Besides coding, basic
        testing and verification are also in need.

        In addition, thanks to the existence of the markdown converter, I can
        also focus on developing general converter frameworks to help more
        contributors transplant their converters into TeXmacs, just like what
        I do.

        <item>Conversion Bug Fixing

        Another problem is how to verify the functionality of the markdown
        converter. Transplanting not means everything is fine, on the
        contrary, it will possibly bring more bugs and errors to the project.
        Also, users want a perfect converter, not a semi-manufacture. The
        best way to find bugs is to use a TeXmacs document as a testing
        sample and make it be converted to markdown format as perfect as
        possible. Bugs like some text cannot be converted successfully can be
        found, and then it is my task to fix this.

        The ultimate goal is to make the converter supporting \Pperfect
        conversion\Q for \Pmarkdown-to-TeXmacs\Q and \PTeXmacs-to-markdown\Q.
      </enumerate-numeric>

      <item>Html5 converter

      Since TeXmacs contains a converter for Html, contributors can follow
      the development of the Html converter and figure out differences
      between Html and Html5. Clarifying what they need to develop is
      important because some features that TeXmacs does not support or does
      not need (for instance, Html5 includes more features regarding
      multi-media though, TeXmacs document does not need those features).\ 

      Some details of Html5 v.s. Html features are as follows:

      <\itemize-dot>
        <item>Html5 has lots of new semantic tags: \<less\>article\<gtr\>
        \<less\>header\<gtr\> \<less\>nav\<gtr\> ...

        <item>Html's tags are most of the low semantics.

        <item>Html5 abandons some of Html tags.

        <item>Html5 differs in doctype declaration from Html

        <item>Html5 uses \<less\>canvas\<gtr\> to process painting.

        <item>\<ldots\>\<ldots\>
      </itemize-dot>

      Contributors can implement the feature important to TeXmacs documents,
      mimicking the development of the Html converter.

      <item>Other converters

      As for other converters in general, it is up to contributors to
      implement. The development of the converter framework should give them
      a good environment to write a core conversion algorithm. Generally, I
      think there are two ways to implement the conversion.

      First, direct implementation. In this way, contributors need to find
      the public part of TeXmacs and Office formats and exclude other
      meaningless parts. Then, they should write a conversion process between
      two encoding formats. Since the TeXmacs document is content-limited and
      simple, the conversion is possible to make.

      Second, indirect implementation. This means contributors need
      open-source solutions - to include a third-party module in TeXmacs's
      code. And the module needs to process the conversion itself. For
      example, a \PTeXmacs to Office doc\Q process can be performed by
      \Ppandoc\Q as \PTeXmacs to markdown, and markdown to Office doc\Q. This
      way is more possible but needs to be careful about the interest of
      developers.
    </enumerate-alpha>

    <item>Framework Development

    After finish getting familiar with Front-End and Back-End codes about
    converters while finish developing markdown converter, the
    <with|font-series|bold|second task> is to develop the converter
    framework. The above analysis show several features the framework should
    support as follows:

    <\enumerate-alpha>
      <item>Front-End: add conversion options in TeXmacs automatically after
      contributors declare new converters. This part should be an abstraction
      to contributors unless they want to modify this.

      <item>Back-End: give contributors some fixed declarations and methods
      for writing converters, and let them write the core code of algorithm
      without worrying about other things. This part should also provide
      documents and standards to guide contributors to develop their
      converters legally.

      <item>Assume contributors finished converter development already, they
      need to test new features to evaluate. The feedback of users is
      important to give directions for further development. TeXmacs project
      has some Google test samples and testing code
      (<slink|https://github.com/texmacs/texmacs/tree/master/tests>). I can
      add merge these codes to the framework as a testing part.
    </enumerate-alpha>

    Following the above steps can still meet with new ideas and annoying
    bugs, so I need to develop functions in iterations.

    <item>Document Writing

    After framework development is completed, I need to update the official
    document (<slink|webman-convert.en.html>) to show that TeXmacs includes a
    converter framework. Additionally, a summary of my development is nice to
    have. My experience of writing papers and documents can help me in this
    part.
  </enumerate-roman>

  <section|Plan>

  <\itemize-dot>
    <item>1.Jun. ~ \ 30.Jun.

    <\description-compact>
      <item*|>Decouple the core codes of Front-End and Back-End parts, try
      some modification, and get familiar with compiling and testing
      procedures.\ 

      <item*|>Get familiar with the markdown converter's source code.\ 

      <item*|>Transplant markdown converter into TeXmacs. Add new converter
      options to the user interface.

      <item*|>Basic test and verification.

      <item*|>If there is any modification in the master branch, discuss it
      with mentors first.

      <item*|>Optional: develop a standard converter-dev framework for
      contributors to for the better experience of converter developing.
    </description-compact>

    <item>1.Jul. ~ 5.Aug.

    <\description-compact>
      <item*|>Develop a standard converter-dev framework for contributors to
      for the better experience of converter developing.

      <item*|>Find a proper TeXmacs document for conversion tests. Conduct
      conversion tests and compare results.Fix \PTeXmacs-to-markdown\Q bugs.
      Find bugs and try to fix them, i.e. to figure out why some text cannot
      be converted.

      <item*|>Optional: write a \Pmarkdown-to-TeXmacs\Q converter.

      <item*|>Try the best to realize a perfect conversion and form a
      conversion cycle.
    </description-compact>

    <item>6.Aug. ~ 31.Aug.

    <\description-compact>
      <item*|>Write help documents of markdown converter.

      <item*|>Write standards documents of the converter framework.

      <item*|>Write a development summary.\ 

      <item*|>Fix minor bugs and check code style. Conduct the final
      verification.\ 

      <item*|>Make sure everything in GNU standards.
    </description-compact>
  </itemize-dot>

  <section|Communication>

  In the upcoming period of time and summer, I will first go to Jiangsu,
  China, to get my graduation certificate, and go back to Shandong, China, my
  hometown. During this time, I can absorb in development without dealing
  with other things. Also, I will choose to use <with|font-series|bold|Zoom>
  with mentors to communicate face-to-face. Using the
  <with|font-series|bold|dev-mail list>, <with|font-series|bold|email> or
  <with|font-series|bold|Gitter> is also helpful. We may live in a different
  time zone, so make an appointment before start communication is necessary.

  <section|Qualification>

  As a senior student in the Computer Science department, I have been working
  with my friend to develop lots of team projects. They are great though, I
  found that I have been merely making toy programs in university and only
  have limited experience of developing real industrial projects. So a real,
  full-stack development experience is important to me, not to mention that
  it is what I need to become a high-caliber developer and software
  specialist in the world.

  GSoC provides me a good chance to work with great mentors to maintain
  open-source projects. I choose to improve TeXmacs because it is close to my
  academic life and the product can improve my writing experience. Also, I
  have some experience developing user-oriented products. I think my
  code-decoupling ability, solid coding ability, paper writing skill, and
  persistence will help TeXmacs become better.\ 

  I hope to join the GNU community and try the best of mine to make TeXmacs
  greater!

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|2>>
    <associate|auto-6|<tuple|1|3>>
    <associate|auto-7|<tuple|6|6>>
    <associate|auto-8|<tuple|7|6>>
    <associate|auto-9|<tuple|8|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Conversion Options between different document forms
      </surround>|<pageref|auto-6>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>About
      Me> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Project
      Name> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Summary>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Benefits>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Deliverables>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Plan>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Communication>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Qualification>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>