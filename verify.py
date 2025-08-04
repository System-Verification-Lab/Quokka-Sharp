import itertools

def csqrtx_direct(xc0, zc0, xt0, zt0, s0):
    s1  = s0 ^ (xt0 and zt0)
    xc1 = xc0; zc1 = zc0; xt1 = zt0; zt1 = xt0
    Zc2 = zc1 or xc1 or xt1
    Zt2 = zt1 or xc1 or xt1
    term1 = xc1 and zc1 and (not Zc2)
    term2 = zt1 and xt1 and (not Zt2)
    term3 = (not xc1 or not xt1) and (zt1 ^ Zt2) and (zc1 ^ Zc2)
    s2  = s1 ^ term1 ^ term2 ^ term3
    xc2 = xc1; xt2 = xt1
    xc3 = xc2; zc3 = Zc2
    xt3 = Zt2; zt3 = xt2
    s3  = s2 ^ (xt2 and Zt2)
    return xc3, zc3, xt3, zt3, s3

def csqrtx_direct_closed(xc0: bool, zc0: bool, xt0: bool, zt0: bool, s0: bool):
    xc3 = xc0
    zc3 = zc0 or xc0 or zt0
    xt3 = xt0 or xc0 or zt0
    zt3 = zt0
    s3  = s0    ^ (xt0 and zt0) \
                ^ (xc0 and zc0 and (not (zc0 or xc0 or zt0))) \
                ^ (xt0 and zt0 and (not (xt0 or xc0 or zt0))) \
                ^ ((not xc0 or not zt0) and (xt0 ^ (xt0 or xc0 or zt0)) and (zc0 ^ (zc0 or xc0 or zt0))) \
                ^ (zt0 and (xt0 or xc0 or zt0))
    return xc3, zc3, xt3, zt3, s3

# step‐by‐step for reference
def apply_h(xc, zc, xt, zt, s):
    s1  = s ^ (xt & zt)
    return xc, zc, zt, xt, s1

def apply_cs(xc, zc, xt, zt, s):
    s2 = s \
        ^ (xc and zc and (not (zc or xc or xt))) \
        ^ (zt and xt and (not (zt or xc or xt))) \
        ^ ((not xc or not xt) and (zt ^ (zt or xc or xt)) and (zc ^ (zc or xc or xt)))
    return xc, (zc or xc or xt), xt, (zt or xc or xt), s2

def csqrtx_stepwise(xc0, zc0, xt0, zt0, s0):
    xc1, zc1, xt1, zt1, s1 = apply_h(xc0, zc0, xt0, zt0, s0)
    xc2, zc2, xt2, zt2, s2 = apply_cs(xc1, zc1, xt1, zt1, s1)
    xc3, zc3, xt3, zt3, s3 = apply_h(xc2, zc2, xt2, zt2, s2)
    return xc3, zc3, xt3, zt3, s3

# verify
mismatches = []
for xc0, zc0, xt0, zt0, s0 in itertools.product([0,1], repeat=5):
    d = csqrtx_direct_closed(xc0, zc0, xt0, zt0, s0)
    w = csqrtx_stepwise(xc0, zc0, xt0, zt0, s0)
    if d != w:
        mismatches.append(( (xc0,zc0,xt0,zt0,s0), d, w ))

if not mismatches:
    print("✔  All 32 cases match!")
else:
    print("✘  Mismatches:", mismatches)
