# **Nonlinear Control of Cruise Missiles using Fuzzy-Tuned LQR**

This repository presents a **fuzzy logic-based adaptive control strategy** to enhance the performance of a **Linear Quadratic Regulator (LQR)** applied to a nonlinear cruise missile model. By integrating a fuzzy inference system (FIS) to adaptively tune LQR weights, the controller improves system robustness and achieves a **28.92% improvement in tracking performance** under delay and disturbance scenarios.

---

## **Highlights**

* Adaptive **Fuzzy Inference System (FIS)** to dynamically tune LQR weighting matrices.
* Addresses **actuator time delays** and **control surface uncertainties**.
* Applies **feedback linearization** to model nonlinear cruise missile dynamics.
* Achieves **significantly improved tracking** and control effort efficiency.
* Validated through **MATLAB/Simulink simulations** with disturbances.

---

## **Updated Repository Structure**

```plaintext
Non-Linear-Control-of-Cruise-Missiles-using-Fuzzy-tuned-LQR/
│
├── Codes/                           # MATLAB control & simulation scripts
│   ├── FuzzyLogicController_code.m      # Main FLC execution script
│   ├── RuleInference.m                 # constructes rule inference plots
│   └── controlSurfaceSimulation.m      # Generates control surface plots via gensurf
│
├── Simulink Files/                  # System-level simulation models
│   └── Final_PAPER2_wtdelay_fuzzy.slx   # Simulink model with fuzzy-tuned LQR
│
├── FLC_Final1.fis                  # FIS file (defines fuzzy rules and membership functions)
├── LICENSE.txt                     # Licensing information
├── README.md                       # Project documentation
```

---

## **Methodology**

1. **Nonlinear Modeling & Linearization**
   The missile's nonlinear longitudinal dynamics are linearized using feedback linearization to allow LQR-based design.

2. **Standard LQR Controller**
   A fixed-gain LQR controller is initially implemented to serve as the baseline.

3. **Fuzzy Logic Controller Design**
   A FIS (`FLC_Final1.fis`) adaptively tunes the LQR weight matrices $Q$ and $R$ based on the real-time system state and error metrics.

4. **Simulation & Analysis**
   Implemented and validated in Simulink using `Final_PAPER2_wtdelay_fuzzy.slx`.

---

## **How to Run**

### **Prerequisites**

* MATLAB R2020a or later
* Simulink
* Fuzzy Logic Toolbox
* Control System Toolbox

### **Steps**

1. **Clone this Repository**

   ```bash
   git clone https://github.com/shreehank22/Non-Linear-Control-of-Cruise-Missiles-using-Fuzzy-tuned-LQR.git
   cd Non-Linear-Control-of-Cruise-Missiles-using-Fuzzy-tuned-LQR
   ```

2. **Open MATLAB**, then:

   ```matlab
   open('Simulink Files/Final_PAPER2_wtdelay_fuzzy.slx')
   open('FLC_Final1.fis')
   ```

3. **Run Simulations** to observe performance differences between standard LQR and fuzzy-tuned LQR.

4. **Modify or Expand Rules** in the `.fis` file using the **FIS editor** (`fisTool` in MATLAB).

---

## **Results Summary**

* **Fuzzy-tuned LQR** outperforms fixed LQR in:

  * Tracking accuracy
  * Stability under delay/disturbances
  * Reduced overshoot and smoother transient response

* **Performance Improvement**:
  **28.92%** reduction in tracking error with fuzzy-adaptive tuning

---

## **License**

This project is licensed under the MIT License. See [LICENSE.txt](./LICENSE.txt) for details.

---

## **Author**

**Shreehan Kate**
For academic collaborations or technical inquiries, feel free to connect.



