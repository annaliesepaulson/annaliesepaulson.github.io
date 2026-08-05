---
layout: single
title: "Teaching"
permalink: /teaching/
author_profile: true
---

While working with research assistants, I often write code demonstrations of concepts for them to explore. Here are a few of them:

## An Introduction to Webscraping with Selenium

This [notebook](https://colab.research.google.com/drive/19t6gD1MrSkRItW9n-vht5esMai17uEBN?usp=sharing) provides an introduction to webscraping in Python using Selenium, using collecting course descriptions from online course catalogs as a running example. Note that this script will not run in Google Colab due to the interaction between Colab and Selenium. You can view the content in Colab or download the file as an iPython notebook to run as a Jupyter notebook.

## Text Classification with a Fine-Tuned Large Language Model

This [notebook](https://colab.research.google.com/drive/1iebZ_Zznpv3XPgF34LmwFozd7fSg0ZCh?usp=sharing) provides a short vignette demonstrating how to use fine-tuned large language models in HuggingFace pipelines for text classification. I use a RoBERTa model I fine-tuned to classify courses into the National Center for Education Statistics' [College Course Map](https://nces.ed.gov/surveys/pets/ccm.asp) to efficiently classify a large number of course records I collected from the [Texas Higher Education Coordinating Board's Common Course Numbering](https://tccns.org/) system database.

More details about the data and model performance are available in the [Classifying Courses at Scale working paper](https://edworkingpapers.com/sites/default/files/ai24-1042.pdf).
