🔁 What is a dynamic Block in Terraform?

In Terraform, a dynamic block is a special feature used when you need to generate nested blocks dynamically — for example:

When you don’t know at design time how many nested blocks you’ll need.

When the content of those blocks depends on variables or computed values.

🧠 Think of it as:
Terraform's way of looping over nested blocks when their count or content is dynamic.
