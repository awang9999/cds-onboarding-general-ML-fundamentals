# cds-onboarding-general-ML-fundamentals

This repository contains the associated code for a short talk given on 2022-03-13 to new members of the Cornell Data Science project team. <br>

The topics covered include:
* Functions, hypotheses, hypothesis classes
* Data preprocessing
* Train-validate-test split
* model evaluation
* overfitting
* the general machine learning experiment
* and more!

Associated slides for this presentation can be found [here](https://docs.google.com/presentation/d/1oIIrpcFIbrBNpr6Y41UfxtrgGK7sF9TKNVt7QONT2BI/edit?usp=sharing).


Three relevant commands:

```
$ ssh -L <PORT>:localhost:<PORT> onboarding_sp22@128.84.48.78

$ sudo docker build --build-arg PORT=<PORT> -t cds_mar12_onboarding:<netid> .

$ sudo docker run -p <PORT>:<PORT> --mount src="$(pwd)",target=/sample_volume,type=bind -t -i cds_mar12_onboarding:<netid>
```
