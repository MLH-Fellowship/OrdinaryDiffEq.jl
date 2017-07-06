immutable ROS3PConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  a21::T
  a31::T
  a32::T
  C21::T
  C31::T
  C32::T
  b1::T
  b2::T
  b3::T
  btilde1::T
  btilde2::T
  btilde3::T
  gamma::T2
  c2::T2
  c3::T2
  d1::T
  d2::T
  d3::T
end

function ROS3PConstantCache(T::Type,T2::Type)
  gamma = T(1/2 + sqrt(3)/6)
  igamma = inv(gamma)
  a21 = T(igamma)
  a31 = T(igamma)
  a32 = T(0)
  C21 = T(-igamma^2)
  tmp = -igamma*(2 - (1/2)*igamma)
  C31 = -igamma*(1-tmp)
  C32 = tmp
  tmp = igamma*(2/3 - (1/6)*igamma)
  b1 = igamma*(1+tmp)
  b2 = tmp
  b3 = (1/3)*igamma
  btilde1 = T(2.113248654051871)
  btilde2 = T(1.000000000000000)
  btilde3 = T(0.4226497308103742)
  c2 = T(1)
  c3 = T(1)
  d1 = T(0.7886751345948129)
  d2 = T(-0.2113248654051871)
  d3 = T(-1.077350269189626)
  ROS3PConstantCache(a21,a31,a32,C21,C31,C32,b1,b2,b3,btilde1,btilde2,btilde3,gamma,c2,c3,d1,d2,d3)
end

immutable Rodas3ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  C21::T
  C31::T
  C32::T
  C41::T
  C42::T
  C43::T
  b1::T
  b2::T
  b3::T
  b4::T
  btilde1::T
  btilde2::T
  btilde3::T
  btilde4::T
  gamma::T2
  c2::T2
  c3::T2
  d1::T
  d2::T
  d3::T
  d4::T
end

