#set page(
  paper: "a4",
  margin: (x: 22mm, y: 20mm),
)

#set text(
  font: "Inter",
  size: 10pt,
  fill: rgb("#111111"),
)

#set par(leading: 0.8em)

#let mono = "IoskeleyMono Nerd Font"

#let section(title, body) = [
  #block(width: 100%)[
    #text(
      size: 9pt,
      weight: 600,
      tracking: 0.02em,
    )[#title]
    #v(5pt)
    #line(length: 100%, stroke: 0.6pt + rgb("#111111"))
  ]
  #v(10pt)
  #body
  #v(10pt)
]

#grid(
  columns: (1fr, auto),
  align: (left, right),
  column-gutter: 20pt,
  [
    #text(size: 30pt, weight: 600, tracking: -0.03em)[Heewon Cho]
  ],
  [
    #align(right)[
      #text(size: 8.5pt)[2006.12.26] \
      #text(font: mono, size: 8.5pt)[
        #link("mailto:contact@pribe.ss")[#text("contact@pribe.ss")]
      ]
    ]
  ],
)

#v(30pt)

#section("Education")[
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    column-gutter: 20pt,
    [
      #text(size: 11pt, weight: 600)[Sogang University] \
      #text(size: 9pt, fill: rgb("#555555"))[Bachelor of Engineering]
    ],
    [#text(size: 9pt)[Mar 2026 — Present]],
  )
]

#section("Work Experience")[
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    column-gutter: 20pt,
    [
      #text(size: 11pt, weight: 600)[Digital Layer Co., Ltd.]
      #h(5pt)
      #link("https://bgp.tools/as/20200")[
        #text(size: 8.5pt, fill: rgb("#555555"))[AS20200]
      ] \
      #text(size: 9pt, fill: rgb("#555555"))[Founding Engineer]
    ],
    [#text(size: 9pt)[Dec 2022 — Present]],
  )
  #v(7pt)
  #text(size: 8.5pt, fill: rgb("#555555"))[
    Rust · C/C++ · Linux Kernel · KVM · DPDK · XDP · TS/JS · Next.js \
    K8s · Postgres · BullMQ · Redis \
    BGP · Route Policy
  ]
]

#section("Organizations")[
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    column-gutter: 20pt,
    [
      #text(size: 11pt, weight: 600)[#text("AI@Sogang")]
      #h(5pt)
      #text(size: 8.5pt, fill: rgb("#555555"))[
        (Artificial Intelligence Student Society)
      ] \
      #text(size: 9pt, fill: rgb("#555555"))[President] \
      #link("https://www.instagram.com/ai.at.sogang/")[
        #text(font: mono, size: 8.5pt, fill: rgb("#555555"))[
          instagram.com/ai.at.sogang
        ]
      ]
    ],
    [#text(size: 9pt)[Jul 2026 — Present]],
  )
]

#section("Projects")[
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    column-gutter: 20pt,
    [
      #link("https://github.com/UniKitHQ/UniKit")[
        #text(size: 11pt, weight: 600)[UniKit]
      ] \
      #text(size: 9pt, fill: rgb("#555555"))[
        Unikernel · Runs existing programs as-is · Supporting ecosystem \
        Rust rewrite in progress
      ] \
      #link("https://github.com/UniKitHQ/UniKit")[
        #text(font: mono, size: 8.5pt, fill: rgb("#555555"))[
          github.com/UniKitHQ/UniKit
        ]
      ]
    ],
    [#text(size: 9pt)[2022 — Present]],
  )

  #v(14pt)

  #grid(
    columns: (1fr, auto),
    align: (left, right),
    column-gutter: 20pt,
    [
      #link("https://github.com/Pribess/FuseKit")[
        #text(size: 11pt, weight: 600)[FuseKit]
      ] \
      #text(size: 9pt, fill: rgb("#555555"))[
        MLX graph compiler and Metal runtime for accelerating LLM inference on Apple Silicon
      ] \
      #text(size: 8.5pt, fill: rgb("#555555"))[
        Rust · Python · Metal · MLX
      ] \
      #link("https://github.com/Pribess/FuseKit")[
        #text(font: mono, size: 8.5pt, fill: rgb("#555555"))[
          github.com/Pribess/FuseKit
        ]
      ]
    ],
    [#text(size: 9pt)[May 2026 — Jun 2026]],
  )
]

#section("Interests")[
  #set text(size: 9pt)
  - LLM inference and serving systems
  - Broader machine learning systems (MLSys)
  - Unikernels and library operating systems
  - Virtualization and isolation systems
]
