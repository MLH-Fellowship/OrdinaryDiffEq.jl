@cache struct MagnusMidpointCache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end

function alg_cache(alg::MagnusMidpoint,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  MagnusMidpointCache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct MagnusMidpointConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::MagnusMidpoint,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  MagnusMidpointConstantCache()
end

@cache struct MagnusNC8Cache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end

function alg_cache(alg::MagnusNC8,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  MagnusNC8Cache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct MagnusNC8ConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::MagnusNC8,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  MagnusNC8ConstantCache()
end

@cache struct MagnusGL4Cache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end

function alg_cache(alg::MagnusGL4,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  MagnusGL4Cache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct MagnusGL4ConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::MagnusGL4,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  MagnusGL4ConstantCache()
end

@cache struct MagnusGL8Cache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end

function alg_cache(alg::MagnusGL8,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  MagnusGL8Cache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct MagnusGL8ConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::MagnusGL8,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  MagnusGL8ConstantCache()
end

@cache struct MagnusNC6Cache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end


function alg_cache(alg::MagnusNC6,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  MagnusNC6Cache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct MagnusNC6ConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::MagnusNC6,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  MagnusNC6ConstantCache()
end

@cache struct MagnusGL6Cache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end

function alg_cache(alg::MagnusGL6,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  MagnusGL6Cache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct MagnusGL6ConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::MagnusGL6,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  MagnusGL6ConstantCache()
end
@cache struct MagnusGauss4Cache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end

function alg_cache(alg::MagnusGauss4,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  MagnusGauss4Cache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct MagnusGauss4ConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::MagnusGauss4,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  MagnusGauss4ConstantCache()
end

@cache struct LieEulerCache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end

function alg_cache(alg::LieEuler,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  LieEulerCache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct LieEulerConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::LieEuler,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  LieEulerConstantCache()
end

@cache struct CayleyEulerCache{uType,rateType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  tmp::uType
  V::uType
  fsalfirst::rateType
  k::rateType
end

function alg_cache(alg::CayleyEuler,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  CayleyEulerCache(u,uprev,similar(u),similar(u),fsalfirst,k)
end

struct CayleyEulerConstantCache <: OrdinaryDiffEqConstantCache
end

alg_cache(alg::CayleyEuler,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
  tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false}) = CayleyEulerConstantCache()

@cache struct MagnusLeapfrogCache{uType,rateType,WType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  uprev2::uType
  tmp::uType
  fsalfirst::rateType
  W::WType
  k::rateType
end

function alg_cache(alg::MagnusLeapfrog,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  W = false .* vec(rate_prototype) .* vec(rate_prototype)' # uEltype?
  k = zero(rate_prototype); fsalfirst = zero(rate_prototype)
  MagnusLeapfrogCache(u,uprev,uprev2,similar(u),fsalfirst,W,k)
end

struct MagnusLeapfrogConstantCache <: OrdinaryDiffEqConstantCache
end

function alg_cache(alg::MagnusLeapfrog,u,rate_prototype,uEltypeNoUnits,
                   tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false})
  MagnusLeapfrogConstantCache()
end

struct LinearExponentialConstantCache <: OrdinaryDiffEqConstantCache end

alg_cache(alg::LinearExponential,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
  tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{false}) = LinearExponentialConstantCache()

@cache struct LinearExponentialCache{uType,rateType,KsType} <: OrdinaryDiffEqMutableCache
  u::uType
  uprev::uType
  tmp::uType
  rtmp::rateType
  KsCache::KsType # different depending on alg.krylov
end

function alg_cache(alg::LinearExponential,u,rate_prototype,uEltypeNoUnits,uBottomEltypeNoUnits,
  tTypeNoUnits,uprev,uprev2,f,t,dt,reltol,p,calck,::Val{true})
  tmp = similar(u)
  rtmp = zero(rate_prototype)
  n = length(u)
  T = eltype(u)
  m = min(alg.m, n)

  if alg.krylov == :off
    KsCache = nothing
  elseif alg.krylov == :simple
    Ks = KrylovSubspace{T}(n, m)
    expv_cache = ExpvCache{T}(m)
    KsCache = (Ks, expv_cache)
  elseif alg.krylov == :adaptive
    KsCache = _phiv_timestep_caches(u, m, 0)
  else
    throw(ArgumentError("Unknown krylov setting $(alg.krylov). Can be :off, :simple or :adaptive."))
  end
  LinearExponentialCache(u,uprev,tmp,rtmp,KsCache)
end
