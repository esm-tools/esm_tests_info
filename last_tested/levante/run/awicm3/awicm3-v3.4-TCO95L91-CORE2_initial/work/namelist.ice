&ice_dyn
    whichevp = 0
    pstar = 30000.0
    ellipse = 2.0
    c_pressure = 20.0
    delta_min = 1e-11
    evp_rheol_steps = 120
    alpha_evp = 250
    beta_evp = 250
    c_aevp = 0.15
    cd_oce_ice = 0.0055
    ice_gamma_fct = 0.5
    ice_diff = 0.0
    theta_io = 0.0
    ice_ave_steps = 1
/

&ice_therm
    sice = 4.0
    iclasses = 7
    new_iclasses = .false.
    h_cutoff = 3.0
    h0 = 0.5
    h0_s = 0.5
    hmin = 0.01
    armin = 0.01
    emiss_ice = 0.97
    emiss_wat = 0.97
    albsn = 0.81
    albsnm = 0.77
    albi = 0.7
    albim = 0.68
    albw = 0.1
    open_water_albedo = 0
    con = 2.1656
    consn = 0.31
    snowdist = .true.
    h_snowscale = 0.0
    c_melt = 0.5
/

&meltpond
    hi_min = 0.1
    hs1 = 0.03
    pndaspect = 0.8
    rfracmin = 0.15
    rfracmax = 1.0
    albpnd = 0.2
    albpnd_frz = 0.36
/
