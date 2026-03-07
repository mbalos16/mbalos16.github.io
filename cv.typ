#set page(paper: "a4", margin: (x: 1.8cm, y: 1.6cm))
#set text(font: "New Computer Modern", size: 10pt, lang: "en")
#set par(justify: false, leading: 0.55em)
#show heading.where(level: 1): it => [
  #set text(size: 18pt, weight: "bold")
  #it.body
]
#show heading.where(level: 2): it => [
  #v(0.6em)
  #set text(size: 8.5pt, weight: "bold", fill: rgb("#57606a"))
  #upper(it.body)
  #line(length: 100%, stroke: 0.5pt + rgb("#d0d7de"))
  #v(0.2em)
]
#show heading.where(level: 3): it => [
  #v(0.5em)
  #set text(size: 10pt, weight: "bold")
  #it.body
  #v(-0.4em)
]

#let meta(content) = {
  v(-0.1em)
  text(size: 8.5pt, fill: rgb("#57606a"), content)
  v(-0.3em)
}
#let tag(content) = box(
  fill: rgb("#fff8c5"),
  stroke: 0.5pt + rgb("#d4a72c"),
  radius: 3pt,
  inset: (x: 4pt, y: 1pt),
  text(size: 7.5pt, fill: rgb("#9a6700"), content)
)

// ── Header ──────────────────────────────────────────────────────────────────
= Maria Magdalena Balos

#text(size: 11pt, fill: rgb("#57606a"))[Data Scientist]

#v(0.3em)
#meta[Cambridge, UK · #link("mailto:mariabalos16@gmail.com")[mariabalos16\@gmail.com] · #link("https://linkedin.com/in/mariabalos")[linkedin.com/in/mariabalos] · #link("https://github.com/mbalos16")[github.com/mbalos16]]

// ── Summary ─────────────────────────────────────────────────────────────────
== Summary

Data scientist with a background in UX research and a strong focus on applied machine learning, NLP, and generative AI. Experienced in training and deploying speech models in production, building RAG systems, and implementing deep learning architectures from scratch. Combines deep ML expertise with a UX research background, enabling technical depth and user-centred thinking, with a track record of delivering results independently and communicating findings clearly across technical and non-technical audiences.

// ── Experience ───────────────────────────────────────────────────────────────
== Experience

=== Data Scientist — Vocality.ai
#meta[Jan 2025 – Present · Remote]
- Trained and fine-tuned text-to-speech models for commercial deployment across multiple languages (English, Spanish, Basque, Slovenian), with models currently serving end users in production.
- Improved model quality by refining data processing pipelines — including data filtering and transcription quality — to reduce artefacts such as metallicity and improve pronunciation accuracy.
- Built and maintained speech generation pipelines on GCP, integrating models including WhisperX (ASR) and BigVGAN (vocoder).
- Built an audio post-processing pipeline assembling multi-segment TTS outputs into complete audio tracks based on timestamps, removing silences, and formatting audio for ads and e-learning applications.
- Generated and validated subtitle outputs from TTS pipelines.

=== Research Assistant — Museum of Archaeology and Anthropology
#meta[Aug 2023 – Jan 2024 · Cambridge, UK]
- Conducted contextual observation studies, systematically tracking visitor movement, timing, and interaction patterns across exhibits.
- Collaborated in the design of a 32-question structured survey to collect quantitative visitor behaviour data.

=== UX Researcher — Singer Instruments
#meta[Sep 2022 – Mar 2023 · Remote]
- Automated interview transcription and speaker diarization using Whisper and Pyannote, reducing transcription time by 80% and enabling distinction between user and interviewer speech for downstream analysis and further reference.
- Designed and led usability studies and user interviews in laboratory environments with scientists.
- Analysed qualitative and quantitative research data to inform product decisions across a multi-disciplinary R&D team.
- Awarded Intern of the Year 2022.

// ── Projects ─────────────────────────────────────────────────────────────────
== Projects

