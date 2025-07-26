# OTA with Capacitive Feedback - Small-signal Closed-loop Transfer Function

![Fully differential OTA with capacitive feedback](/SC-Circuits/OTA%20with%20Capacitive%20Feedback/Figures/OTA_cap_feedback_fully_diff.png)

This [notebook](/SC-Circuits/OTA%20with%20Capacitive%20Feedback/OTA_with_capacitive_feedback.pdf) presents the linear analysis of the transfer function of a fully-differential OTA with capacitive feedback. It first derives the linear transfer function nd then finds the optimum inversion coefficient of the input differential pair in order to minimize the current consum ption for achieving a given DC gain and bandwidth.

The optimization is then illustrated with a practicle example desing for a generic 180nm bulk CMOS process. The latter is then simulated with ngspice using the EKV 2.6 compact model. The simulation perfectly matches the theoretical prediciton.
