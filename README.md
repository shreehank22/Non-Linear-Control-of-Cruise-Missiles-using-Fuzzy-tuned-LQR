# 🚀 Non-Linear Control of Cruise Missiles using Fuzzy-Tuned LQR

This repository presents a **fuzzy logic-based intelligent control strategy** to enhance the performance of a **Linear Quadratic Regulator (LQR)** for a cruise missile system modeled using **feedback linearization**. By integrating a fuzzy inference system to adaptively tune LQR parameters, the controller demonstrates superior robustness to disturbances and achieves a **28.92% improvement in tracking performance**.

---

## 📌 Highlights

* ✅ Designed a **Fuzzy Inference System (FIS)** to intelligently tune LQR weights
* ✅ Enhanced robustness to external disturbances
* ✅ Applied on **nonlinear cruise missile dynamics** with feedback linearization
* ✅ Achieved **28.92% improvement** in tracking performance
* ✅ Validated through extensive MATLAB/Simulink simulations

---

## 🧠 Methodology

1. **System Modeling:**

   * Nonlinear dynamics of a cruise missile are modeled and linearized using **feedback linearization**.

2. **Conventional LQR:**

   * Baseline control designed using standard LQR with fixed $Q$ and $R$ matrices.

3. **Fuzzy-Tuned LQR:**

   * Developed a **FIS (FLC\_Final1.fis)** to dynamically adjust the LQR weights based on system error and state feedback.
   * Improved adaptability and transient response under varying conditions.

4. **Simulation & Validation:**

   * Compared fuzzy-tuned LQR and conventional LQR in Simulink (`Final_PAPER2_wtdelay_fuzzy.slx` and `Final_PAPER2_wtdelay_LQR.slx`).
   * Assessed improvements in tracking error, control effort, and system stability.

---

## 📁 Repository Structure

```
Non-Linear-Control-of-Cruise-Missiles-using-Fuzzy-tuned-LQR/
│
├── Final_PAPER2_wtdelay_LQR.slx        # Simulink model with standard LQR control
├── Final_PAPER2_wtdelay_fuzzy.slx      # Simulink model with fuzzy-tuned LQR control
├── FLC_Final1.fis                      # Fuzzy Inference System (for tuning LQR)
├── README.md                           # Project documentation
```

---

## 🚀 Getting Started

### Requirements

* MATLAB R2020a or later
* Control System Toolbox
* Fuzzy Logic Toolbox
* Simulink

### Steps to Run

1. **Clone the repository:**

   ```bash
   git clone https://github.com/shreehank22/Non-Linear-Control-of-Cruise-Missiles-using-Fuzzy-tuned-LQR.git
   cd Non-Linear-Control-of-Cruise-Missiles-using-Fuzzy-tuned-LQR
   ```

2. **Open MATLAB**, then:

   ```matlab
   open('Final_PAPER2_wtdelay_fuzzy.slx')      % For fuzzy-tuned LQR
   open('Final_PAPER2_wtdelay_LQR.slx')        % For conventional LQR
   ```

3. **Run the simulations and compare results**.

---

## 📊 Results Summary

* **Fuzzy-Tuned LQR** significantly outperformed fixed-gain LQR in:

  * Tracking error reduction
  * Disturbance rejection
  * Control efficiency

* **Improvement:**
  ✅ *28.92%* better tracking performance under simulated disturbance conditions

---

## 📚 References

* Kuo, B.C., & Golnaraghi, F. (2003). *Automatic Control Systems*
* Tanaka, K., & Wang, H.O. (2001). *Fuzzy Control Systems Design and Analysis*
* Bryson, A.E., & Ho, Y.C. (1975). *Applied Optimal Control*

---

## 👨‍💻 Author

**Shreehan Kate**
For collaborations or academic inquiries, feel free to reach out.

---

## 📄 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.
