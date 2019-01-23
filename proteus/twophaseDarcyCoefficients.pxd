# A type of -*- python -*- file

cdef extern from "twophaseDarcyCoefficients.h":
    cdef int twophaseDarcy_fc_sd_het_matType[PSK, DENSITY_W, DENSITY_N](int nSimplex,
                                                                        int nPointsPerSimplex,
                                                                        int nSpace,
                                                                        int nParams,                   
                                                                        const int* rowptr,
                                                                        const int* colind,
                                                                        const int* materialTypes,
                                                                        double muw,
                                                                        double mun,
                                                                        const double* omega,
                                                                        const double* Kbar, #/*now has to be tensor*/
                                                                        double b,
                                                                        const double* rwork_psk, const int* iwork_psk,
                                                                        const double* rwork_psk_tol,
                                                                        const double* rwork_density_w,
                                                                        const double* rwork_density_n,
                                                                        const double* g,
                                                                        const double* x,
                                                                        const double* sw,
                                                                        const double* psiw,
                                                                        double* mw,
                                                                        double* dmw_dsw,
                                                                        double* dmw_dpsiw,
                                                                        double* mn,
                                                                        double* dmn_dsw,
                                                                        double* dmn_dpsiw,
                                                                        double* psin,
                                                                        double* dpsin_dsw,
                                                                        double* dpsin_dpsiw,
                                                                        double* phi_psiw,
                                                                        double* dphi_psiw_dpsiw,
                                                                        double* phi_psin,
                                                                        double* dphi_psin_dpsiw,
                                                                        double* dphi_psin_dsw,
                                                                        double* aw,
                                                                        double* daw_dsw,
                                                                        double* daw_dpsiw,
                                                                        double* an,
                                                                        double* dan_dsw,
                                                                        double* dan_dpsiw)
    cdef int twophaseDarcy_fc_sd_het_matType_nonPotentialForm[PSK, DENSITY_W, DENSITY_N](int compressibilityFlag,
                                                                                         int nSimplex,
                                                                                         int nPointsPerSimplex,
                                                                                         int nSpace,
                                                                                         int nParams,                  
                                                                                         const int* rowptr,
                                                                                         const int* colind,
                                                                                         const int* materialTypes,
                                                                                         double muw,
                                                                                         double mun,
                                                                                         const double* omega,
                                                                                         const double* Kbar, #/*now has to be tensor*/
                                                                                         double b,
                                                                                         const double* rwork_psk, const int* iwork_psk,
                                                                                         const double* rwork_psk_tol,
                                                                                         const double* rwork_density_w,
                                                                                         const double* rwork_density_n,
                                                                                         const double* g,
                                                                                         const double* x,
                                                                                         const double* sw,
                                                                                         const double* psiw,
                                                                                         double* mw,
                                                                                         double* dmw_dsw,
                                                                                         double* dmw_dpsiw,
                                                                                         double* mn,
                                                                                         double* dmn_dsw,
                                                                                         double* dmn_dpsiw,
                                                                                         double* psin,
                                                                                         double* dpsin_dsw,
                                                                                         double* dpsin_dpsiw,
                                                                                         double* phi_psiw,
                                                                                         double* dphi_psiw_dpsiw,
                                                                                         double* phi_psin,
                                                                                         double* dphi_psin_dpsiw,
                                                                                         double* dphi_psin_dsw,
                                                                                         double* fw,
                                                                                         double* dfw_dsw,
                                                                                         double* dfw_dpsiw,
                                                                                         double* fn,
                                                                                         double* dfn_dsw,
                                                                                         double* dfn_dpsiw,
                                                                                         double* aw,
                                                                                         double* daw_dsw,
                                                                                         double* daw_dpsiw,
                                                                                         double* an,
                                                                                         double* dan_dsw,
                                                                                         double* dan_dpsiw)
    cdef int twophaseDarcy_vol_frac(int nSimplex,
                                    int nPointsPerSimplex,
                                    const int* materialTypes,
                                    const double* omega,
                                    const double* sw,
                                    double * vol_frac_w,
                                    double * vol_frac_n)
    cdef int twophaseDarcy_fc_pp_sd_het_matType[PSK, DENSITY_W, DENSITY_N](int nSimplex,
                                                                           int nPointsPerSimplex,
                                                                           int nSpace,
                                                                           int nParams,                
                                                                           const int* rowptr,
                                                                           const int* colind,
                                                                           const int* materialTypes,
                                                                           double muw,
                                                                           double mun,
                                                                           const double* omega,
                                                                           const double* Kbar, #/*now has to be tensor*/
                                                                           double b,
                                                                           const double* rwork_psk, const int* iwork_psk,
                                                                           const double* rwork_psk_tol,
                                                                           const double* rwork_density_w,
                                                                           const double* rwork_density_n,
                                                                           const double* g,
                                                                           const double* x,
                                                                           const double* psiw,
                                                                           const double* psic,
                                                                           double *sw,
                                                                           double* mw,
                                                                           double* dmw_dpsiw,
                                                                           double* dmw_dpsic,
                                                                           double* mn,
                                                                           double* dmn_dpsiw,
                                                                           double* dmn_dpsic,
                                                                           double* phi_psiw,
                                                                           double* dphi_psiw_dpsiw,
                                                                           double* phi_psin,
                                                                           double* dphi_psin_dpsiw,
                                                                           double* dphi_psin_dpsic,
                                                                           double* aw,
                                                                           double* daw_dpsiw,
                                                                           double* daw_dpsic,
                                                                           double* an,
                                                                           double* dan_dpsiw,
                                                                           double* dan_dpsic)
    cdef int twophaseDarcy_incompressible_split_sd_saturation_het_matType[PSK](int nSimplex,
                                                                               int nPointsPerSimplex,
                                                                               int nSpace,
                                                                               int nParams,
                                                                               const int* rowptr,
                                                                               const int* colind,
                                                                               const int* materialTypes,
                                                                               double muw,
                                                                               double mun,
                                                                               const double* omega,
                                                                               const double* Kbar,
                                                                               double b,
                                                                               double capillaryDiffusionScaling,
                                                                               double advectionScaling,
                                                                               const double* rwork_psk, const int* iwork_psk,
                                                                               const double* rwork_psk_tol,
                                                                               const double* rwork_density_w,
                                                                               const double* rwork_density_n,
                                                                               const double* g,
                                                                               const double* qt,
                                                                               const double* sw,
                                                                               double* m,
                                                                               double* dm,
                                                                               double* phi,
                                                                               double* dphi,
                                                                               double* f,
                                                                               double* df,
                                                                               double* a,
                                                                               double* da)
    cdef int twophaseDarcy_slightCompressible_split_sd_saturation_het_matType[PSK, DENSITY_W](int nSimplex,
                                                                                              int nPointsPerSimplex,
                                                                                              int nSpace,
                                                                                              int nParams,
                                                                                              const int* rowptr,
                                                                                              const int* colind,
                                                                                              const int* materialTypes,
                                                                                              double muw,
                                                                                              double mun,
                                                                                              const double* omega,
                                                                                              const double* Kbar,
                                                                                              double b,
                                                                                              double capillaryDiffusionScaling,
                                                                                              double advectionScaling,
                                                                                              const double* rwork_psk, const int* iwork_psk,
                                                                                              const double* rwork_psk_tol,
                                                                                              const double* rwork_density_w,
                                                                                              const double* rwork_density_n,
                                                                                              const double* g,
                                                                                              const double* qt,
                                                                                              const double* psiw,
                                                                                              const double* sw,
                                                                                              double* m,
                                                                                              double* dm,
                                                                                              double* phi,
                                                                                              double* dphi,
                                                                                              double* f,
                                                                                              double* df,
                                                                                              double* a,
                                                                                              double* da)
    cdef int twophaseDarcy_incompressible_split_sd_pressure_het_matType[PSK](int nSimplex,
                                                                             int nPointsPerSimplex,
                                                                             int nSpace,
                                                                             int nParams,
                                                                             const int* rowptr,
                                                                             const int* colind,
                                                                             const int* materialTypes,
                                                                             double muw,
                                                                             double mun,
                                                                             const double* omega,
                                                                             const double* Kbar,
                                                                             double b,
                                                                             double capillaryDiffusionScaling,
                                                                             const double* rwork_psk, const int* iwork_psk,
                                                                             const double* rwork_psk_tol,
                                                                             const double* rwork_density_w,
                                                                             const double* rwork_density_n,
                                                                             const double* g,
                                                                             const double* sw,
                                                                             const double* grad_psic,
                                                                             double* f,
                                                                             double* a)
    cdef int twophaseDarcy_slightCompressible_split_sd_pressure_het_matType[PSK, DENSITY_W, DENSITY_N](int nSimplex,
                                                                                                       int nPointsPerSimplex,
                                                                                                       int nSpace,
                                                                                                       int nParams,
                                                                                                       const int* rowptr,
                                                                                                       const int* colind,
                                                                                                       const int* materialTypes,
                                                                                                       double muw,
                                                                                                       double mun,
                                                                                                       const double* omega,
                                                                                                       const double* Kbar,
                                                                                                       double b,
                                                                                                       double capillaryDiffusionScaling,
                                                                                                       const double* rwork_psk, const int* iwork_psk,
                                                                                                       const double* rwork_psk_tol,
                                                                                                       const double* rwork_density_w,
                                                                                                       const double* rwork_density_n,
                                                                                                       const double* g,
                                                                                                       const double* sw,
                                                                                                       const double* psiw,
                                                                                                       const double* psin,
                                                                                                       const double* grad_psic,
                                                                                                       double* m,
                                                                                                       double* dm,
                                                                                                       double* f,
                                                                                                       double* a)
    cdef int twophaseDarcy_compressibleN_split_sd_saturation_het_matType[PSK, DENSITY_N](int nSimplex,
                                                                                         int nPointsPerSimplex,
                                                                                         int nSpace,
                                                                                         int nParams,
                                                                                         const int* rowptr,
                                                                                         const int* colind,
                                                                                         const int* materialTypes,
                                                                                         double muw,
                                                                                         double mun,
                                                                                         const double* omega,
                                                                                         const double* Kbar,
                                                                                         double b,
                                                                                         double capillaryDiffusionScaling,
                                                                                         double advectionScaling,
                                                                                         const double* rwork_psk, const int* iwork_psk,
                                                                                         const double* rwork_psk_tol,
                                                                                         const double* rwork_density_w,
                                                                                         const double* rwork_density_n,
                                                                                         const double* g,
                                                                                         const double* qt,
                                                                                         const double* psiw,
                                                                                         const double* sw,
                                                                                         double* m,
                                                                                         double* dm,
                                                                                         double* phi,
                                                                                         double* dphi,
                                                                                         double* f,
                                                                                         double* df,
                                                                                         double* a,
                                                                                         double* da)
    cdef int twophaseDarcy_compressibleN_split_sd_pressure_het_matType[PSK, DENSITY_N](int nSimplex,
                                                                                                     int nPointsPerSimplex,
                                                                                       int nSpace,
                                                                                       int nParams,
                                                                                       const int* rowptr,
                                                                                       const int* colind,
                                                                                       const int* materialTypes,
                                                                                       double muw,
                                                                                       double mun,
                                                                                       const double* omega,
                                                                                       const double* Kbar,
                                                                                       double b,
                                                                                       double capillaryDiffusionScaling,
                                                                                       const double* rwork_psk, const int* iwork_psk,
                                                                                       const double* rwork_psk_tol,
                                                                                       const double* rwork_density_w,
                                                                                       const double* rwork_density_n,
                                                                                       const double* g,
                                                                                       const double* sw,
                                                                                       const double* psiw,
                                                                                       const double* psin,
                                                                                       const double* grad_psic,
                                                                                       double* m,
                                                                                       double* dm,
                                                                                       double* f,
                                                                                       double* a)
    cdef int twophaseDarcy_incompressible_split_pp_sd_saturation_het_matType[PSK](int nSimplex,
                                                                                                int nPointsPerSimplex,
                                                                                  int nSpace,
                                                                                  int nParams,
                                                                                  const int* rowptr,
                                                                                  const int* colind,
                                                                                  const int* materialTypes,
                                                                                  double muw,
                                                                                  double mun,
                                                                                  const double* omega,
                                                                                  const double* Kbar,
                                                                                  double b,
                                                                                  double capillaryDiffusionScaling,
                                                                                  double advectionScaling,
                                                                                  const double* rwork_psk, const int* iwork_psk,
                                                                                  const double* rwork_psk_tol,
                                                                                  const double* rwork_density_w,
                                                                                  const double* rwork_density_n,
                                                                                  const double* g,
                                                                                  const double* qt,
                                                                                  const double* u,#//psic u >= 0, sn u < 0
                                                                                  double* sw,
                                                                                  double* m,
                                                                                  double* dm,
                                                                                  double* phi,
                                                                                  double* dphi,
                                                                                  double* f,
                                                                                  double* df,
                                                                                  double* a,
                                                                                  double* da)
    cdef void generateSplineTables[PSK](int nknots,
                                        int startIndex,
                                        int calcFlag, #//0 --- genate tables for f(S_w), 1, generate tables for f(psi_c)
                                        const double* domain,
                                        const double* rwork_psk,
                                        const int* iwork_psk,
                                        const double* rwork_psk_tol,
                                        double* splineTable)
