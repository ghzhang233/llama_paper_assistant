---
layout: page
title: About
permalink: /about/
---

# Llama paper assistant: A daily ArXiv scanner

You could deploy your own paper scanner by cloning my [Github repo](https://github.com/ghzhang233/llama_paper_assistant).
This is largely based on [GPT4 paper assistant](https://github.com/tatsu-lab/gpt_paper_assistant), and I further enables to use Llama models as the assistant. 
This repo implements a very simple daily scanner for Arxiv that uses Llama and author matches to find papers you might find interesting. 

The papers posted in this website about the following research topics,
```text
 1. New methodological improvements to RLHF or instruction-following which are specific fine-tuning steps that are taken to make language models better at following user instructions across a range of tasks.
    - Relevant: papers that discuss specific methods like RLHF, or instruction-tuning datasets, improving these methods, or analyzing them. Usually these papers will explicitly mention RLHF, instruction-following or instruction-tuning.
    - Not relevant: papers about adaptation to some task. Simply following instructions or inputs are not sufficient.
 2. Shows new powerful test set contamination or membership inference methods for language models. Test set contamination is the phenomenon where a language model observes a benchmark dataset during pretraining.
    - Relevant: test statistics that can detect contamination of benchmarks in language models. statistics that can provide guarantees are more interesting. membership inference methods that are general enough to apply to language models are also relevant.
    - Not relevant: any papers that do not consider language models, or that do not consider test set contamination.
 3. Shows a significant advance in the performance of diffusion language models.
    - Relevant: papers that study language models that are also diffusion models. Continuous diffusions are even more relevant, while discrete diffusions are less so.
    - Not relevant: papers about image diffusions like DALL-E or Stable Diffusion, or papers that do not explicitly mention language models or applications to text.
 4. Describes new paradigms to evaluating open-ended text generation. Evaluating the outputs of language models is hard, especially in open-ended settings like for chatbots.
    - Relevant: papers that fundamentally rethink language model evaluation -- especially by accounting for subjectivity or using adversaries.
    - Not relevant: specific evaluations for specific tasks, identifying new properties or flaws of language models, or simply collecting new data.
 5. Conducts surveys or provides data into real-world usage and safety properties of language models.
    - Relevant: papers that create new datasets or surveys on real-world usage of language models.
    - Not relevant: papers that apply language models to new real-world tasks.
 6. Studies 'scaling laws' in the context of neural networks. Scaling laws refer to the very clear power-law relationship between the size or computational power used to train a model and the performance of that model.
    - Relevant: theoretical or conceptual explanation behind scaling laws for language models.
    - Not relevant: papers that have experiments at different model scales (but do not explicitly fit a scaling law) or papers that mention scaling laws, but the scaling laws are not the central subject of the paper

 In suggesting papers to your friend, remember that he enjoys papers on statistical machine learning, and generative modeling in natural language processing.
 Your friend also likes learning about surprising empirical results in language models, as well as clever statistical tricks.
 He does not want to read papers that are about primarily applications of methods to specific domains.
```
and the following authors' papers would also be posted,
```text
# Stanford NLP faculty.
Tatsunori B. Hashimoto, 3056528
Tatsunori Hashimoto, 2117567142
Percy Liang, 145419642
Dan Jurafsky, 1746807
Christopher D. Manning, 144783904
Chris Potts, 1741530
Diyi Yang, 2022168
Monica Lam, 39682108
```

