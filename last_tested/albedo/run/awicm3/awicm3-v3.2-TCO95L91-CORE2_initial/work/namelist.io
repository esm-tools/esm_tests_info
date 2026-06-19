&diag_list
    ldiag_solver = .false.
    lcurt_stress_surf = .false.
    ldiag_curl_vel3 = .false.
    ldiag_ri = .false.
    ldiag_turbflux = .false.
    ldiag_salt3d = .false.
    ldiag_dmoc = .false.
    ldiag_dvd = .false.
    ldiag_forc = .false.
    ldiag_extflds = .false.
/

&nml_general
    io_listsize = 100
    vec_autorotate = .false.
/

&nml_list
    io_list = 'sst', 1, 'd', 4
/