*Manifold HyperConnections for Computer Vision* #tag[In progress] · #link("https://arxiv.org/abs/2512.24880")[arXiv:2512.24880]
- Replicating results from the Manifold HyperConnections (mHC) paper and conducting experiments on how this novel architecture can be applied to computer vision tasks.

*CON(e)VOLUTION – From LeNet to Vision Transformers* · #link("https://github.com/mbalos16/image_classification")[GitHub] · #link("https://medium.com/@mariabalos16/con-e-volution-a-walkthrough-from-lenet-to-vision-transformers-4f319bb0b2b7")[Article]
- Implemented 10 CNN architectures from scratch in PyTorch — including custom variations of existing architectures — benchmarked and tested on the NEU Surface Defects dataset, with a shared modular trainer and CLI interface.

*RAG-Driven Educational Assistant* · Master's Dissertation · #link("https://github.com/mbalos16/datamecum_tfm")[GitHub]
- Built a full-stack RAG application using LangChain, ChromaDB, GPT-4o-mini, and Claude-3-Haiku.
- Ingested a knowledge base built from Whisper transcriptions of all master video lessons (364h of content — 91 videos).
- Benchmarked RAG-based vs. non-RAG-based approaches to evaluate and quantify retrieval benefit.
- Implemented gamification in the Flask interface, repurposing the benchmark as a student leaderboard to compare human performance against the RAG/LLM system.

*Ryanair Timecapsule* · #link("https://github.com/mbalos16/ryanair_timecapsule")[GitHub]
- Reverse-engineered the Ryanair API to enable systematic daily collection of flight price data across two endpoints. Released as an open-source Python package with tests and CLI scripts to facilitate data collection for researchers interested in price forecasting.

*K-Means for Colour Palette Generation* · #link("https://medium.com/@mariabalos16/machine-learning-applied-to-the-design-industry-k-means-for-image-palette-generation-dbd908b2312b")[Article]
- Applied K-Means clustering to extract dominant colour palettes from images, deployed as a Flask web application.

// ── Education ────────────────────────────────────────────────────────────────
== Education

=== Master's in Deep Learning & Generative AI · Datamecum, Madrid
#meta[Oct 2024 – Jul 2025]
#v(-0.3em)
- Dissertation: RAG-Driven Educational Assistant — contextual Q&A and knowledge testing system for DS students.
- Coursework: transformer architectures, generative models, NLP, computer vision.

=== Intensive Program in Data Science · Datamecum, Madrid
#meta[Oct 2023 – May 2024]
#v(-0.3em)
- 1st place: Winner of the 3rd Datamecum Datathon — binary classification competition (AUC 0.9851) using an ensemble of Random Forest and XGBoost.

=== Master's in Interaction Design & UX · Universitat Oberta de Catalunya
#meta[Sep 2021 – Mar 2023]

=== Bachelor's in Graphic Design & Digital Creations · Universitat Oberta de Catalunya
#meta[2018 – 2021]

// ── Skills ───────────────────────────────────────────────────────────────────
== Skills

#set par(justify: false)
*ML & AI:* Deep Learning, NLP, Speech Models (TTS, ASR), RAG, Computer Vision, CNNs, Transformers, Generative AI

*Frameworks & Tools:* PyTorch, Hugging Face, LangChain, ChromaDB, Scikit-learn, Pandas, NumPy, Streamlit, Flask

*Cloud & Infra:* Google Cloud (GCP), Git, Docker — *Programming:* Python, SQL, Bash

*Other:* Speaker Diarization, Whisper, UX Research, Agile, Unit Testing

// ── Certifications ───────────────────────────────────────────────────────────
== Certifications & Continuous Learning

- Advanced Learning Algorithms — Andrew Ng, Coursera
- Practical Deep Learning — fast.ai
- NLP with Transformers — Hugging Face
- Audio Transformers — Hugging Face
- Supervised Machine Learning — Coursera
- 200+ LeetCode problems solved
- Advent of Code 2024 — completed
- Active member, Cambridge Programmers Study Group (weekly meetup)

// ── Languages ────────────────────────────────────────────────────────────────
== Languages

Spanish (native) · Romanian (native) · English (full professional) · French (basic)
