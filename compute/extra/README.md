<br>

## Computation Settings for the Core Hyperparameter Search Module<br>Via Auto Scaling Capacity Provider

### Steps

<details><summary><b>Initial Steps</b></summary>

```mermaid
  stateDiagram
    direction TB

    accTitle: This is the accessible title
    accDescr: This is an accessible description
    
    id01: ec2 user\ndata text
    id02: ec2 user data\nbase 64 text format
    id03: ec2 launch template\nJSON
    id04: Amazon EC2#58;\nLaunch Template
    id05: auto scaling group\nJSON
    id06: Amazon EC2#58;\nAuto Scaling Group

    classDef data fill:orange,stroke-width:0,font-size:small,opacity:0.85;
    classDef definitions fill:#282828,color:white,font-style:italic,stroke-width:0,font-size:small,opacity:0.65;
    classDef aws fill:#282828,color:white,font-weight:normal,stroke-width:0,stroke:#000000,font-size:small,opacity:0.95;

    [*] --> id01:::data 
    id01 --> id02:::data : <span style='font-size#58;small'>base 64 encoding</span>
    id02 --> id03:::definitions : <span style='font-size#58;small'><b>embed</b>#58; encoding</span>
    id03 --> id04:::aws : <span style='font-size#58; small#59;'>#8194; #8194; #8194; #8194; #8194; aws ec2\ncreate-launch-template</span>
    id04 --> [*]
    id04 --> id05:::definitions : <span style='font-size#58; small#59;'><b>embed</b>#58; launch\ntemplate identifier</span>
    id05 --> id06:::aws : <span style='font-size#58; small#59;'>#8194; #8194; #8194; aws autoscaling\ncreate-auto-scaling-group</span>
    id06 --> [*]
```

</details>

<br>

### Task Definition

At this stage?

```json
{
  "containerDefinitions": [
    {
      "command": ["...", "..."]
    }
  ]
}
```

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>