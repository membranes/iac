<br>

# Compute

The compute *infrastructure-as-code* settings for data acquisition & preparation, model building, and model numerics.

## Model

A set-up consisting of a GPU (Graphics Processing Unit) machine, a virtual private cloud alongside requisite security settings, cloud storage, etc., underpins the model development & preliminary testing analytics environment.  The details are encoded in a launch template.  Hence, a model development task is launched via  

```bash
bash /compute/train/run.sh  {architecture} {region.code}
```

Whereby

* `architecture`: At present, `bert` (BERT) or `distil` (DistilBERT)
* `region.code`: A <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html" target="_blank">region code</a>, e.g., `ap-east-1`

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>