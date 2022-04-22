local L1UI, E, L, V, P, G = unpack(select(2, ...))

local _G = _G
local _detalhes = _G._detalhes
local IsAddOnLoaded = IsAddOnLoaded

-- Details Profile
function L1UI:Setup_Details()
	if not IsAddOnLoaded('Details') then return end

	-- Wipe *spell_pool, npcid_pool, encounter_spell_pool, spell_school_cache
	L1UI:Cleanup_Cache('details')

	-- Profile name
	local name = 'Luckyone v'..L1UI.Version

	-- Profile strings
	local retail = 'T3xBZXTn2A(BzRT26Mu1yTeeGaK7u7hKILS1ezjVQLtUtvUuBQUPKy5wn7B3TSSYwJ)TVppaGKGKnLvYnxNz2ktnXsQBaqGdoV8CEbGxkU8IlNSAD11Llk4Vw9PI15lwmD2II81txw8W2Q13CB(MTxEWLtMLVA79RlMUUiFbB8T8N4Z3SQyXIz(gDx5MzZZ3MZFp)(12FwSSy9npYFBE(D53uGFB7Ltwx9W0RZNxmTCjgTtfxob)YPXxEA0EX873SfpO7kwpDw1YRlVHpXRXdbFW9RWtOyZLxD5K)J7lN9XPZl2wmBBz1s(rRl2uSDkMuZMolF2Tf8ZwwnnFrX6T2(mVCt(vlkME3JBVTC2053V8McxxVFtX08LL3LZXAA(SzflCZvstwTi)XI1BMMdsWnRRUFvDp2mBD1IfUh9QQ1BNscZ0fLl)4g3hEhiRwQ2DtVED1DtxILLJwHN193nTHQxD3v5BNUTeF9PIiq4(uXs83RZN9XI1KauSKZ85CyVUcF1SQfvRDup()JT)R0(Vk(VyQJ5rbMrL3C7w8jA)he2XO9eE6URZ2FQ4pLCaSpOn3MpV6HlNC6zNEy9hv(l(PP9pVoFwXLtoAD5V8Lp8)5(85RbtWx(WfCxBnxV4x2Cl2Y3wUDHD1J9xYNm5KZ(5lNCfwIZxxTQ)etxpZ01tnTFUPm2vxfinw6r9sugHz0dLZ3El6AsudjyBXNj37LtEzX28YfB(YhMuSUyz52hbB)kUHVzA9mDRL)0TzUTA6d3wD5eW3uKV92PlQUXnj30idm5M1ffl5cTSy58fpEDjFoZZx)XQ15G5ID9Q7V(AiQD)6vy1pzwv1cqprFEeYoKW6LmWtDoF4obqWzsgn8rh4y1a7bOE8dxoF6MI1GXz6Q8143ijyfyoV6Q1fFQ0Yatk2KhQwVyEnNv5gYmT5wlNRviIYjy4pYehLysYsecHwNz0xE9lsmyBPQ6J3H1HL6vVJdj1wHeB)NcozmWFcIlCNj5YjwE2PLBlUB6Ic(5KJLc7UNh3it420sqf28KQbkxUzB(YzfBMExXY7HMjkWJnLQvfwz2bQSMDl(Zcs2RLplwCTNVIs)GPZ24L3VIBMv3VLFC7Jb6kwuELBQXVXsXOsOzGETe)h)q7Wn9QhP2GL5G8KFNvJxx6c2bKT6BOcTTZU1Pdyl4aUkFDO(iYlxVLp9Q73UfSKw1eqbY6hNcEZlpvRABVBk60fz10qfht3(4QIPvRlVPCjynbHemFxNF)ITtV6gOeC1T5K0MeUI3C)QvqRznZXPrbdLDeQLp8efkkpd6t9AygWmK)5AMbzTudxUBlxn1lykHGPVFH6pBuKyLT4(9MlNC4NTtUhYF0kyC)61uP48vKHy7Vz1IU9T6oEWxvnxkMpDSxmOVJRaCt(DR4(VDKs2TcXREwkeDcgovHE9GX7wnOoPvlySvlOxGhsQqVr(cN(9DR6B2ICWnuoJFXM7G40LtoMDJlX3V)85NTCZ79QrFFj1BT592Uu008vFA108nE7KheWS5wjyTpD6Qk728YQ135au84Lh9IuHultJtJvsHolofkIuGN)ZxEuIriJmQ44SOuLqhXVHk4OYlrCQiod)iknvgZVbl)BrFujYKubgRuDIedK9Bi4cqvDpsYF)zRENh8gpijlkYrjS7qyQV9(nEPvRcOT3If2n3oTvlHv5ewH32Y45TDHbPCUvocJhKbxF5rAtQindZwzIotNYfzcSmFlA3uOpAA11En2bQA86dEsMAVsf7o3ulMUV6(wyx2mf0InFSC50z3VzB1D0OhzTbJz5YB20k8YDVhW2l1b7Ka28qjvTrfXqyg8bCqAxcH0m)t0(aT4JafUC512TdAM5CscOjBp2YzpZvITPULHNLYoCNeoCEqatVfcjlSckbd7rwZ3BoIscV)Dh)c)FFs5MTV41TDWnhTmgwGU2DKd4gYbC)4Ql3w)GDAi8etRjuRgQYpdLKwdQJRNISEROcfquw7KObJ0IIRD)YvfBFGqoonQ(PXvf1z4Xg4KGBm61Hq4Kr)kkwenq)iTzSTGdx8P3D87)HQ1fV)nfZlZF)rKD59TQS3B72RRF8H0Hj)FjTt8p27lFW(BY)H9hX)JUADf19fQgxUzr52gQy9A2pO9NFTn45oZVW1(nV)nevE(cSR7Hp0WxzngxnVyHvVfmAc0x2)(YjtOpqBE)(ZkNFWARfp89fRFfbgU3BIPg6hAB9ptqzV)W)93U)Pto(StJIF)lp7SxU)lNGj0cGBCD(7)HZo5L7F(57FYz)W7MS3DX1pVql4UXmW4N7dAAIOUtTnHaQE(kh6OuF6vp478nRZF0ba4Qwdv9SdpeU9b5RpOA98I1F5dXETApT2SghmAe6UY6je(ZVRpdavvHv6mR)swylIqjnBdhLFVrG1kuV8(7UQOrQ58rKI7OPYB1R5J3fN(x(W35zX)ln88)p((acviFhS4axpYVME7ssEihFGu()P4T9t1wffwTXEMNgbV(F)Wzr3z(oOlphnna0D960YIvD91Wl(E9zB)T0qfEp1Za4aeXjjjsTrMkJKw3Bs6OHRdoZwMRWv)b7upQZZMnBNcaPoiw1negjkGZz5BXeZJOSXpCRZRL3advfaVmEgK1J2)Tab7Bm1Xi8q5QIgOgofs217vb2EWI9aIXe)J2ouwJiwqioOTwva(hGZNtlR(DLae(u4zbJYbMnEelEp0M2a33HrXUvDqlEdxZfw4n3mk8M25DhTyOpxnAFAGb3iMCA1YIoQpokjkvRePQOyTXeR1UUIz)yFJC0Vr5zZCiXieMLwH4AqRbk4kxchp3y3qaA67TAQyFXZ9z2q5ZTHQNBdtEUnu)CBO552W0NBdZEUnek(FUT8zV3iE2BoIN9UJ4zV9iEU7pBDWWd1SwoJkRySIauComuU7jXpg4F6xfSzRobgqlNkHqK)CaIRDV5utuhHzRD6Jm6eTqKbVTInPWpmkrjhokYMrHUrmX6zfqgmj)tyQILfTGJN)KxE4f7F8jtMo5I9V4Dtoy)ZN(2tE3Ro(0P)aqe9J1GIhVzV9LVDsJ3TCGF6w6994V)MQ5wfzBkUbRWTxuhbe(LhzntS)mGXdFv(IV8H3cdg8pMbtg3L)5jUGqF88nUagWGOCrnyeoc7dxiCHLJ)1KMaOY)6h(QaIEYL7KdF1Bo80l(2Uqe)(VqCBVFtxfX)wxfB9EK9m2w2oWeRpKnhuhJbmXHi9MWyr6D6VByfErSXpDWys1h1r6TVKMQrslI(R3(8CHQWAbUR6OQLlkGCOliSwSjnZikOdR9S7W(RveToKdG0pLXgzWy9idcqtMsSygcWQE8pC2PtE)XN(ttXZQCX0lWuT8UNYXalbpFlwIGU4cOF4d9GamotAqK8vu91aaTlKDMHM)HVZdrh2D)aSwCeLnHlI8zwnOJ75W0qFBwT4(BWwojvpa(J1(uzz57ddjyNOOuU0fEfsN5OoD6ML5RSbWRwvo4H(OnKGwiB1XJPb7fZp32QP2VLSeKwAzNVQw76v(iw12J2aJ7cxNkvPIX)pwejvQmcJcyPy06EHrksJZKjjzzrXo7bmOCRQkxIr9GZU4IZEZ5h)Qx3lyYnXARjMqTpDgQFi787oSpFmpdOUyNytlv9N6fGVP2u30jkFVq24A98InyjG9nFaz7s9BCoforFfHyUTAvaMFN53UrpJcHt3WCr1L5WU95Jho5(TTZcPW)O7cZV7GgWJ09l6oFTPvQAt5S8Q)PpwT21)oeI85EWo)NMFv5IYTLfBS6mzu8lUZ)xyiEa(CTkFLlRcDy3gnKR1(L81ILsOdZOtZQQwpVJ)QIoH13ecH7QgDotSrx37g5rPrXjrXPPctQshBf)u6wjM9AYbWrQmtAsMi1imzjXrk3wLpl7KrWBQPrVPJZ)128t1Yq7uu4ZR2D3dY60aZo1rZ1QfSjRqwz4Lu1(r5yWdWK5SH6Cy6xD6amjcDmaDkYs1XXM4)mDa)xs6agt5ZFMxG)mVa)zEb(Z8c8hxEbI)Z8c8N5f4FPYlWvFT8ca)PKcGCjbZMmTqliaL0D4s3)LNHGDH57pZrWFMJG)mhb)Ruocccn2xnDb)bKJGmFocge4I)zkTaLBED585UAnDqeK)Dma1zFltrq4I6x)uVZk)pICd8hZEY3O8e80zm7FIswqtAa6KEGUjoiiLc)bKSGFfr(B0AX4xFe4DtMTdkLYrJd)OXID0ug9SJdp4a2lllnsPtn)ZC03hwrk1HE)GNzEk()dtm0)5tDWotQr)8gSRSw8uPoyS4S)7sMd(djSUDYX1Zjrp)lwEc6rGKEs3oYtGrym640evgWPH)xlP8RNNGNipM)oMUG2tMf91EJ7avuTggaZXZ7tLBF0kNnD1NSh8GL3dzoWeUy6Mh3ST4ohYalW5xMV(JF5dxCBXDfUnX1LUdO0IfLZTU17oYF84fYDODD8x8dLnYkoq2nB0t(4J2WlVT9mkD9I8BChcVz3sbAigxC3voeUHXidFU9mccJgFUoKhK18XW)ydOHnNciNoW(lw8J7UQAXgNmF)Zkv7HFAzXd1NMiR(NlcQuXK0MdsI0PwA2IQ7Np1FAqBpvNy58XcywfpdEqzGhiupI9S9uFAOIdIIBWr8XRUZFoNG6QcWsSyE9XhAopYD2Jcjnw3gWHzlYVR2E7lsdITtStU7fcLF6YO1EBzXI5BCkfDbVbcw2jXRF3PxC45DJr0EXj(dCi)fLtibd2pV)5NF8zJ146JKJTPNF2RE3HnNKryuoktcBWUEyuXcArEy3EZ(VQTxX1TVT7d6WBp8IVw73ZK0Qj6LN)UJFztpAMi2ULLMsDS7CED2P)ytVAwgYW2VxnPYK4WXV)fV(hp1IYyWeC3DbpKjpXEr4Y4DN(JNcmzdMr7QTV98JpCYfpR9IE73tE9(Vz)t)Q03UDAFOaHqYFEpWWj6HNE4B(7pNv)lpeKQUmU1Bg6qRe9OVVMbA)zT33L(T)j7)YJpDSjw3NX7o9vNF27E7Bpz))EWK7j3FGuL31UNXeRdTEBNJ3Odoh(QOmLO9GscvEnyOBtrBNy4oqnWEAJ)XNk9py1U0aSNXR5zpDnjxjhY5uZ2O8Tj1mqwxvFkSt9TjZQ(A)Zp809N(3p8KtA42fD2HJFcQUQ(5wp16Raq0Wp7BrKQVWEx2PSXKSn10lrC9et2o)F15hEONyCKwaOicSHkX)hG8CrbIUoaOGaIsKosQvQOed)gvBiQ6XgUxw9PdpPHPsUdvdXnhNy)8AGkHbbdlu3DnjkR(iORgkQI9kHWeMEH9Iez6X5WtQ5AsQPSMSXKR117IISoTTXFEWQF6HV7IZ3)KDXG03gHShpHtp3HNCutlsZI4JY2kzSiPEH7(CRq3TvBNvTEjahbNqSEJDHZbaFEUTNzARJgUR)aBiixxLpFM7kCiaTJdmc8Pz1TLZCzmGrjO7jzpE4XmgGiVb(MuFuJtAplRUtqDX8sR7n(WaTzA(DavT9a9VXgscvK)kyW61E9V(2QnUJm7K15ZlTOt0r(1MT6hDNa9hSa4QMx16m510fNTnXURXFTohID3KW2O7Y)8yOUujTxIbQu7wy7YGuvGJBJ)SzZyNWJB71RZVPZ9Brxi7wGAflFC6Mz2aDaFwP)gUyCKVCE(65tTGzVQ35YNyeDhmF(BHxqh1ZOvyRzMnh22rZcN3E8QzUPAYFh9byDisFle7MBbKrFmo90mB7bG2ovhhyuwKLifn2MBnllASvyvsEQw2kfy6JePFJ5LhrxT39bgjQBOO9cROzwmwBJhcMOpUUM22oDRTgk2DdvJnt3XQk5jMSdPy6NQ1nnwA8dUzGbF9t060wDCsVj(UGeg2LSwdo1ToD8MRJgJcoOTjgZtSZ0GXr7jJb8F7GWinHGuof(E)emEdgA1t04EJCSo5jO4dAC7UPEiXEqRnpfTEqRtFQXEaBOoB0DMbT1e9utK(npO1JRzO)UVikECIExPnJy0zEpAIiso(MtVbnEuj4EShIi1tqO7nQYNIjDaFN8PeagS2sEInLE6N0IrxD9zJs0pbZF)DTwM)bJ7GMQEc5KESqBBUtSSifSvM6bDYMWTfWK16GkbTp4QAFgK(XnLauUYvYfNA8v6ftZzXx(WeAqUoZpUY70fx7U4pn9RnMU3StMMjiVawMUnF9nfmGjX(a8wdX4NDT911hc1WoTQUh(WFUUybSudSstyOMNm4YfY1mIfRQTOqBspMNinsG2bMzHr3Fn5ap4Wi5lImFWqD(oKQmg4CquKsPJfcH7EkI(omY3ih9B87l8HE)v2G(2gv3dAxl(7NLMl6QNtkdQU7oGOYfZYoe4GCqPDd3WKiCLTy4EofhLVLpzj11SlnEPtXfQl)i(89TH(sVJawd3io5Kdo7SF892YAKxouV4Tae5lenZf)UVYIUT8os)URy7T(mY6NjBMXYF0xW3C2Kez2Z4dVEI3JeFB9zS6QQT2SO1m9ArcYKrLKgPsIL8Chg7saqIYXviJHjY4yvAk8htg591uYArWOesLa8gjArM0v6x2Iclc4gegvswuSuAYCJwDfs2s0Rdn)KZTCZUqwm5eRZFglAg4GzWFCqqZ22zPeELNL2lkaPb3ZpTX(EZSBlUZvpE13ICDU94s2XfJ1vvB64FG7IYlW7aEZybN0(ONNIHFU1XL6EXyC3wM0xnW)kNFv1HTDb4b837Cb33u19OjHM4zDZIQRYFPRWP9xAuRlMLVAqM8O7s(bOXDJfLxd10U680DN7TO4t2SI7ihg35Sk3FFrX7IpBsc4TivGRODcKDRmrNM7Zjq732n63Td2o7vDPR27r18XD60yQAcub0P9nPFKj8kYMWRMJBGLc05H(vBDNXEKz(V2PONo8BSB)6MY(on2wsZo4w)vyz58PUQayUtXTvEGLuj4r(SLpmJ73q5ggkH0(VX2)vy)3ixSpwFpjlZD3NM2GvmB2T8AaC(Lt(YF7fV4lFaT4lF4HBlW)U9waaWnr)YhCnd6Vl3I)HD0oc)s1YIEJWt1z28)c)Ys8hCIGMxUyH9XAhpOVyB9a5((TvDMuE7i)3WebnTmFbtxdgYv3V9lF42I1fnJ7TLZU9lFGHGi4HWpywHB8DZI8fBQ60GTbZFhsl8S2uViM)L)g7nz5WyDTVHwDcF5dqRcNWwBQCc6)2xYVfJGpqVF5dFNpUWWeys03)L)MFrT3oUp6(Yh(FBB1F19CDeboY2OyGPaiVH38I)fozQjrBWKF5wsaC5m3rnRZfj(lWVHzZnvCVH4zCnWoPRwmhDRy72YL3qQgwDf5Fc)H9j4N(BxFFrW8FKCDAxdSP(fHngzbupO2gZQMqV0H(idg(ErzZrAK(bTj1C(1GlcCyjSO6bhzIv8SL1LDT9rWGNp(dP96J0(4yJ9pWz5KLHplxju3zjupC)VoV4AoV2V(Ro6(L2upV57(E)4aWiK)Jr1I7y)cfqMB3rwx8FCFj5OX(8)ty2Ok3V4EOIzhUDjOsJ(YhWOO6Wn1lgE71YpH2)xhVDoy7Ug2W4D)Mc)ULNXJxRKuwBbjT5B8FPnGynF83ngJYoUIk7ZK0(azK6ap)SQLbYu1QwS8o1sfuBl3gAMKTtGRHCE4myxrc0ofSn0phULBj3DVvWXkQyF01B3pKVEPv4GAh44Tm8bkc3k83VH(EyfmQU3rIfr)vRMpBGHD6yQvagQMeQM2StDR2kDZXGBlNnl3IRy14WA)mFvV8Rzy9JvDpT3PK4b9ByKS9BJBRZ3DAvJvp7pylYi35qQUg1TwBL8ygy927II7WaT(FddWpvSEE5mq1(UWpemULZSIwFV1mTsls1nfYU3cogO9VNsom5aw3d3v979Zf5RWc9aWzezQRWDV1FmchU8tLRRws0DyoCee)XE53VZrZUKM(M8BkNn9iQuVynBFDXWB9RijkZ6PZe4t29WHym5GsRpsfYV92hzXjTWTIILMezt9X7DMBW85LRbd4OtO9To3940j3F91v8YITUk6TtLDU82wEdKzFIL3(RNLdV8Fd2bEJnZjpwxX9Cq17AqH2SVFuY)K7V7oqNk2SDkB4KvLRl3wxB(Cin7yipj)t5p9s(8BFSc)YTt)PQfycxvxe)Cet3Xiob(fu80d5pWJlhpRnVTQCd4yIIBk4Fl9eEZ5g5JwxTz7vvuFW39MY1RPu6XeIQBNvitsv6MJaGDRntK62EFD1dlSQxoyH1W139MCkcDHn4jT9xkBoya2(RuAlp)Ktk)KR7qMd9gWexuTPrmjMz3S9KcyLtmPXUAYDcCs)JBwXAyIsBRlx(X2hPsjZAo3a2(PtZYCR3Fe8clO51jv3VOFx1jIOmzZbjWIVotN5YnjMUwJonGcEt(6TpsBiVmpKGPJmAh1UM7veJpYTKF1I8sQ16IkAe67Q)Z)7X19g(m7wZM21CQi2pbQwsnkVAn2W7p3vALq56AAtxHd9U5(pxC1duFPvJKBP)QI76pgqowjf2XOM)lweBKzoMWvW41DLZgzJwhPTmkXrnp(mTl7Rtoyrv1CaN7alw1(7x6iNYS4Awmmp0Pr7MhB)Qd7ZAf3Ohvag7bt2GE0mhd4OKjzTZXV8HxNVDTf(vVjzSWNvevBxJCrpBcKBHYiU08dYH1SY9hhy0iYTlfN0mogrAsn3X8sEY2(3SHHA(n7GyLKMQCHfUDEiss8miW28Al56T8qR6yw)3Zx8l5LFEWMDIIHH2MIGMHsieUH64BOZlCbaBefC(CKfVtVPdRZrPBZlny9yYgUEEtXCAqAinjojMzlHJrnxhyCh10ZeRNN9n8iB56ekTtE58QTZwdd4C78NW(sfmV(YQfde7fgHo1ndKIWDfZWvXH3b3HVBhShs7ncbRWo)aeNQv1CwWXflAQFSKEW8DVfqqHCVNLWOsCSwszJcdbeMFsfgI(kmK18LzkLXdOylCM1BZygSu1AW2Yg5wW1SHsGKo2tZ)49l(OJlcIcCLpyltejZITAkK6qkMyif7ya6fmt57qpDsKBiA5)IYCjpzYpZOnTzLLQ1RF6SuJVJPbIXPomqNd8dongedwXMT7AUNgBnqiZcuY6zA(HBToA3OL)873HngYYACNCWa(UiJB5)dWd(BDdHRkz)zGcDLfIzVLIkdsZUXreY)M8BL)vf3aq14QTkOu46IRGAjY0s1t31q(JJSkdv1SDPPWEHdvqjpek2N0iGcShGCylpmmutEtXIIIXrpbNcNp1wIuNQASVstuUEVppTilic4YR7dbE)5ZRgwT32qkNB7glr1RTyXuTmKcD9os(S8v3wTS6ESh8d3I5XaZNjQi7Hf(uvn3ywAuSR7VMr(6wQw37(tTUN06R)i)9QpGWmDDE5C4kYmgo3cBXXHMc0h8YSGwxD)u6)zI7NyNW(tH9KghtMz3F77xCSV9r(Fw)3kF)RhhJVF(Fk9JBSF8I89loZ9CYY8HWZEclyPdDB5wFmk5bghig(yP74yxsSV0MMnrx8B5beWgNqBvqVAw)qa6J2(dmOxqPW7o(Kx2eauFPnBlhh7lJI6tQc)dgV9WIn0g1jgqCEknGSn4fkyypCUhtHqEEYqVxx6oLe3V0(6GWhDEx5cHMFBXIvnFOqdrMjhD25V6WPx8Ulo78J3)eol(5Jp9LN9ZtTfe403S)pE8PVIBAnh)SJp9OZA6G9BSVCCCVdacpY4x1CKXVki)L233a3W63XpdMTD9c)lMdxXw3SqWk)SF6WZ3)KtE5(xS)0FE)Zp1ozoLLu1B4r67S3CW(xm9IJFZHCE4lPTP5lbJ(s)5sFNt7yxg58lvwBDtF3P8hUv6Xt2)GtoC6zNAlvXPVD)tp0sAAFHM0of5(m5493Al1VNhc)mhFpp4rvmiR8QxsinPA8FaBDeL7CNGfYQTXI3hw7FCk0AIhZJb(DFemqOI4X0ss0lIGQFuLMabwT1YKrxFBo16K9rAPuirFfWJgGUiPTRjjPjXgy)kvLHF0CSnQ9U(iDCkEw4RKP0qJkOMlHkgwDYX4)Ym238lUUQA6QwlsIOgZu4fsqxXhQZOMGmvMew8B6AstLEIHgwAmaJtwKDf18uH)mjc8eJfa8CCtx11DnsGvlOgSKqfnjUl2FevuGmgHNQoZ00vtDoIJXNdqXjcHMZ62SbMOseychbn2WqH7iePc8(L3Bz8(ktzuPMyS2A7QjgFKjoodMPakCrtxZQ7k01cGXXandwqjzThiodMoG0LX5KolR9Pk6uGzJWsf64QRDGnaE0Q0SuzLrMGXlUx7uQ4uqR41jrAuW4j72Ui0SSujC(cOwdFUQUTtqMoLilXqphYABxNYW4i4bdhg6CtsgGg22oD)1Hjg88jjybjebRdtV5hgUKysEYWyhm)shSELa0ACMbYdQO22L1BDGTjm7mzWKzsw7wzCuV1b8QdTd2irZsANFX92pGlzqKgmnqur4KGuD8QRz8KSjK7cRMM2XZtgZYeydTxHtB4R8RhDzN3zOmuXJojwJnvGrgunip2vXtC8OkEyXvJNECc4cnAzwRefPyzCyHhIkWznuXtSYOna0QaTug2vvc2rWEnCUmcCJQbkEuGHxXwXJGMjjqDhCqg6EWdncYRPPzdu8KAzlWoPjctUizqw9H6pOWsXC6NazQbkEmjqtOc(GJ9JyJYe01KKiQ8aihbtIrmuXdORsIoocQaYsIc6AklnD42HepvLsmqXdipq2N1BMkbp4uFjfy36vXGdxdDewfedu8OHBqzSSdItHqH9ctSURjyZgQKYW3Pd7AwWjX1qfLaALgq6c6k(qQXbe4eJumuXZraNo1HaoIu7HeUTCA2nB2qLrjzXC2bThXnAJ3LYiiJd7i6etwuAI342UugPqdsGx9PyMdMc9ykJOTs4ahM6kfC1oPzZONYiWolHbOuEUsHslZykJGRFjyBZawJuJZ2QF86QmILncM(WfhWyB0PTTRRYiOCbwdGrpjuIGnV221vzeejapo)prg0(2AnRNYiJeAPHCaEKDTW3tzKjdYYgyvaoLZJDuB7I7Toa9dAZHp(Gcfy7ow2VDWmVeAvbVFKS1qDSQ36iLBdcq7a8LizB76UFyTJMajqWZKinTkmI7zCifKxW9bD1qPvslDoU3(rKMSaWbsyrYKfSo6TFOtTkGaXHC7b0LE7hG7tAIGPMiivffGKQ3(bV6Oazg))uQBSTD92puz8YqLN4f0mD7(RS3(HesiwTwygOAFUTghyCTgyDiYwINTwhmqKqrNMY0auxSXDbs1alDmJdnmp7Q3HtIDAGQ7uinLvIfGBcRWWYDupdu6XnqfZdECCcmMMeL5QiRAiFqocFf86tdbQSbgOaod0x4vFSifIVzHhPimxGYcffyfsZaduORWkeqYYCfjvbGQXaMWGMkP9jSyAEQQMUcTK0dDSfBCYA1pvf4GKqVimU1XSyTbkfpn7m8Y2oNjcRynqauK3dQKcr70v(y3u5GCd5BgqucS)GUbWWrzj9n8ulTbQhu3cUjn0lKM23itJYEyBJy5ZGWuACYyizbdmSzetAEkW(Qh14HMm8yVoHrVYig14bylXJf6di2fPzmJhqbQiJGnai(y)1o8UmEKaBwKQbW2uSumgswWtWMc1Fr8YiqoMXdQid7hA8uJJ68Cn9EUkdD5HgdbavXyizvKLf2Eb7iSkBYgdjBcGtaKCUB)JSGNBFKSre1JclfbR(q5yizz8tnaUe8ue6bsmJIKvPSy3m0QemZ02U(gZfGvrc5igFVOG5NQx7W6f8ajmtvzbEG0Z4rIinXaK2Gxf69dNF92psGrgj95HE5fqN7z8qzOJEc6phOkb8b9mEGTGya2ilrQORfb0VSE7BYyj8YgRxIkUD92Z4byQWUMMoYgbhsdANyi4f4KIMwhsBxVT6JP60b2e0Dvid)DSg9sGcqOjm2FlrxRq(Ryty39oi1)1SoCJMExa(FLBl081mDaKrDNPaaPc4WYGtxcJfanyUEUwV2DV)Atb7brjWakz8bcgO2h6w1X)6Mc7U3FvdOjDNcOZMuGFmINELMlp96PGzudO8WFtpGjahna9h6MwKmL(6c4pjrQa0p1Dnkkgaw59UIIbGim0sq1grSbfwqQBOhEyzY0LjzojssItdmBdv1uTiSUqK6IbE4bHPmrK9oGbcnrbpvgWcjG)d2odmHSlp8Gmg9LMzjqKeA2g0n41hdofWYfp0dpajJw8ZKcHs7V0pLTo9KKryeePTPVrvGsdAuarkggaHj8W1kuErcCkVEk1kZap8aCa4xdSYbx0mIW4(LcaFkgaCMJDvGvMS2UQYI5Xya2IIIdbgXa8NsiOa2KomKhrT9nIGaKAjZtrNzm(eO8oHkTIIggUPJy4cza2vA05SormGHXaRfOwGMLhgckIFhpp4gn2oW(qNWCIPBAmDsGHjYZEhym)iU5qdgcAvqycWvLq3NHubVeGI9Hit21a)E01mS5Zy8GDrppCwe4rtyA69VBIuDksIJyI4Z4vrKH3WOMa2jS0TstWpiJY7)TmedaSgcxbzKo5lr7urimqchGXumIbmikyPAACExjeWJtyLkr6S81G5LWDjGwGurjcEUnbRmIEiLP5EeHAfc6vdxOJbEVmQ9oOVzHHLb28OB)Cho45cSc812rcZUzsW6TgtbGEc(bzgwrj08FsqqsbqJSmcFndlQa6CFNutuKAdqYazDIULU03jvWFX8ckX6h60JBBNSVZtaboGJa02ANkiF767KAKbyiGZImykMGXRVtQyjcv5qxiwpH0aD)1bN(gwgcQ4WXRNtQsgCn6(CeZvEW41ZjvyW3aPCGwZInOTDz9dgauINq9mcgYUM213jvPaA9v2LHugq)67KknAOOp(MOmrsq7I7JVoJAKjSUyV6gzN8(xpEWVj48oWbWKD0UEL92pSbOgBXGDkwfiolhSFagkWlt5jv4Zv3p4cqHd9MaQ278C7TFayZuYmMjAXLneB7cC2gC0dnuh3nuSG9pLjHgRaarRMS1aSkACd1Pw1nmnfwxw411NttfCyc2Uy(dadVoWKzTEvOSfweH3HW3eEP(XUwRBe7FcQuwbFcKj7iuS0mmmDbHjJJAR1E4bWnzybYgaDir2OoVhm9mgulgpWigRLw2KEHCdevWWbyOX2yB10mDpq1sUcnqG1gGPMM1dJEklclyKh2QGsLwE9oIoNcjX9eUIWQx0(Hhx0xgaVhMZ0rJ5ZQjcwxPNur8o4o0hZEOmtHBz0Ngg60OWau2l7lgE8XyX3PIX(Sy0SVq8neVOHHLotoMpR0RcGwvfXi35243TpRW3nWlkJSfZIAuFwbkgAeMHnldc9JN9fapaZmOnNPtlWxL(zFbpxiHa5bSTNf(C7VFqVlPMWK4UzvP7(HgqIa7HamsaPra0M(zFHE4bqom3kWA5O(ScbEaX0qTxgMm0X8zvli6cG21MCbLAOpxaq1UaXR7QBiHE(c0TmKwXrPp)00KAJztkaQduXYwmXNA6eYl(w)HVzTKa7hukQBTcJva1bachGlj1dd5LcGBHqktRkX6gMDegn4mgYxtc0mk7JyV1)F49nJapqZYRGGAAzp313jnyGIaySdYsCBHb)ly06h8eO3kM6kYSUzpsOSWuxzr(laeLKa(1(HojrXA)d0OKuLC0KYcmqeIn9Fjfp9KXulW8va04ra7jt7uRBs9ulOsi2zy5ayZGrYXZdcSPa95uxd9Iz0qzbBaypd6yuecuYOjLvLyDtccuPe5t0yQfGOoSTaWzG4Osgpuw2iuY0gbZvWa4OHYcRwtgVRVjNi8LCS8GaGcg7Zf(5iAUIkhQwaS98rlnm88PkZy5bbMynclmkOBnnmVkX9AxmdZkCmGvDDW(wp1cP04kbANIMX7kKrYdIkb6puzaXkeE1bbCThetaKYwnbqXQIESomE)8gmBicKUrRaq7G8fMqWjq4SHQhcKKr1YKaxRueOoWlbbER7zPER37AiheVhlwdOccsrPSEaAdHvpeYWkVbYT8gWtfOfVxPfKYm8RJyWQfHzhSNcf4hanUOTfMDqLpO7hwzw7hWFmiQjJgtHII(dZS4yRvKHjLTniMgwzPkWdRLzzJOqXiz0mGQhO9MoAoQcfg4xyXfRJK04WQ3OFIvtyQlyaQGnAHE8eRcVhvutUSXxGDRqHj1sYYYLHBz8eRYK9JDFzKGPCrowIvHagRKg4PeC(muaRVcf4rSMUHWQlqlhfNbS6bFJsj4uHmnwnwIvz1tGnn0s4(tY44myKHWUf8MkJ5hz0yJNsqHAwVk8g0wlhvHcXutntmlEQGYvOVcfA0LEtbHBOstoMcLewMSmr3SyAc3pI7NOBa9f2rX(Be4tJhlXQWaQsYe9W3eGXHkg7L4iMgmWQahbIXaBgQ4jBhrjnRRNpkAEnIbMatVSuVVgF1OKIhECMn0mm39gxyhY8GwGZcyuzCDI8PYyhHzE3p4oreFxyZI6MHsGfuc1iqnN0w7UDXMnUFBWleJwWkEWAxUBj0aWbSgLOIDxusnDkHgWjYQscmpWzeDyOoblaWPerTXj(Kby6w7ESc6yLPLW0fegBwDg8yiLHbqYCTSJA3dElQ1Sq6avlm6FSevGMz6bauQfP2rT7jHynp5oGxrfgapMOlSqtGYFihgWP1w7Egwuimt)eTr4egOAHvzaPrtHC5GsOHfYOaFjlAJOyRz26yALYYFrWNRfECtxBchgy6nGchZOA6m1uhslOGsaHw4WwgidTEg3wcnuTnC)sRyLdg21u7XNcluI4i4P2wcnmeBr2cYee50GGZYGBchjH6L0e62CBFfTrIwrKVkgmAhiupqCfZTg4tyHojIdTMeWqr)AvwLGstaiEgvpRXLKmwVxYbweyFJ4XIkHjsloSVazQgCdyfjPw2SbwjSJoJ(dGiO4wzq0)eWDogVUuBCyudGIsSf0DnOif8ZrAzy5vYiIa3jaVHUJ3OnmvGqKXkeiJBYrbvifuUdSfsItovR2HfMJiqaLMvhvmJqF4Tg0ovfSdySrWSEkHWkfDZaDpuamVZ8DTGYQJAuRoaWJuadaPezuOx199UnJEEdrbWhLe60tFVBvr2YmLf9tCNNBpVBbmCLTm1iyLG9OEwDOMk4AzeVQ9P73JbJvRHJc0tvw7APjjJLrwwyA45XsmGEFMnwgz1mzbypekTmszqTJgpOwpZsuSATIG6PauuDJu6PsLEpXoJnk2bGyII2cLmQXJLdwGHh450KoWBrQwNy7fBusptz2ZL4)L0(g2TFSr1mSysnDqhI(PbTBWoaOvmkF8Gzf4iHCqnkWscxlzs4c1ui7dkMXKNAnIS7dTTRNB2S6Qt5nMeeXJBRY3WyJQ3LNj9t6mW9PO6Eqt8rsq9C8mjZ5(PMQvLrrHj)HvEIGzilZ(wmUo5Q9GiS7N8aptsyJGIig4TOqhI7dhoI66yrQdCtzY(2jBJCpScNydmQiSmJ6b(Y6YhK9KuDt0GAxVfZmwSmqcabUozmptGDTywWlGFdq1dmo1luhG9g6qayuMdkDY41FEuQfSGK(IfuAED9mbIII9KzYD4lIL1H5TfOuIfzTyv7xNos(9eCseO)Hy97NVgfCZNvbiTwewSLDV4)GeI)YFSFvDcJNevSid(lkcIQq)Q6ethk6YmWc89zJwvNWCBgFvAtxUILJgndGMf8nKFHVh0dbT39oLfQm3lkjBxPidCXsBPpsNffIXC3qdZxgECgGQWK4G6GTFkYYSORtS50YeoE99ehg4z6XY4P2wlgZDdMwoEuRverMkDu3nmmjVabllDKipGIEUBSlTjYUfgcV5PPFHmAf6K68n)CIMkdXbRBDGoi15DNpAQ8IYpmCQsgFysAmu7Dq4ubEufROmdZOLiBG(eE(oYIzkMzMrItdqeb5iaEltfrG7rbiXuT1KVMUVNbTr6etWfxNMf5eJGHnf8rdcXk0NZkfvaOw8y(AcJ)R0(QZHU5lK6aB3TjSwJgWWfY8afw8Hq6hiZaId7BHNGGZBAocsMmMFkgl20uLUbf2P8G(15K0WiYBRGsgWdv7XHjL1maZhpnYy0JvRHPWTeo9e8GaPhpaTqIfAtsy6YHxQb216N3gdMlgddTp2EhVwdDS1W4a8nVJD8(5TH5xxLkPopw(lJEQzy8Lmrwliad6O5TbENXtgIg8jPmoiJM3g6VyeJppl8)WY2OhskSfrEF4vnC)iWgspvAWnAabI1mUojvh(C7zfbRIufdHeiJIWAiSxTTLsugm9yr2QZz8tndGtB9tagPdXvnqbhxXWsrITcmsgdzlM8SWnihfzSgTwdzElGehuzPYSN8)XQ1qfxgWwnGJaTM6rR1qTW6omwWmUgMXq2MKG9l4mop9aADYOiBtWSc7Dm5(SusfJvRHKJ3iy9eqpycAx)AneYrMijfzfPbNURwfWYbb8X(T7((uYDSll(8QSOTf2x)otMxSOan0FSyV4ho7a3jYT(o09QhTxcEDorTT39NI2xqH82Q0)IhBw1YRlVP7RAPWxa82BU0MxQh9Ec5l4B(OL2xMaTN5x2IY8ftVFz52nbxCJ(ZXlFxLv)(N6rBjPMeXdtrmZYMPUOj)mfSaeoQUgBKkVaOU5vR3jhEuV3PERkwBFZaWBJspjX9Mh9EyCZ98cUIc9uD)lmj7175Mz2tHQ94fV2(tEiI5p3XvQV9TlxX6BES9(S0TBCEE58JkxoVy93QN4bbxzEdET2(n5PQI(w9uFJ9md)T6PTV9qJ)nKXrg9T8P9nJzHNKD(kA3DNiWJNF91CklqZaDhuNrJce3lw9dg)q9BNIZDI31NG8T(BG2hlwxFj3wFi3NwYRzH13VA7MER7hC36g8I4LtXLflUCYK9)71Vuk5NV0Dr9Uny4wrDSdgR2bGVQxGwY6xR01eH58YNMvxS)vH6s(QJm3(wCRAgFDRKp7JduEuFTrmRQAbFzj6VZR79N27Mbq1Mx28Ex2)kFDJ7DgP7Mb29(vj8vbB7n7q9Rbq3BvYAcQ7YW0AyW)Y33sRQYNDBFszXIzv8QYmheHP1dHF7NT39g37Qous)R)YIz(l65G7H4UKZoDYEtK27XBFo3sdp23WjCrED56nw88tCxVeoRf(lFGAUNY5UxamUbO5D9l)yPKoiXx2FT3SYnMnDVk6VZ((Pj2EdNpT5fKQ7L1z16YFPIVcKNW3ATxv3gBtQMYhxhd0YGl58e)1zN7DqK9s5PEqk3CsZlPw)RdxEXzVP5gYWF1n7EtBYBjx71nFNPMBZ5z)gdLhVUidZ3wep7(rFlEJHw)k8)3rcS4zqGpyNe4M33W)kiZX)QjZ)r8Iz17K9trMF(ev3LWyFcvd98Qqg2FBCPNk2lINJc3HwnXUW08e68GNuy0A2att5fAjs8qqiJSNCM6eA)RJiTTV6b3LEohUivwKweODkuZCOck)1EZaf5ngAAu4D((h)Yok8SkYGUTVMgYzqllEc8QG1p6237W86y2(ED(GEVuZ2E5L))(d'
	local tbc = 'T3tBZjUrt(B5(WvvsvX(07cUu3hWRHDDIn2hc)Klv5czH0aOYcjEKe2RZvHF7x39mJ0ibIfVx2njp1MQIbKMPNE637EEzNPpB6mVn5zlIty4xlwL9IFqolnWpplH5hhMLoB(mVWGnLBZz(5SGeSDRWpVaA)gwssyqrj(J1XfHrbLb43d2MtFYsz5lFf)wuW6GLm4BLZ8YHrzrqea)uaAJ1N5bFzSXSXANBGVVOegO1SCFy4xeVehXfWGapy7gyeyfio9p3gh(KFeRKfwgZrZCwbR0hqQq)WGWvm8zPz(bjS8sQpBly(bPXRdWE4hegYOPruCrWCy6U(1YvXH(rBtxYiic4s6warIdds8lEfqH1e6IWbNevWQabtoBtwEPpsC8tItFQGJtRZEMt5w7VipBTFkm140lO3Bx7dVopijbMSRNhu6xgdVESU2mp8B(LVUH5NLhVmofO5arsomLz(VSkBMhG(SGYv(jzlbqKKLxuXH8wMZyPaXlpMLgL86I4CgYjYFklpaMJyxNVDXcqgyB(gqeWlmlljk7fOpVcC2SxQ4BWOgHKdHWIFramP2KrZ7sOtLXBedBeWMkkdk3wmpiNZEb(QPG)cFAk(0c)S3SX2azASd(h3zE)swEsKh0D2UhbSbWxyqxKLwstnFGoSQuauDbiD5GKaOo2CG2ZaUa10X6UviO)6Gp6xgKVKbsdiLefV9lI)ns2)x4T9d0hLn70gzpcsdxHOblby7pZWwTbE6855SNJjjbLMXIaMejVW1RwNTnTeLjeuPs2hl5SSwZO(6UoTNuinGqvs0yEq4tlZb4fvrH177i6o9nZQVjOZOE125RzPB9Fbe32eSHLJCpjGbbVYeb4jcZ8SCbwcsf54a5DbHDg69CTN5Dn(dn3E6gWpMQ(JjknRefQwVoincLlBrxdMhNexgdk0GaaHjlccbQ6O84FB3J)3BdIYbdk7ECkm2c0rLEPXNWTjv1ioA0AM3LSYG4KIDpErq(f0729OzfVmBXcWQrlicqbWV41iDznRCvweXhjA1QaqdbzJIXrWvSGUae3c)5lRh6RsbRw4C6bV7gE91xC7T)8dEOrZ5zzpD2DGM1z6vysriQUsAvCSXwZfLUbm6mtBTZjIPOTBYItPPAzz2ALrMyvI(pY2UNMLTHzpdTEgMwwZwCMTfcVr9mnmCSnmS61dKrm1W3qQMJCDCT0nT0DDnTD07BIVXgPTJS1mC00DTS7RzyA62Ndnv1ZgIX6eBrVMTOGJkSq0cGH4ttXNwspbObNc)MQxaN7f0iH0EzCHFzEqXkKJS55n(bf(OMXgu2gPYRbZDCvnbJIi4sFaGZcqnfmfdW4zWBamWwGem8lW5smyV3pH9m3lb5XIApPAbT6L4uquO4O(YItbJHPHScFs1lmb9Ab2UZ2WiFwvw)tyb5(PSxcxb)KHwNNR4cGmRGExPgMUDdAVpBlzoPEiKoYalV(Ra7FjKnW508Pyf6oneSSMc)p5vNmPo)vHh)sWNl57UjXbO4M1UirxZLHR4EYqvz0i)863NKbtpW)jYb8NVfKo5(gxdUbZF1phgIXow1TNtc5CSIMtMc2sGKvwqWeWJlA8YTB2aU7L8EqLfDdgHobta1w0WpyrjBd5CwmkueoGNCMqGCpPGGpkLcmvhlieIK45cyG0nIvjMKCedvb8r9CY5ljPpZB4hju8LGxXrJyEZZZEsyAc9ChUnhi9L(rBqXdWub2BGxauMiCKiWEcQwCgOSJs8ryPYB8TJhkFexfOhGJnI1rTVfbR3GCAQP2kZTdBxErogpJm4rUtK5umCySGExF7VWDxfLNT5ty9wOYi43KJsUtChszlQey0ggK1zEGGGshq0EoiHhsrf)wItKfemynWqbGxCpMGGvoO05Vjih(wdzooMbZfFHvyi8X818yEFD2OZ6Pd(06B0xVFFxZE96bMabRQEFemo6QBQ56y66y742tJEdAPcmOAOBaUfb3HGvyWUl(gy6Sc6JLTPDpDlt9Eo2CZZwKn(cGkXhsuR)JKvLxa6KMg2VXgAA8zgrXRJ1IenbZlLRG55Yv(1sSKPhUNdPGKiybaiXrK1f0BYs)8zJa8xVxFaBbha9DOjPnOlTcANpyXbCykm9QydrOOFuHuH1ckPcFkJdf3JdIIUnT4bHR6hIXGolEqTlf(aTO4P4u)WTfKtpH)4Y840LOoojFyAJCVxaVaOfwHe9lXOnl0mlMwtHpcK6PGkntmI0asHVdu440fe7a1ANGKamatr6pHN4mHAkFAiePiWDTk4AaF)cOrjKTB12jE8fYhZ1BfKeUDf0Ur8hXGppC8LsgdkaTbvRHPgpUAuCiHTG)L5SYxWSh4rdjIOXVoWtWruay)Ld)dJMNsWAvwx6Iqom557V6H3bHt)WnSO4GhgHm9hQnUEEz5IAtmTSGwhY8jyg9OrmsAiRZIyjKHbW)dydH(9mpkKUIhgeghDroLng8Ew(7X45o)gd0K2l1TMYX5HH)p3nyS3v3owZ4HlV92lhCPhmltGSZYdE4D3E9LdMmzW13(U79oFTHC8cs2Skan2zlHPYCL)GQMOl7uDtkLSjW4CAbe6DLetJ0Le86tLHmL3(IhUbZOnijUqrGriz2gwn9hPls5400LibpmgasvG3ZL5bVY9TxjkQQt49)IUF1)9Z39i9nZFN(W43LADZXa(G0a8(o5toSMf)DKHxQwhK80fO40fO0erIR1(icqN6avCdcCPBxpNvPjvt6q7CYNuhtNcrAeLDFXi0N3d3F1zIFFnWgo7d1DGJ5hIOS7XVtqn(HkYZ)(3ROoOYxBo5unhCmDDWxhKzOTTPd430uZ0HNwXHnS8hICNsgYETF)K3Uzkb1R2KxHIGwRNk0a1PIpjlHgjL2vUMGp88s)GfyjUKDqjSlLajRfouhuWDaOOhIHsYtwqNxXmFiUsEKs1(xkyqGpbLWeweyigFuT7jEf6IxcEPGuFXXaLorN)K502Es548lXByvXzWbZEkgaP8cmEYl4f7r47HIarMrDz1aWR6ePnSoompdZSztcOI7ldxrK8LFva98auiQ3f1bBWBUofBZYoJTPgVByHf6Z8o7tvmT77149c5of5ki75Eow69SGKODDnCC4qbZfVJ3y25BSesn8iYWqzsj9zzWRkUeItHiDliEdeL8wYvi2xyCpXgAEQn06uBO9P2qNtTHUNAd7DQnS)P2qiYItTLNmVr)Kzo6Nm3r)Kzp6Nk)PKhoUQ514q0Ufw4yiKCvWG1Iji)4bJ(jdxT28awDBU1b1maqayitZzSRwd9AksJry6z669HSUmCXQIXR71EqXScky6eEugwqOGEbpZO6GIwAHX37YHthC11E(Ethm9EVlgmX)URV)9xn2)DqGB)SmS6UB2DxENxvwRiGpElXKS5ffzQSKqi2oICsmieI(eEvqYUhVdCxG)iu4W4xVruatSEstLEiW3maIoGxun8xEvrlJ)6DFYiMp6CZB47Vz44PFbXA9)4XAoJ7lhkB85IYLIuZobcE5EonRRGgVKbakdQJnQ3Mih(Mvj4mdxb6aWeTciRaBBfgRkfgnm976XJx5bYNAtRkzPCDOXIy)HWsZOs8rrEiXUS0egO0vvbbGO7ZxwPMWk5vmNEEDFfbBPgb5vV72XEpC14)Hpa)4e)PaQgV(y5ese8Gsykc0fMVW)QQ9S61bOkgd1QmJzC2iwBCz)ePBCGW6As215ff38emlwfH6HZxruuU1K1sSC6jBxcSCKubzWeNlw8uuUSrf7AuuK4uE1sq6mcuF)I0amt7XMIkhjSldssprztsHIjlYsvmv46cxM5tVffmqkkjupxAQCUOmu19OUYR8AW1xtZXX12WPNRPwVEIvUals2zgAUN3VFpnlhA9PelrYf3oD6T3m5Q3)HwL)TQWzvf4PEuXQYdAo)Hh7gjw1G2c8HIAA6)Ov168PfJTrj7oJKkO0jIyfWua4AIQL2KQxLjaKB8CmorCTkN3YhAZsHHQD(f4QlRiAOlyBIIvl8LJfrdisIHUzy7nbQISrZx0eFP1VjRiomi7V8fELM)TvH0BSs4PQlUPj(BwkBT4xaiQxd2M2Y4LXCKvF3E29HjTUBFBdnlXewzXyRtHuVrj0PfVUH8BNRAa3MJhvffrbGg1tZWwZOxpD3Ewog9r5wlNAvdmTOdS6MhUqnk5Gl2vhOGGWrtLvtUK)hOvrQwGMBGqSNnwVfiR(koDKLMLVW6Y1XH0Htrd7JcaGReyf3dkpRN3CT9DT1Dajj4zOWwFJVvB)Vi12VlJpFRi)FRi)Nur(n(wr(pPI8pYQNPoy1Y2SNzFhDhD04uVVv3)Vv3)Vv3))LRU)ZFt19VvECFXl3)Hc47Bf8)Bf8)Bf8)VPf8)twLFLkO9Nqb)7lkx0EfW4Vs14pU4dXrr8Th6E1rUQcZV9cuVo4JE88QUkQaGr)VMlbG6K6VHlhWFo8KVsRwWXx(R)cTKbvlgqRLjqDbeuwyH)ewYG3qfa7Cpw8zuhEDzU(n3FKDwh(oRjBNlC0BPo8N3VVRTDp7(M)LUo87Vxtukc)jTsf)l4ce9))fr4GlVr7vq4qRFXXweHUQ4(FiRHWFkf4TXQCDkl5ZNyfdC1DDHzHTvFiEh4)eO6x(vmOfLWumWFDwXGJSEM)bUWbLvN6sS6bf0XIGsFgmwYRFR41fHRyR51aGhQ8Lb5pT7XPWtzCACEm)ueLKehXtGhO6G0EeNqCOJQcfuDfj07PxPAjlgaQ6isgyJdseKQ)YvvNnx(znTXzmfMeSNPAhqfb7Z9WN084w6iEqZd5L8KnQlpyIcrpZQQd39Hvr7Z6iOCXjDeuoxV6qtwDMjLhzsl3dFyuinz5PrXwRIeSFzb8yG5U4Yx74GP0KJvFEUQM8khMiKmqlDC22iFXXXU(yvdoYFIbXxaaepwpqQyO5us4uEiUQlGsysWAzqdN1tPSxgCUYz60P6lCfkOag9zRNZZisr24vzjTqJxFu9hypOt4Sh63lDz1z8swWh(H0Ie8WiHmADm6qAa)C0HFt5G0btDuJBvmljQG7NHxjmXbE07d3pE6WjnlY25g2c2QHTGTsgP)LbtMC1TD1y5HrIA6KBF)9dRKxS67OrH1io7Xw8t56(D7MbVVUxgY2x3996WDdN(PA)5U21QDxo5(RUSQhvic)ae3RNbDuCpaED74FUQxvtdt12FUKuXp(UxoCW0p8ZJPa32dbpCxGbX7i8c1PX9J)5XG(5Ey0HA7DtUAO30tIx0IF79Hb3my8NK(2StdaB0yEoN2aQIOG4LiXXpn3P1GE5qG41uuwYECu9D3II)bCbSoTXRbfDW1dU8QXDXOAog3p(9tU9(7U76b)QcYDuo2WXdV5xpbXGdCrlaFSEEwsbp2X6tmkyXSk9K6vbNNN3Ehe)gvlFpBeN74kp8XY7LaRdzE4Cx5Hu2rs9Tmpa578QJGVD1C0CpJbw6ToXZ9j7TdMmC8a)FD41xxPoO3GHBCeMGLuEwIETTqOxjWlAHMvBRbnLU63LQVRKMPBirmZA8)9tgoCCl0sxfPAPVBuzIxaR90Z3RcIn1LLZl5mVNBBJ2v3Qcsp8whuh1wYJTL4RB)UuiDSQUQfA02Q6DaUVgp8(PtgC9HyL7PzaIa66UQRa15AY7Ub92ohmBXRTfzZkpU0uQwqKff8AqnpplikKF9PO4bNh0bKv3MvXHu1yPJio1z(DwYbol4qKIXlHCZKhtA76iB4N4BwumfVznYqx6f4bEVGkDJLMiyuQUfEzP8de)luWgzr8RlJ8GOykMhhrjVQtdv037Yk4hfyr6YyIE0AxqjekodlvhGBXnVb(A8wNqUqsIl(dzCDw21X1z1tJhTYIaidI6lTaKXa8kr9JWRBaiIoEwfTpH88KwqIXQSYWS8u8CFNTHQIWubEoxu)J0OG8iFkGEAxqL(kKjbvCii9FmXiLQMw4Vb4kH0(mGVQJj(8CikWdYFDfT2lHG5zfv5)C8yTeNwFijEgesDseV(vSx6I0PdkpssNPmsvQUwByHkXOn2XqXhSEFBt9kxX1EH1R8isM8g7ywl772oWJ2ngJiVPPH2XbPlBOEDwavyrxT1y)yhAhgxvBRrxPpy9d3qRUW0dmRSpcYUpfZ5yTUQXMUcG7UN3CNJ06E12bnfbw0mcG97s)A3hYw3R7M7O1ffCV2A76EeotvamocYOI83bimMUQHIn2UN(re82d0whPXTGSHJ9rO4714AUPZ(e79AT7XO1716Ehd27jg60VtoZET1v7yis7MR06UTm0M7RRz0nrVP2MRENyElAIUMz3mNwa1Otn4wIh6AwhHq3cQMhtiDp5oZJPaS3CZ(imLw2NC07C21wmY25ic)T5A1c)7b39AQ1r0tAjcrvskpeYqiSm(54YxPYCHoPrNWIlmeE1qg5AOz7A33wxx3XPVlTQaU1UmxKeSKxllPxD(vlxTpDEGrQvaK7WtS2Z8DO2BCdT1kOjEWskHGOwrv(D(M8U0QABXsUExMKnp4s(Uut0WCwyWM9wFc0tUymRwkGK4fanJVPI4f2mH9mTAF8Ig6YpfjbIlRg8ETJiZ4vyJs4LnEE9(ZSXJfv(uu5V9kMvhat2Rky2OxDmuDvgtLD6vJ2xTAlyz81OY4xTDQD53MpQd6HNbVnG8wrrbD4ZSBFsC7qDQt(RC(xkUsiJJ85RUze)oFJU7JWDngiJ8rsoSpsT0TqqPBs)1G(Ro9xnEKX5BrYcvxdpEkiHHRWlUWOzE7(PZoB3Jql294lRyWFlxX29ihr39iVzf7EmUe(d2rcc)wwkRfeowNXM)d4lJHFGic084KeAyj4bjJukbe)9LznqkHc))gGiqtJdsWQ6cGCZ2YDpUILZQGlKf2QDpIPvOmi4dczC4ZXIGKISgnOub)53nJWyviNer7(jS3OwbaRfIgs2e29ys2seHjtiickE7L4BbiiQYYUh)oHnODpcgy((D)KysD(bSbT7X)lQv)iFC5ebeY0nufGca5v9Uy6hqKrsIkaKpTeja8vcKtnLwZHFbYBa2Smd5ny985nGqAijfOBSYY40LivdMDSGNHFqJGa9lZ3YuW)o8wqZbSPIjb5YqH6npaMe138NnOpMkGVvUZCsJPaOvPwjMd88QHPqs2lCYeUpojrxSR1dbwIQUhK6BYoA4WglgWWauKbhlUNWgtbj4(pNWwG41a5RgTnLwqTIV77fWbsGgL)W0aro2VHkirehjN9p3gJs0aF()aCBKfiMCVKHRbw9uasUE3JauSAin1kZ8ZRLNG2)JD3oEoO8gwj4TTGj4wcbp8YTd11sqsBqH4LKd4Qh)DDjOCGlkV2cj1diUrzbz(WSufDkPPfs2rQvGwBr2qfswJala9Cvm4qxmVekqnuGdRqwY6TKIdPQqdTKD)sqEkPCGwhq4LQoG6QScrSsIEqkgzB5KyDTFKS8rvzGBJrAau1mjyAQ4G2wP9MdxaN2mpK0cVKfiyPNjwl)3cyfWs2t6cTdgOpdir9RGZ6eDh9QH7kW3r7Cc(XarU3BrVTurF9gM(CCEwkgnfqyhbAcFpv2KdULI2UEnlFeRO0hBO3M484QdOMWnoaYbBr1hS(rDcPFHfSbMTxaIhAUYTVlcHEhaP8sao5HXQb0wv6v)3HNSfCFMFxwCbaynd5w9vexX(ZuWWciLCyWsel)Bcwgh6pcDxaZAmwxXUcUkOfVBGWmzDtVatir(ujRhlZ0W6a4YL5GyDNiJCo6TDXIm8IWuUvIP7A1do1kJxULDSP2G8WGuM)nGbPBOAS(QCBhJa19aa96GNdoo(nz1RzWxw5)pYsaONjo1WI7ksiak)8aiclwAiMMalxCX6Yx8BCDqwfxkcTep7bqonpfZZrjgf7Wkut3OX4BXDRcfEhDxzVjSDKBI91WlySkZ88g8RvrTkwEzQGX0Lz6fID5d(dSCJQlpdfQaUUV4ggcyqrqKvOVkUnnmthSuUqVZJ5ByN6BUv5dXnNwa0JvSe5nlkpFwp6(9MV06c9Y5iDFE1bryUYLmnTK(lXn3bVZIs2dbeNcutXru4gCRFE7nxmyQ)0RUzio1clZte3ER8vIwfX2Ms37PsScGG30jdhCZWQTB5ORMap6(XIlaDK)johr1xMLTS3Y36da7UVwjJwXEGmMWGgk4atF3TxWHN8w5gCrrX6QY6QVoH1R3yMysUITBv9DSE9goP52VOKsdMVIBTgb8snV41uAbeQfUWwaug)TqmVfkPfjezWDOLyx3ushGfQ89ykMI5bFBslUf2BUXdAKgpFbb2)wNxE90FGRP95v3j9ZBEN0pbyjJa5192gmFXgXluIdEV9G)xLr1s7R1OEdDBZ(1A0gqgv(kk4yQ91C0(QjSG2kXttgpop08T0MGPJHQcpQOxP1lpozDA0Nqr5fpCLvWs5wHtw5kPfz(L8B(2nLfT35JqaD4(H0J2TsPP0P0fDrvVdOt530YLkGBdAyCpyvdGHxpcnTjpdmsIqeUlCX9NVyFBNI7Y1aANwLfg1XEOt60w(VRccx1T(j55gOArXvhseX(tVGV9w5lKjF3TRUV1VOQ3YDSiFdWkjO8mCjR5YJGosRYccx1MuYsGODz4AlYs8LGqW(X2Z3uxZBqjf7uxiG98OwfxSj5SrNOYl0A4PXzf6TySCXvxeNxqHj6Xd(qCjY38ARooIFE2XUxDSeKpmd3mj1RcCLJo(HMBnTAZg0)Qi4xTrU5BQyWX(VLHhwdpC)1px2gQjz(4ODKTejgkP80puIBOfjqIlUU(EyQ1fOtCrvquIsYY3xWzId)yte8Vbxo1YJC4FniZYZhXBGmB8MjZ)zSnYRnsxj(ZRtVMIkNQ5gH5RO2MKAy0sA9SslEYGRUSHwmPDckSFk1E6FhEI4NEyST3rM4bkMR9zAqa4x0RhyT9Yb4oKAYmEQ786ksh7IlATRAkNn7)7d'
	local classic = 'T3vBZnkss6Fl3hUiMjI1(abcq3g3hKAl1T3XwYNqEMTJWHXiOKeHrGwaz3AUy0V9lZSQckqcz5zMTN5UTJyMUfq9swzLV8Kz9s)O(JZE0Dtw6IOyg(Z8vPV65NXs89YsJzErbPjpo)r3a)nfBZyEzm)ySCRW)Eau(nS44a)8c8H1r5bH(f(4V93Mr)nlHLTCh(Rq)1(lzWVkE0nd6Lf(Hq7NaT2y9hDHFmUZJJ1USd(98cOJwZY8GUFr0sShxaDc8ITBGEGLJ00)yBuWZEHScwqreNmZy5ScpGOc8c8dwXW3LK65hZYkO6SnN55NeT2hRHNFqaJggHr5(ZHH76DfRIc8c3MSKrTiql(XXEBI93XYYroJ3YS0TBKTfoqkBVCSPYyBsZk8qgKxCuYZ5C6AD6lCU3AVfzPR9sGHhNNb1E7Ap4ZzypfKUEUFHxre85X6Aad8fwc8CMFWZSmKraZnaPgIn7Iu4tbPXPzCUi(FDO)0G(tt8pHHaqhmGIIwUQaEJL4fQvu7sDb)Nxz6VnX)2aBaQJYx5hM(6JUJNmEO8vr)SGmPhx4hWE0Duw0pV)P)7T(HzGWW(NMHZEz44vkGvevetJEyEgLxCVzYp9O7CyigMLUPjHzjPmljPzjOntBA0LcSgIFihIgAaf9AuyXkOQD1kzbfSVGsXp6EfRWpkoF)tUmqwpQy3JUPBOPqpjLwqYP8jZIuVxxL(OlOhe7NNtcy5azMMfMJ0PvNsQTtx9EDn070vq0g2DLun(otEzG2ESLrzLOcrfVTcJJcrPLCJoIYkkNUSG6vCUsQOTYQs3nj4MLTICDeKR(XlOzBu6rgvDpbXEihZ6uLUSW4iGAC7YIllS1jkTtzPTm64u1b2TxLELvPCc0P9IBP1gh8GY212(eZmxklTLGnQi)DegdvptE9W22r)ecEh00MNOWnA5owDpbh)GcxnBADiZ(GsBFkE9bL25uT9bIHw9ADM5GYARDkcPzXvkD7wgAo7RR1PDMEDTnB9wP8g8eDnJ2NCA0ODAvdUH4HUM5jy0nAvJtjK2OHve7ousQjtwxR7jMtQtfvIOhm2ou)26eY(hQER3AlFG4PXP0URx6Is8zE5(agInPemJI004IOncSyHaYO8c)IT5Z9R8CAiBAzdlAwhWia4UCSf(h2p6(tPzXHUq1zGdXGuWbPWLp5i2lJCQQcWayZk82JaXWUKa9w7)fVc)SLmaaguxxerjh3aq6)eVSFI(RI6vAJSg(jbRqYGfdOSEHHLAd825ZZyVeraVukgle8wtikXbqf(ebtcraCeetAx2t32Q5yIdgED62KceDbIpbb)Lewji3ReCsVs0j9Sk5ZyJSD(AwYwVxb0DB83ay4gurBcKqefsmM5aKcozsOlqE0aI86OJc0U3GpOztUNCNP(WuLIbDlGJCTFcbpPbF1FEuCureGHgeaikHdBB4x2aWNZF1hadjiJAaX4d0M8OkcUbYQb(zdOVT)jJY5W0flaa6nArHWMaEjWOr(vU38LvT61ja2FKmFW9UH3CZGjt(HhCXqpMNM(8f3bXvCHEjTiM0nHgY)lrRr28AwXQ0qsSqqj5bzmwcPnXPMUA2Ounqrxy0LR6jl7M0OeAOwuKUwH8QaaQ)4OUDD0m72XWPJMthdtZhxCbGecAVrogDapJD6y64aYggA4xivYr2w2M6gM622gDT07zGFH09h1vdGlOBB2TNwhdd7E8wtvT80i(vOrvS0osJJczvhPDuHHgicNAQvWm3ROXbzyjr5yKi5ROWFOiXqSWa47r2D06A3TxxDDDlREoDqc2g5zPpV2p7zUINyMHMfKXGr13dcdcA4xGOXqy9G4mfWJxubBTxm7fEuAVgLasi5NmYXOeWoysal3J06cIXyeb87PByueILXzfZ8Z8syVgScEKbX7rH5Unldd3kCdw)IF1bCXJGwwXbVzauoWmwTqppOUThAvU)6nOZbQL6E8qTMFwHADGgUGNEyawGx0Y4R6qAWcPHiur9f)yU7MJhufMIaI)NSDJxC6Y0TK51Qzoz04GVmVvqhgtD6CsOiFfMtGaOVsG)NMZiNuZ3jsBrbZFnLaI6syWOYOkoFm)cfbR4HIJghr3MZR(ooI9GzcmuFV5Bb9EEW9RH44Z25bJgcIsz55sM8udKxFWKVDdzxvO4mwR2hzlbX0ICVkwSKLXBsAEmWN8rWTi1qVX)ls9gC4bo5agQxmy1tePFvFLKcVFUOzNRiwHwW4gmQ5eaDIqkjc(axyKM8MNL(SWOpguC5Oq4RCm6pQSJ5sxqx4jS26MKMTMNgPDpo6chDWNvVo9071Z2WXXbSCawpD)cye0w3qZ2StNEAoM6wOHtt0IeATrhdrdC3bwBb7R4xG(CfuhZUgqeoMg6owD5MHnjB55GycVlrWcFHmD8QivbOySMgx6CvezCPmrm72q8ExYssXkGtSCLxfxKSYW9tinjiGeaDj0u4VrFhl9YECKf4R2PhqZG5(EwowOrslrxcAbG7rr3Qixle(oP5gHemLTopkvEkEm7hgojj)bHJ5hIWSWL)GAvG598NXH82CYbxn0LjQagmWNzjS1INq(6RrOMeAtfZyyEfVJgeQCnrFY7s4J(ffzrWaKNygvtTyQHkHdWzJWuqlG3oGDWhhcXZ)hmtB)IOYhI0P2u3f6ChK0at1JLMK08uB75L2yxZenXaS(dWwyaxCkAjiTdaqO0gbfgNRPk2KT5VatV5RrByLIvCgvJ2DooohGw6hWrW7MVbhvKaNKNvnVWZ6kzCBDuqwkACfZMjqncPtHBvVsZmcvamZVdQKTkNfar5LTkkdFCE7Fu615q0IFKJR2vz2fWa5yzQ7ycqHSTX4UPwbru1YxmA9lMcCMCnnuanriYXnnP4IpkbqiKttcGFST0SVgf125wqJZTGMNBb7EUf06ClO95wqNZTG9o3cQRD2L8SNB0p7jh9ZE2r)SNE0p35NcUH2hDVfZ6VFCuErua6jooof0cP15a11A3gxrnBKVHbXcf7a46rWnd4s5jacpZfWnqrykGCG)8QHZ6F9nUEUZ6p7E3b9N6D3n3)XRh7D3v35Ifa7Yp82MGXI93Vfd5sJ)WiYYB)GaqdmPWpE)t3b2GXhc2XlHBXUyUbj8P(aOVKYA7wAggF6Z3YJLR4u0R7WpE7WXZEh0SagZmYJFNFvJHguDTr07Fm8HBM8HF49W0b)qZK4vQOERJrBV35J2OECrsi45VHOJBmBXznF5gWqOlVjBrjwpbiP6WWUOJTGlbLevhLb065LN4V5hrvbpjU7bsGCXBw53qzonHtquSMOhzWJiwbUNDqDnNxkaR8lsy68(4tko656F1bh559QFofzQaYJAiA1qofLWRf0l741eBFCKAiaysarQsb48daYYhA40Ff2co8Mr2wDT017bWM7y70rRhpbfUBI3UeyXyunVcWgYelZkkrufibheFpnnll7UDSCSnaa5IuCGy4VWgqI3PNr3U96PbXk6iGQlYPYGjZMn52Px)Xp1iqNYHcmewqa3Rgaym8aeMF3HjqsZ4e6bdz9Aa99GbEsD0(xyCiMR6t2ylYtOOmeoAqbpaH17dyRumdxWb1dQLE885wxEmEh20LRdnHutbW)1FyYy3hUE8p6bYOrXEZasg7L3WrXYm)5i2im7QZf8HCC1pRZhaeEvZe(Bls9ejnHKG5maqR85tehaWkYLSe5SlAvzkgeeMizXoli4mJLHkkxGweAj1C3O2CciNk5tqPzhLfXscZhHzP4H7V(cXZ3a(NV4tvvGtJ0KiTnhoazEHSJpEWclI(cME63YPTaq)mPLvKrtwpXFmNv8kJLiWZkhvvPM2JVc182FEdgHx(A(Em4ntRBzYbABkyy8l3F9dFaSa(WTSWi)hgHPW9HQqRUSOyHS7RhqgY70)Ll3)e9lJFH(Ro)s9mIPlRlytmjhI)SKlkhZIgTj9vvGZLYNXlF(dvOYQY0fU8eRtdzXe8OTB2a610Zaqkmb05p0hCHoiJ5xSYd(ol7JyILV8w0kz6RvLMwKLhg(3VR)y3RNmwRZdxnzYv9VYfiL4q)Sm)h(WKBUQ)0P9b)B37E56oY(tQVDzxzBQyoG)IYIOlRuvrkeRTW5PmrYpyQPqrfrnbtd74gNNxffxdZsvrkhCEWdBD5c68yPU2CABVap(DnN3PSuCOSnLV0s1mQ4TkSxQTsA0jBxpNvQYmTfv4AMPeDz5RpMy((N(oH89FPuG)F)7v4aQcD1PCvL6tPXoQRPENUD7AyzB4yOzyXxgHJBE43KsHyywzHjVfEY5yIryA4inwDsUolsiORt7Rl5UtJesBBTLaKeGtmE6vKvqjL6QjdQuMrLOajkqFkG2fwsW14MrZBtUy3Oj9Va(gyB8bmCWqxKKFCpIv5EIV53QdmdjNnP5rb(P)Pp3OHSCavgmaXmpd4HuW3IU8XhRwMZznaQ1MTa(6imYSNTt3EWWv3Ux3oAMIHQYkHwnVwFJhzRgv88Yu65s2Ve2Xh5O1PRwhhhDBhtRo9qDetRkqLOP1JSAJh3ePISPyVkICarqiL5jJJihEsgIqJ8Vvf6bHIIKkiM6mH7(5saaZlXLsjwOqyvNNrQ3Bw1h7018YUAY9IY)KLyomSK))DE0Bd18xNeQFuu2TLb6teE3V9SpFmlf)HN)5tek(3Y783Y78)AN3zL0k)MPG(pG8ohL)POWq(E44G8Ckth5rtH7PZ05A)V4YT8DDiybwVxTKLACSKF(2zI9CtmT6G69t6VJuXlgo6hH39BiT0)XmN05x7CYFKPQU1eJvlDAV)utxM05gPJwnr1kjWUEQPpNuA(7roQ1fDDBBTIFZzQ(8xiGZoX1q1USxphntlAFx(N20v3iRTV7Sm3w6Up7OAovoVBSRsoJ1)VzcLvx4M)vy7IC4U243JSf8voMVtV1w(9kHb2622wDGrgc0xttoc(9kHb1zdD6jA(FhsyWx7f25BlZY3wML)KVmlJmDm0bRrDnCm6zPBrgDC(2kV8Ew5LoFBLx(2kV8VAR8Y831kVCwjAV100Fyg4RoH44eqoD8lW(faQveZeZ75SmOkEa5LZLYjkd6dUampXmx5N98(NMTITMXrbLHujD7kefQEVcKhaLHpnCWrzzEAUyHg43Pa1Ulb6Qy4xzh)JGvlA2wvhkdXbEaIXJb6QXHeq8G40TGMb)kHO6QDaG09mlXJbnfEwwswsdpAGkpdgvz7fMOxldo8chf50oCJvxOth3PGv4aacXHb2icBy4dFpDpkawK(Iuke9EVt9HCGskpIgYStZpNe0DRaM39onoCr4ONF6IWFPC8IGHoo7TkIfhks5oxGvCsWC)09JNnCAJtc6HhXuYiXpbUCUEsBfw9iU66(P(32F8HNAuZEwA9oYjjMQ0T9)4W3Qk16L7go7n7cXHtLNIOP3F9vvh9wt(PpuCGkDCeNI(d6MBNm(ho449cwqvkF55bMFAgVAy)zF6hgtXDFabE8QaDI7jMjuhg3p(hgp5NoKIowzVB61dDRiIkMtNASGJmBmDYhVF4zvXAmR(Gfam3gNxxQsQG4LitDV98tdA9QHa7RUOSCcYQ2HmVop)tioIZR)QXt7Ft)RUECBtv17J7h)XPtU)U7UP)NviUtoNnC8WB)8ziiqaYb)ncVqLlRM8uEbgilDluTYLyQNauKGHE0sogXEArqAwcEaPs3qoyMXdJxe6cDi2ixr8RfMJCA1a44rlxcoAeNTRUYZIfGhCZQOaSk1CvEGLNlTSLN1t5X)28ygDU0wEMqTKZPMu(m6tNMULiK6krVAZ9Kb6PPl3YAEwQLhfAtU6vYZjuc3e6TL2tfsE0uucB9UYI0Zux3wf7YLAYtvn1I9NoCCFVpp8MBkvB1BEFA0QOIP0UM6Wq1sMEPHpzNBw1PFC6WHJpfdXDf4mmPH0MPSZCOCpCBAYZhl)ex2Th9z8EsQSl0BCMD7rDZp5NHitQuaKtJDLTLDVA78z9JRvBzwEa2RvV6oCo(WOME1BoPDfiSNSABsbl7n79JzV32U8EvqolB00BYryMFQrp2IArdBqxwEW(7wAOW4aFQTm3Cfgs6ZjkxBcTt935h7hgL8M97DvaSlVxhmlnqsAzuEJ43uvNwyhKDYIuov4Tzcq1JvB621DDEuD7AUmpilmJzBbRCXhtnM4LzBJcpTI5pQiIRIG5OSP7YIy5fTsmdVF20(30gXWTjUJHlB6jS700XBl6MfQNCw0DaabpNVgzYdbm)aidHfsjdFEwQFya)Eqtbgmb3NwPf5pVlnNFWSDZaHlcLVLyHYQIKknHF44FLGyNgMwL08fy69ODua3V1G6NSE5X81GwQo5HFwENEi35SMDRUeUmD044Ut2brWqBhfiYpmRhLj(CZlBWJj(YAECRVkeuOgSf(BJlQUAdqXaW0ZbNcz8q)NtlogMXBEoxp4odPSoBahWbucJORmUTRzzrbqnY3LJxbb57wppnoNhbzv0slI9xYpM1LxODTg5aeFwBCkDqarYPm4XJXvJXl3omjnh7WGtRsFzUmCFEhLcwr4KusfOETXirCZOGGC8dkIEjQyhfFiY(RaviwYnEEOENPTcNh9fsUQxTE8RMVQjsoIh1iHdPm5jVQsK8dukIOWc5ciRiculB8Yc5LcGNIsWlHaIZVmoDU)v8mjl6KmwaxHHVCwcPaKiuZRg(T4OfaZHNfc(n5xm7fATg5HvBlMTe3ve4n8hri4niHsBv79vjSR2RfZ5IvYAWX)ABTPSYLnDTyYBPhBlFHk5kQw5lx9lCnG0O1aQC75zZVAhu70YbsTx)MnYXgxNbLwRtEVJmr38(gGTo)kh4yVSfjgkQi3uXA7eSYhVVrC3)3U4I9pvSkkF)tyz2)euA43VUILGVhEbNU2)eTc(7Fkf(FAj)3)K)(N46yyZ(ZPjmERgkB2J0i8saDaw8)s9E(1O4yQ)P2dCJuiBi(3lsPVkBxHnG)T9pHfnYpgZQe0KB2wS)PvSmwz7crRSciCWeVsNGViGPo(9JZtRvGcf6NF)xb9vUCqeU)VH1gLRH2AHOGKYnWHsxIemzhbjqXxjyzqliIHB)tFNWsY(NaRmF)()MyqD5rmeT)P)lQu)vE)Yzcyltx6i8jg1S(9xqIrYIYbIpPaza81(KZnL2FHNabhGAwMIZny6x5fGi604qOASIIOKLixJp)dpq9GG8lY2YuO)wSVtJbSOIbbfPPc3dCOauv5LzAn(JHsZ3iwvoRXq0OLzkumg4XXcdbaYeNnHzWfEMx1QUabI3ENuDbbrDhwyrhc(2I59fpLW1gcYM7)CkBbsx9LFA02eAVoK)DFVODaKmO8h6NfNX(zubjKMrYy)JTrzCvU)dW(pacJ3HVMIjTTAiaOC2)e0kM1KMAar6Yk5jO8)12lhhDaVGLcEBZzIzlHGhED3G6AXiR1px8rYNC5R)U2euoYvNttHKQoexlFqMpinrrNsAAHKDKAfO9sCAOKiRiGfGEUkfCS7ByIeOckOHv4uY6TKIdPQqDTC6(v)Ses5aToGTxIAhQRoviUKIe1Gums3YzX6A)vYYhUKbnSKQy274MtJkYjb6aQfi7ZIDRX7XeVWUUSM0Dafy0)xrlr1lNpljQUWFhIKnHYE06055E8BIP01BIIPKRxTEgVI2WbyL9)mEbt9cl8d0kSXx4v52xw4tTdM(MxIYstquuaZFeOsc83VNIqO52xGAcVB9xc4ThHgAzzy5L705sh2U3ciTyhTjODabO8f6rbaowEBkAEeA5kazEsRetFAN4VZZD7IfP4LkLC7rt3iChDOveTe0HoXqRFwGFcZ7wqv(wkwTDYTsn2O2hPrVX)f)ttFtxTlf(XkVFmngA9uXAp5hfk3IeY7pm13nM2XZXPOukEey6AzByBRPRBAAAPzl2EqphHtP09cq2opq(QinBhxya3YoyKK9WneroEluVtDZuYfvQUc90R2NDhxtJV1O4BckmGSvrfcav4QicbvH0IA8FqzWv)BbZNcZbxZhiaSSi(EEABcDpDjIPG2WG(rjERyXBkFPbUD(6pB20RhC)SHEUdVz4hM5n7(ztMED)B0PWQlVJ6KTn0pJMm9Jdllhwm5M886XJMuVbORxC(DCMGvmh5eZlpWeZvUWnXfrQilwCZ0Xxpj1o(wCBJo52b9bQ86BhIT)K7MDnin4Dx)XdVXBYDdhp8k894Y0LKlgJIe9bqytaaiIJKXNU2fOZpZR4BoyOS34E11U9hCZqVjJPSWX7vSoUZMoS)Tdl3CRJUEk8Q7hZb6cXirPnadnsayJVZUf3L61x6UAxEG01YO4(Ix9oKxEjZFKlA95L3S8ZRFZYpfK)hbQEhC199pTECGcSVd2r()tDC(1R3ULmU81Q3O0S91KrAO9hHWI5xREvENls((NR47NBLNc3bxoCSPbR1Hq0HiEBIeK3hLLfVm5uYmQin4WV7hZ2UPiVX4cIbmh3GNU065NKqBHlezrI4ceSCJfH7qBCdEuUHUf)7GGLHtVE6MAoIVhI7zeDCRiG)R8qiFFMYhnIJ7wcUZ09xY3ENccCd6XQo1rzzP8qZurDdVze)6wuuvIh1CCrKc4dlxKp14DElIYYjV9UCeuIBJ163TNr8RuiW5LFSxvAvl)36c(zdtKvkEgi2o3RC7pZ3Z8GddimEWbPlUl7NtoakWm9jFoIVT9Pn5jvDQ2PEiv36EeZMG9OZVRjR1Hr53uDGesfhDVM3cn)FGl4r5jQ73o7TIFOWQR3mCgL57zgOlFgOuvGa0XpRMvUTfEGND94p7n7tGB5zvZfYtBXFIpwWKve0OcLOfAVynOPMpQKyQ1trhminngpMknvd5A8H1(EHIrLk16P9V(QAQ1K6kOb3WKWjSdW3y(q8DzHVvL4PHH20vYDiTBJLKT4Xh)Fd'

	if E.Retail then
		_detalhes:ImportProfile(retail, name)
	elseif E.TBC then
		_detalhes:ImportProfile(tbc, name)
	elseif E.Classic then
		_detalhes:ImportProfile(classic, name)
	end

	-- Apply the Profile
	if _detalhes:GetCurrentProfileName() ~= name then _detalhes:ApplyProfile(name) end

	-- Load on all characters
	_detalhes.always_use_profile = true
	_detalhes.always_use_profile_name = name

	L1UI:Print(L["Details profile has been set."])
end