function Rodas3ConstantCache(T::Type,T2::Type)
  gamma = T(1//2)
  a21 = T(0)
  a31 = T(2)
  a32 = T(0)
  a41 = T(2)
  a42 = T(0)
  a43 = T(1)
  C21 = T(4)
  C31 = T(1)
  C32 = T(-1)
  C41 = T(1)
  C42 = T(-1)
  C43 = T(-8//3)
  b1 = T(2)
  b2 = T(0)
  b3 = T(1)
  b4 = T(1)
  btilde1 = T(0.0)
  btilde2 = T(0.0)
  btilde3 = T(0.0)
  btilde4 = T(1.0)
  c2 = T(0.0)
  c3 = T(1.0)
  c4 = T(1.0)
  d1 = T(1//2)
  d2 = T(3//2)
  d3 = T(0)
  d4 = T(0)
  Rodas3ConstantCache(a21,a31,a32,a41,a42,a43,C21,C31,C32,C41,C42,C43,b1,b2,b3,b4,btilde1,btilde2,btilde3,btilde4,gamma,c2,c3,d1,d2,d3,d4)
end

immutable Ros4ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  a21::T
  a31::T
  a32::T
  C21::T
  C31::T
  C32::T
  C41::T
  C42::T
  C43::T
  b1::T
  b2::T
  b3::T
  b4::T
  btilde1::T
  btilde2::T
  btilde3::T
  btilde4::T
  gamma::T2
  c2::T2
  c3::T2
  d1::T
  d2::T
  d3::T
  d4::T
end

function RosShamp4ConstantCache(T::Type,T2::Type)
  a21=T(2)
  a31=T(48//25)
  a32=T(6//25)
  C21=T(-8)
  C31=T(372//25)
  C32=T(12//5)
  C41=T(-112//125)
  C42=T(-54//125)
  C43=T(-2//5)
  b1=T(19//9)
  b2=T(1//2)
  b3=T(25//108)
  b4=T(125//108)
  btilde1=T(17//54)
  btilde2=T(7//36)
  btilde3=T(0)
  btilde4=T(125//108)
  gamma=T2(1//2)
  c2= T2(1)
  c3= T2(3//5)
  d1=T( 1//2)
  d2=T(-3//2)
  d3=T( 2.42)
  d4=T( 0.116)
  Ros4ConstantCache(a21,a31,a32,C21,C31,C32,C41,C42,C43,b1,b2,b3,b4,btilde1,btilde2,btilde3,btilde4,gamma,c2,c3,d1,d2,d3,d4)
end

function Veldd4ConstantCache(T::Type,T2::Type)
  a21= T(2.000000000000000)
  a31= T(4.812234362695436)
  a32= T(4.578146956747842)
  C21=-T(5.333333333333331)
  C31= T(6.100529678848254)
  C32= T(1.804736797378427)
  C41=-T(2.540515456634749)
  C42=-T(9.443746328915205)
  C43=-T(1.988471753215993)
  b1= T(4.289339254654537)
  b2= T(5.036098482851414)
  b3= T(0.6085736420673917)
  b4= T(1.355958941201148)
  btilde1= T(2.175672787531755)
  btilde2= T(2.950911222575741)
  btilde3=-T(.7859744544887430)
  btilde4=-T(1.355958941201148)
  gamma= T2(0.2257081148225682)
  c2= T2(0.4514162296451364)
  c3= T2(0.8755928946018455)
  d1= T(0.2257081148225682)
  d2=-T(0.04599403502680582)
  d3= T(0.5177590504944076)
  d4=-T(0.03805623938054428)
  Ros4ConstantCache(a21,a31,a32,C21,C31,C32,C41,C42,C43,b1,b2,b3,b4,btilde1,btilde2,btilde3,btilde4,gamma,c2,c3,d1,d2,d3,d4)
end

function Velds4ConstantCache(T::Type,T2::Type)
  a21= T(2)
  a31= T(7//4)
  a32= T(1//4)
  C21=-T(8)
  C31=-T(8)
  C32=-T(1)
  C41= T(1//2)
  C42=-T(1//2)
  C43= T(2)
  b1= T(4//3)
  b2= T(2//3)
  b3=-T(4//3)
  b4= T(4//3)
  btilde1=-T(1//3)
  btilde2=-T(1//3)
  btilde3=-T(0)
  btilde4=-T(4//3)
  gamma= T2(1//2)
  c2= T2(1)
  c3= T2(1//2)
  d1= T(1//2)
  d2=-T(3//2)
  d3=-T(3//4)
  d4= T(1//4)
  Ros4ConstantCache(a21,a31,a32,C21,C31,C32,C41,C42,C43,b1,b2,b3,b4,btilde1,btilde2,btilde3,btilde4,gamma,c2,c3,d1,d2,d3,d4)
end

function GRK4TConstantCache(T::Type,T2::Type)
  a21= T(2)
  a31= T(4.524708207373116)
  a32= T(4.163528788597648)
  C21=-T(5.071675338776316)
  C31= T(6.020152728650786)
  C32= T(0.1597506846727117)
  C41=-T(1.856343618686113)
  C42=-T(8.505380858179826)
  C43=-T(2.084075136023187)
  b1= T(3.957503746640777)
  b2= T(4.624892388363313)
  b3= T(0.6174772638750108)
  b4= T(1.282612945269037)
  btilde1= T(2.302155402932996)
  btilde2= T(3.073634485392623)
  btilde3=-T(0.8732808018045032)
  btilde4=-T(1.282612945269037)
  gamma= T2(0.231)
  c2= T2(0.462)
  c3= T2(0.8802083333333334)
  d1= T(0.2310000000000000)
  d2=-T(0.03962966775244303)
  d3= T(0.5507789395789127)
  d4=-T(0.05535098457052764)
  Ros4ConstantCache(a21,a31,a32,C21,C31,C32,C41,C42,C43,b1,b2,b3,b4,btilde1,btilde2,btilde3,btilde4,gamma,c2,c3,d1,d2,d3,d4)
end

function GRK4AConstantCache(T::Type,T2::Type)
  a21= T(1.108860759493671)
  a31= T(2.377085261983360)
  a32= T(0.1850114988899692)
  C21=-T(4.920188402397641)
  C31= T(1.055588686048583)
  C32= T(3.351817267668938)
  C41= T(3.846869007049313)
  C42= T(3.427109241268180)
  C43=-T(2.162408848753263)
  b1= T(1.845683240405840)
  b2= T(0.1369796894360503)
  b3= T(0.7129097783291559)
  b4= T(0.6329113924050632)
  btilde1= T(0.04831870177201765)
  btilde2=-T(0.6471108651049505)
  btilde3= T(0.2186876660500240)
  btilde4=-T(0.6329113924050632)
  gamma= T2(0.3950000000000000)
  c2= T2(0.4380000000000000)
  c3= T2(0.8700000000000000)
  d1= T(0.3950000000000000)
  d2=-T(0.3726723954840920)
  d3= T(0.06629196544571492)
  d4= T(0.4340946962568634)
  Ros4ConstantCache(a21,a31,a32,C21,C31,C32,C41,C42,C43,b1,b2,b3,b4,btilde1,btilde2,btilde3,btilde4,gamma,c2,c3,d1,d2,d3,d4)
end

function Ros4LStabConstantCache(T::Type,T2::Type)
  a21= T(2.000000000000000)
  a31= T(1.867943637803922)
  a32= T(0.2344449711399156)
  C21=-T(7.137615036412310)
  C31= T(2.580708087951457)
  C32= T(0.6515950076447975)
  C41=-T(2.137148994382534)
  C42=-T(0.3214669691237626)
  C43=-T(0.6949742501781779)
  b1= T(2.255570073418735)
  b2= T(0.2870493262186792)
  b3= T(0.4353179431840180)
  b4= T(1.093502252409163)
  btilde1=-T(0.2815431932141155)
  btilde2=-T(0.07276199124938920)
  btilde3=-T(0.1082196201495311)
  btilde4=-T(1.093502252409163)
  gamma= T2(0.5728200000000000)
  c2= T2(1.145640000000000)
  c3= T2(0.6552168638155900)
  d1= T(0.5728200000000000)
  d2=-T(1.769193891319233)
  d3= T(0.7592633437920482)
  d4=-T(0.1049021087100450)
  Ros4ConstantCache(a21,a31,a32,C21,C31,C32,C41,C42,C43,b1,b2,b3,b4,btilde1,btilde2,btilde3,btilde4,gamma,c2,c3,d1,d2,d3,d4)
end

immutable RodasConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  a51::T
  a52::T
  a53::T
  a54::T
  C21::T
  C31::T
  C32::T
  C41::T
  C42::T
  C43::T
  C51::T
  C52::T
  C53::T
  C54::T
  C61::T
  C62::T
  C63::T
  C64::T
  C65::T
  gamma::T2
  c2::T2
  c3::T2
  c4::T2
  d1::T
  d2::T
  d3::T
  d4::T
  h21::T
  h22::T
  h23::T
  h24::T
  h25::T
  h31::T
  h32::T
  h33::T
  h34::T
  h35::T
end

function Rodas4ConstantCache(T::Type,T2::Type)
  gamma=T(1//4)
  #BET2P=0.0317D0
  #BET3P=0.0635D0
  #BET4P=0.3438D0
  a21= T(1.544000000000000)
  a31= T(0.9466785280815826)
  a32= T(0.2557011698983284)
  a41= T(3.314825187068521)
  a42= T(2.896124015972201)
  a43= T(0.9986419139977817)
  a51= T(1.221224509226641)
  a52= T(6.019134481288629)
  a53= T(12.53708332932087)
  a54=-T(0.6878860361058950)
  C21=-T(5.668800000000000)
  C31=-T(2.430093356833875)
  C32=-T(0.2063599157091915)
  C41=-T(0.1073529058151375)
  C42=-T(9.594562251023355)
  C43=-T(20.47028614809616)
  C51= T(7.496443313967647)
  C52=-T(10.24680431464352)
  C53=-T(33.99990352819905)
  C54= T(11.70890893206160)
  C61= T(8.083246795921522)
  C62=-T(7.981132988064893)
  C63=-T(31.52159432874371)
  C64= T(16.31930543123136)
  C65=-T(6.058818238834054)

  c2=T2(0.386)
  c3=T2(0.21)
  c4=T2(0.63)

  d1= T(0.2500000000000000)
  d2=-T(0.1043000000000000)
  d3= T(0.1035000000000000)
  d4=-T(0.03620000000000023)

  h21= T(10.12623508344586)
  h22=-T(7.487995877610167)
  h23=-T(34.80091861555747)
  h24=-T(7.992771707568823)
  h25= T(1.025137723295662)
  h31=-T(0.6762803392801253)
  h32= T(6.087714651680015)
  h33= T(16.43084320892478)
  h34= T(24.76722511418386)
  h35=-T(6.594389125716872)

  RodasConstantCache(a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,
                    C21,C31,C32,C41,C42,C43,C51,C52,C53,C54,C61,C62,C63,C64,C65,
                    gamma,c2,c3,c4,d1,d2,d3,d4,
                    h21,h22,h23,h24,h25,h31,h32,h33,h34,h35)
end

function Rodas42ConstantCache(T::Type,T2::Type)
  gamma= T(1//4)
  #BET2P=0.0317D0
  #BET3P=0.0047369D0
  #BET4P=0.3438D0
  a21= T(1.402888400000000)
  a31= T(0.6581212688557198)
  a32=-T(1.320936088384301)
  a41= T(7.131197445744498)
  a42= T(16.02964143958207)
  a43=-T(5.561572550509766)
  a51= T(22.73885722420363)
  a52= T(67.38147284535289)
  a53=-T(31.21877493038560)
  a54= T(0.7285641833203814)
  C21=-T(5.104353600000000)
  C31=-T(2.899967805418783)
  C32= T(4.040399359702244)
  C41=-T(32.64449927841361)
  C42=-T(99.35311008728094)
  C43= T(49.99119122405989)
  C51=-T(76.46023087151691)
  C52=-T(278.5942120829058)
  C53= T(153.9294840910643)
  C54= T(10.97101866258358)
  C61=-T(76.29701586804983)
  C62=-T(294.2795630511232)
  C63= T(162.0029695867566)
  C64= T(23.65166903095270)
  C65=-T(7.652977706771382)
  c2=T2(0.3507221)
  c3=T2(0.2557041)
  c4=T2(0.6817790)
  d1= T(0.2500000000000000)
  d2=-T(0.06902209999999998)
  d3=-T(0.0009671999999999459)
  d4=-T(0.08797900000000025)

  h21=-T(38.71940424117216)
  h22=-T(135.8025833007622)
  h23= T(64.51068857505875)
  h24=-T(4.192663174613162)
  h25=-T(2.531932050335060)
  h31=-T(14.99268484949843)
  h32=-T(76.30242396627033)
  h33= T(58.65928432851416)
  h34= T(16.61359034616402)
  h35=-T(0.6758691794084156)

  RodasConstantCache(a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,
                    C21,C31,C32,C41,C42,C43,C51,C52,C53,C54,C61,C62,C63,C64,C65,
                    gamma,c2,c3,c4,d1,d2,d3,d4,
                    h21,h22,h23,h24,h25,h31,h32,h33,h34,h35)
end

function Rodas4PConstantCache(T::Type,T2::Type)
  gamma = T(1//4)
	#BET2P=0.D0
	#BET3P=c3*c3*(c3/6.d0-GAMMA/2.d0)/(GAMMA*GAMMA)
  #BET4P=0.3438D0
  a21= T(3)
  a31= T(1.831036793486759)
  a32= T(0.4955183967433795)
  a41= T(2.304376582692669)
  a42=-T(0.05249275245743001)
  a43=-T(1.176798761832782)
  a51=-T(7.170454962423024)
  a52=-T(4.741636671481785)
  a53=-T(16.31002631330971)
  a54=-T(1.062004044111401)
  C21=-T(12)
  C31=-T(8.791795173947035)
  C32=-T(2.207865586973518)
  C41= T(10.81793056857153)
  C42= T(6.780270611428266)
  C43= T(19.53485944642410)
  C51= T(34.19095006749676)
  C52= T(15.49671153725963)
  C53= T(54.74760875964130)
  C54= T(14.16005392148534)
  C61= T(34.62605830930532)
  C62= T(15.30084976114473)
  C63= T(56.99955578662667)
  C64= T(18.40807009793095)
  C65=-T(5.714285714285717)
  c2=T2(3*gamma)
  c3=T2(0.21)
  c4=T2(0.63)
  d1=T( 0.2500000000000000)
  d2=T(-0.5000000000000000)
  d3=T(-0.0235040000000000)
  d4=T(-0.0362000000000000)

  h21= T(25.09876703708589)
  h22= T(11.62013104361867)
  h23= T(28.49148307714626)
  h24=-T(5.664021568594133)
  h25= T(0)
  h31= T(1.638054557396973)
  h32=-T(0.7373619806678748)
  h33= T(8.477918219238990)
  h34= T(15.99253148779520)
  h35=-T(1.882352941176471)

  RodasConstantCache(a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,
                    C21,C31,C32,C41,C42,C43,C51,C52,C53,C54,C61,C62,C63,C64,C65,
                    gamma,c2,c3,c4,d1,d2,d3,d4,
                    h21,h22,h23,h24,h25,h31,h32,h33,h34,h35)
end

immutable Rosenbrock5ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  a51::T
  a52::T
  a53::T
  a54::T
  a61::T
  a62::T
  a63::T
  a64::T
  a65::T
  a71::T
  a72::T
  a73::T
  a74::T
  a75::T
  a76::T
  a81::T
  a82::T
  a83::T
  a84::T
  a85::T
  a86::T
  a87::T
  C21::T
  C31::T
  C32::T
  C41::T
  C42::T
  C43::T
  C51::T
  C52::T
  C53::T
  C54::T
  C61::T
  C62::T
  C63::T
  C64::T
  C65::T
  C71::T
  C72::T
  C73::T
  C74::T
  C75::T
  C76::T
  C81::T
  C82::T
  C83::T
  C84::T
  C85::T
  C86::T
  C87::T
  gamma::T2
  c2::T2
  c3::T2
  c4::T2
  c5::T2
  c6::T2
  c7::T2
  c8::T2
  b1::T
  b2::T
  b3::T
  b4::T
  b5::T
  b6::T
  b7::T
  b8::T
  d1::T
  d2::T
  d3::T
  d4::T
  d5::T
  d6::T
  d7::T
  d8::T
end

function Rosenbrock5ConstantCache(T::Type,T2::Type)
  gamma = T(.19)
  a21 = T(2.0)
  a31 = 3.040894194418781
  a32 = 1.041747909077569
  a41 = 2.576417536461461
  a42 = 1.622083060776640
  a43 = -.9089668560264532
  a51 = 2.760842080225597
  a52 = 1.446624659844071
  a53 = -.3036980084553738
  a54 = .2877498600325443
  a61 = -14.09640773051259
  a62 = 6.925207756232704
  a63 = -41.47510893210728
  a64 = 2.343771018586405
  a65 = 24.13215229196062
  a71 = -14.09640773051259
  a72 = 6.925207756232704
  a73 = -41.47510893210728
  a74 = 2.343771018586405
  a75 = 24.13215229196062
  a76 = T(1)
  a81 = -14.09640773051259
  a82 = 6.925207756232704
  a83 = -41.47510893210728
  a84 = 2.343771018586405
  a85 = 24.13215229196062
  a86 = T(1)
  a87 = T(1)
  C21 = -10.31323885133993
  C31 = -21.04823117650003
  C32 = -7.234992135176716
  C41 = 32.22751541853323
  C42 = -4.943732386540191
  C43 = 19.44922031041879
  C51 = -20.69865579590063
  C52 = -8.816374604402768
  C53 = 1.260436877740897
  C54 = -.7495647613787146
  C61 = -46.22004352711257
  C62 = -17.49534862857472
  C63 = -289.6389582892057
  C64 = 93.60855400400906
  C65 = 318.3822534212147
  C71 = 34.20013733472935
  C72 = -14.15535402717690
  C73 = 57.82335640988400
  C74 = 25.83362985412365
  C75 = 1.408950972071624
  C76 = -6.551835421242162
  C81 = 42.57076742291101
  C82 = -13.80770672017997
  C83 = 93.98938432427124
  C84 = 18.77919633714503
  C85 = -31.58359187223370
  C86 = -6.685968952921985
  C87 = -5.810979938412932
  c2 = T(-gamma/2)
  c3 = T(0)
  c4 = T(1//6)
  b1 = -14.09640773051259
  b2 = 6.925207756232704
  b3 = -41.47510893210728
  b4 = 2.343771018586405
  b5 = 24.13215229196062
  b6 = T(1)
  b7 = T(1)
  b8 = T(1)

  h22 = T(1/2)

  Rosenbrock5ConstantCache(a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,
                    a61,a62,a63,a64,a65,a71,a72,a73,a74,a75,a76,a81,
                    a82,a83,a84,a85,a86,a87,
                    C21,C31,C32,C41,C42,C43,C51,C52,C53,C54,C61,C62,C63,C64,C65,
                    gamma,c2,c3,c4,d1,d2,d3,d4,
                    h21,h22,h23,h24,h25,h31,h32,h33,h34,h35)
end
