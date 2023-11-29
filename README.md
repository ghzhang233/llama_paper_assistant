# Llama paper assistant: A daily ArXiv scanner

This repo is largely based on [GPT4 paper assistant](https://github.com/tatsu-lab/gpt_paper_assistant), and enables to
use Llama models as the assistant. The original
scanner with OpenAI GPT are kept, and please refer to [original README](./README.old.md) for instruction of usage.

## Quickstart

**Please make sure that you have the access to Llama-2 models in huggingface. If you don't have the access, please
visit [Huggingface](https://huggingface.co/meta-llama/Llama-2-70b-chat-hf) to apply for the license.**

To run the scanner, you need to install the dependencies first:

```bash
pip install -r requirements.txt
```

Then you can run the scanner:

```bash
python main.py
```

To use Llama-7B, make sure that you have over 25GB of GPU memory.
To use Llama-70B, make sure that you have over 257GB of GPU memory in total.

## Deployment

As long as you **fork** this repo, in intuition, Github would deploy a website for you. The link
is `https://<your_github_username>.github.io/llama_paper_assistant/`. You can also change the name of the repo so that
the link would also change.
Everytime you run `main.py`, the resulted recommendations would be directly added to `_posts`.
In order to publish the new posts, you just need to add the new posts to the git repo and push it to the remote repo.

```bash
git add _posts/*
git commit -m "add new posts"
git push
```

You could consider to run the scanner everyday by setting some scheduled jobs in your server, or just run it manually everyday.


## Configure the research topics of interest

The [`configs/config.ini`](./configs/config.ini) file stores most of the configurations for the scanner.
To speed up, for example, one could set `model = Llama-2-7b-chat-hf` and reduce `num_samples = 1`, but I don't recommend
to do so.
On the other hand, if you plan to use GPT based models, I would recommend you to set `num_samples = 1` to save costs.

The `paper_topics.txt` file is used to generate the prompt for Llama. It is a list of topics that you want to follow.
One set of examples might be something like

```text
 1. New methodological improvements to RLHF or instruction-following which are specific fine-tuning steps that are taken to make language models better at following user instructions across a range of tasks.
    - Relevant: papers that discuss specific methods like RLHF, or instruction-tuning datasets, improving these methods, or analyzing them.
    - Not relevant: papers about adaptation to some task. Simply following instructions or inputs are not sufficient.
 2. Shows new powerful test set contamination or membership inference methods for language models. Test set contamination is the phenomenon where a language model observes a benchmark dataset during pretraining.
    - Relevant: test statistics that can detect contamination of benchmarks in language models. statistics that can provide guarantees are more interesting. membership inference methods that are general enough to apply to language models are also relevant.
    - Not relevant: any papers that do not consider language models, or that do not consider test set contamination.
 3. Shows a significant advance in the performance of diffusion language models.
    - Relevant: papers that study language models that are also diffusion models. Continuous diffusions are even more relevant, while discrete diffusions are less so.
    - Not relevant: papers about image diffusions like DALL-E or Stable Diffusion, or papers that do not explicitly mention language models or applications to text.
```

This is just a standard prompt, but being very specific can help, especially for things like 'diffusion language models'
or 'instruction-following', where the LM can get confused about whether image diffusions are relevant, or if doing some
task better is sufficient to improve instruction following.

You may also want to follow this with some general interest areas like

```text
In suggesting papers to your friend, remember that he enjoys papers on statistical machine learning, and generative modeling in natural language processing.
 Your friend also likes learning about surprising empirical results in language models, as well as clever statistical tricks.
 He does not want to read papers that are about primarily applications of methods to specific domains.
```

You should also specify the authors from whom the paper you are interested in. One example is as follows,

```text
Tatsunori B. Hashimoto, 3056528
```

The numbers behind the author are important - these are semantic scholar author IDs which you can find by looking up the
authors on semantic scholar and taking the numbers at the end of the URL.
