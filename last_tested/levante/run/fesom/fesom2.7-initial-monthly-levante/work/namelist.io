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
    ldiag_destine = .false.
    ldiag_trflx = .false.
    ldiag_uvw_sqr = .false.
    ldiag_trgrd_xyz = .false.
/

&nml_general
    io_listsize = 120
    vec_autorotate = .false.
    compression_level = 1
/

&nml_list
    io_list = 'sst', 1, 'd', 4, 'ssh', 1, 'd', 4, 'a_ice', 1, 'd', 4
/
