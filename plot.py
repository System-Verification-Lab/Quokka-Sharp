def PlotQuizxbench(figname):
    gpmc_succ_list = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.96, 0.86, 0.6]
    zx_succ_list = [1.0, 1.0, 1.0, 1.0, 1.0, 0.98, 0.98, 0.88, 0.68]
    gpmc_time_list = [32.151, 35.574, 39.223, 42.902, 46.187, 50.334, 54.881, 61.35, 66.428]
    zx_time_list = [4.356875, 8.172083, 14.283, 25.891167, 45.627166, 148.392292, 326.029167, 588.531709, 1219.006]
    fig, (ax1, ax2) = plt.subplots(2) 
    ax1.plot([*np.arange(10, 91, 10)], gpmc_succ_list, label=f'WMC', marker = 'o', color = 'red')
    ax1.plot([*np.arange(10, 91, 10)], zx_succ_list, label=f'ZX', marker = '^', color = 'blue')  
    # box1 = ax1.get_position()
    # ax1.set_position([box1.x0, box1.y0, box1.width*0.9, box1.height * 0.9])
    ax1.legend(loc='upper center', bbox_to_anchor=(0.45, 1.25), ncol=3, fancybox=True, shadow=True)    
    ax1.set(ylabel = "% successful")
    ax2.plot([*np.arange(10, 91, 10)], gpmc_time_list, label=f'WMC', marker = 'o', color = 'red')
    ax2.plot([*np.arange(10, 91, 10)], zx_time_list, label=f'ZX', marker = '^', color = 'blue')      
    # box2 = ax2.get_position()
    # ax2.set_position([box2.x0, box2.y0, box2.width*0.9, box2.height * 0.9])
    # ax2.legend(loc='upper center', bbox_to_anchor=(0.43, 1.2), ncol=3, fancybox=True, shadow=True)    
    ax2.set(ylabel = "time (ms)")
    # ax2.ylabel("time (ms)")
    plt.xlabel('DEPTH')
    plt.savefig('figures/'+ figname +".eps", format='eps')
    plt.show()    
    