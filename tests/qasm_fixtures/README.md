# Quokka-Sharp QASM Test Fixtures

Pre-built QASM circuits for testing all four Quokka-Sharp functionalities.

## Directory Layout

```
qasm_fixtures/
├── single_qubit/    14 circuits  — 1-qubit gates and compositions
├── multi_qubit/     10 circuits  — 2-3 qubit algorithms
├── equiv_pairs/     20 circuits  — 6 EQUIV pairs + 4 NOT-EQUIV pairs
├── verify/          10 circuits  — pre/post-condition test cases
└── synthesis/        7 circuits  — synthesis target circuits
```

---

## single_qubit/

| File | Circuit | Expected P(allzero) | Notes |
|---|---|---|---|
| `identity_wire.qasm` | I | 1.0 | No gates |
| `h.qasm` | H | 0.5 | Superposition |
| `x.qasm` | X | 0.0 | Bit-flip; P({0:1})=1.0 |
| `y.qasm` | Y | 0.0 | P({0:1})=1.0 |
| `z.qasm` | Z | 1.0 | Phase only |
| `s.qasm` | S | 1.0 | sqrt(Z) |
| `t.qasm` | T | 1.0 | sqrt(S) |
| `hh.qasm` | HH | 1.0 | ≡ identity_wire |
| `ss.qasm` | SS | 1.0 | ≡ z.qasm |
| `tt.qasm` | TT | 1.0 | ≡ s.qasm |
| `xxxx.qasm` | XXXX | 1.0 | ≡ identity_wire |
| `hs.qasm` | HS | 0.5 | ≢ h.qasm (different unitary) |
| `hxh.qasm` | HXH | 1.0 | ≡ z.qasm |
| `hzh.qasm` | HZH | 0.0 | ≡ x.qasm |

---

## multi_qubit/

| File | Circuit | Key expectation |
|---|---|---|
| `bell.qasm` | H+CX | P(00)=0.5, P(11)=0.5, P(01)=0.0 |
| `bell_psi_minus.qasm` | |Ψ-> | P(01)=0.5, P(10)=0.5 |
| `cx_q0q1.qasm` | CX | P(allzero)=1.0; verify 00→00, 10→11 |
| `cx_x_cx.qasm` | X·CX·X | P({0:0,1:1})=1.0 |
| `swap.qasm` | 3-CX SWAP | P(allzero)=1.0; equiv to `eq5_swap.qasm` |
| `ghz_3q.qasm` | GHZ | P(000)=0.5, P(111)=0.5 |
| `qft_2q.qasm` | 2-QFT | All 4 outcomes = 0.25 |
| `toffoli.qasm` | CCX | P(allzero)=1.0; verify 110→111 |
| `fredkin.qasm` | CSWAP | P(allzero)=1.0 |
| `bernstein_vazirani_2q.qasm` | BV(s=01) | P({0:0,1:1,2:1})=1.0 |

---

## equiv_pairs/

### Equivalent pairs (eq() → True)

| LHS | RHS | Identity |
|---|---|---|
| `eq1_hh.qasm` | `eq1_identity.qasm` | HH = I |
| `eq2_ss.qasm` | `eq2_z.qasm` | SS = Z |
| `eq3_hxh.qasm` | `eq3_z.qasm` | HXH = Z |
| `eq4_cxcx.qasm` | `eq4_id2q.qasm` | CX² = I |
| `eq5_3cx_swap.qasm` | `eq5_swap.qasm` | 3-CX SWAP = SWAP |
| `eq6_tt.qasm` | `eq6_s.qasm` | TT = S |

### Non-equivalent pairs (eq() → False)

| LHS | RHS | Reason |
|---|---|---|
| `neq1_h.qasm` | `neq1_x.qasm` | Different unitaries |
| `neq2_h.qasm` | `neq2_hs.qasm` | S changes the unitary |
| `neq3_bell.qasm` | `neq3_cx.qasm` | Missing H |
| `neq4_z.qasm` | `neq4_s.qasm` | Z ≠ S (different phase) |

---

## verify/

| File | Circuit | PASS condition | FAIL condition |
|---|---|---|---|
| `v01_x_flip.qasm` | X | pre={0:0} → post={0:1} | post={0:0} |
| `v02_identity.qasm` | I | pre={0:0} → post={0:0} | post={0:1} |
| `v03_cx_control0.qasm` | CX | pre={0:0,1:0} → post={0:0,1:0} | post={0:0,1:1} |
| `v04_cx_control1.qasm` | X·CX | pre={0:0,1:0} → post={0:1,1:1} | — |
| `v05_toffoli_no_flip.qasm` | CCX | pre={0:0,1:0,2:0} → post same | — |
| `v06_toffoli_flip.qasm` | X·X·CCX | pre={0:0,…} → post={0:1,1:1,2:1} | — |
| `v07_xx_identity.qasm` | XX | pre={0:0} → post={0:0} | — |
| `v08_cx_swap_target.qasm` | X·CX | pre={0:0,1:0} → post={0:1,1:1} | — |
| `v09_h_superposition.qasm` | H | Test probabilistic: post={0:0} may be False | — |
| `v10_multi_gate_chain.qasm` | XHHX | pre={0:0} → post={0:0} | — |

---

## synthesis/

| File | Target gate | Suggested gate_set |
|---|---|---|
| `syn01_h_target.qasm` | H | {h, cx, s} |
| `syn02_x_target.qasm` | X | {h, cx, s} |
| `syn03_z_target.qasm` | Z | {h, cx, s} |
| `syn04_cx_target.qasm` | CX | {h, cx, s} |
| `syn05_t_target.qasm` | T | {h, cx, t} |
| `syn06_identity_target.qasm` | I | {h, cx, s} |
| `syn07_bell_target.qasm` | Bell prep | {h, cx, s} |
