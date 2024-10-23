use quizx::hash_graph::*;
use quizx::circuit::*;
use quizx::simplify::*;
use quizx::vec_graph::Graph;
use quizx::decompose::Decomposer;
use std::time::{Duration, Instant};
use std::env;
// use sysinfo::SystemExt;

// use memory_stats::memory_stats;


fn main() -> Result<(), Box<dyn std::error::Error>> {
    // let mut system = sysinfo::System::new_all();
    // system.refresh_all();
    let args: Vec<String> = env::args().collect();
    let f = &args[1];
    let tprep = Instant::now();
    let c = Circuit::from_file(f).expect(&format!("circuit failed to parse: {}", f));
    let mut g: Graph = c.to_graph();
    let qs = c.num_qubits();
    // |00..0> as input
    g.plug_inputs(&vec![BasisElem::Z0; qs]);

    // <1|_qi ⊗ I as output
    // g.plug_output(0, BasisElem::Z0);

    g.plug_outputs(&vec![BasisElem::Z0; qs]);

    // compute norm as <psi|psi>. Doubles T-count!
    g.plug(&g.to_adjoint());

    let tcount = g.tcount();  
    full_simp(&mut g);
    let tzx = Instant::now();
    // println!("Done simplifying in {:.6?}", tzx.duration_since(tprep));

    // do the decomposition, with full_simp called eagerly
    let mut d = Decomposer::new(&g);
    d.use_cats(true);
    d.with_full_simp();
    
    let d = d.decomp_parallel(3);
    let prob = d.scalar;
    let tall = Instant::now();
    println!("P: {}, re(P) ~ {}, tzx: {:.6?}, tall: {:.6?}", prob, prob.float_value().re, tall.duration_since(tzx), tall.duration_since(tprep));

    // if let Some(usage) = memory_stats() {
    //     println!("Current physical memory usage: {}", usage.physical_mem);
    //     println!("Current virtual memory usage: {}", usage.virtual_mem);
    // } else {
    //     println!("Couldn't get the current memory usage :(");
    // }
    // And finally the RAM and SWAP information:
    // println!("total memory: {} KB", system.get_total_memory());
    // println!("used memory : {} KB", system.get_used_memory());


    Ok(())
}