type i1 = int;

type i8 = int;

type i16 = int;

type i24 = int;

type i32 = int;

type i40 = int;

type i48 = int;

type i56 = int;

type i64 = int;

type i96 = int;

type i128 = int;

type ref = bv64;

type float = i32;

const $0: i32;

axiom $0 == 0;

const $0.ref: ref;

axiom $0.ref == 0bv64;

const $1.ref: ref;

axiom $1.ref == 1bv64;

const $2.ref: ref;

axiom $2.ref == 2bv64;

const $3.ref: ref;

axiom $3.ref == 3bv64;

const $4.ref: ref;

axiom $4.ref == 4bv64;

const $5.ref: ref;

axiom $5.ref == 5bv64;

const $6.ref: ref;

axiom $6.ref == 6bv64;

const $7.ref: ref;

axiom $7.ref == 7bv64;

const $8.ref: ref;

axiom $8.ref == 8bv64;

const $9.ref: ref;

axiom $9.ref == 9bv64;

const $10.ref: ref;

axiom $10.ref == 10bv64;

const $11.ref: ref;

axiom $11.ref == 11bv64;

const $12.ref: ref;

axiom $12.ref == 12bv64;

const $13.ref: ref;

axiom $13.ref == 13bv64;

const $14.ref: ref;

axiom $14.ref == 14bv64;

const $1024.ref: ref;

axiom $1024.ref == 1024bv64;

var $M.0: [ref]i8;

var $M.1: [ref]i32;

var $M.2: [ref]i32;

var $M.3: [ref]i64;

var $M.4: [ref]i64;

var $M.5: [ref]i64;

var $M.6: [ref]i64;

var $M.7: i32;

var $M.8: [ref]i8;

var $M.9: [ref]i32;

var $M.10: [ref]i32;

var $M.11: [ref]i32;

axiom $GLOBALS_BOTTOM == $sub.ref(0bv64, 360bv64);

axiom $EXTERNS_BOTTOM == $sub.ref(0bv64, 32784bv64);

axiom $MALLOC_TOP == 2136997887bv64;

function {:builtin "bv2int"} $bv2int.64(i: bv64) : i64;

function {:builtin "(_ int2bv 64)"} $int2bv.64(i: i64) : bv64;

function {:inline} $p2i.ref.i8(p: ref) : i8
{
  $trunc.i64.i8($bv2int.64(p))
}

function {:inline} $i2p.i8.ref(i: i8) : ref
{
  $int2bv.64($zext.i8.i64(i))
}

function {:inline} $p2i.ref.i16(p: ref) : i16
{
  $trunc.i64.i16($bv2int.64(p))
}

function {:inline} $i2p.i16.ref(i: i16) : ref
{
  $int2bv.64($zext.i16.i64(i))
}

function {:inline} $p2i.ref.i32(p: ref) : i32
{
  $trunc.i64.i32($bv2int.64(p))
}

function {:inline} $i2p.i32.ref(i: i32) : ref
{
  $int2bv.64($zext.i32.i64(i))
}

function {:inline} $p2i.ref.i64(p: ref) : i64
{
  $bv2int.64(p)
}

function {:inline} $i2p.i64.ref(i: i64) : ref
{
  $int2bv.64(i)
}

function {:inline} $eq.ref(p1: ref, p2: ref) : i1
{
  (if $eq.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $eq.ref.bool(p1: ref, p2: ref) : bool
{
  $eq.bv64.bool(p1, p2)
}

function {:inline} $ne.ref(p1: ref, p2: ref) : i1
{
  (if $ne.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $ne.ref.bool(p1: ref, p2: ref) : bool
{
  $ne.bv64.bool(p1, p2)
}

function {:inline} $ugt.ref(p1: ref, p2: ref) : i1
{
  (if $ugt.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $ugt.ref.bool(p1: ref, p2: ref) : bool
{
  $ugt.bv64.bool(p1, p2)
}

function {:inline} $uge.ref(p1: ref, p2: ref) : i1
{
  (if $uge.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $uge.ref.bool(p1: ref, p2: ref) : bool
{
  $uge.bv64.bool(p1, p2)
}

function {:inline} $ult.ref(p1: ref, p2: ref) : i1
{
  (if $ult.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $ult.ref.bool(p1: ref, p2: ref) : bool
{
  $ult.bv64.bool(p1, p2)
}

function {:inline} $ule.ref(p1: ref, p2: ref) : i1
{
  (if $ule.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $ule.ref.bool(p1: ref, p2: ref) : bool
{
  $ule.bv64.bool(p1, p2)
}

function {:inline} $sgt.ref(p1: ref, p2: ref) : i1
{
  (if $sgt.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $sgt.ref.bool(p1: ref, p2: ref) : bool
{
  $sgt.bv64.bool(p1, p2)
}

function {:inline} $sge.ref(p1: ref, p2: ref) : i1
{
  (if $sge.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $sge.ref.bool(p1: ref, p2: ref) : bool
{
  $sge.bv64.bool(p1, p2)
}

function {:inline} $slt.ref(p1: ref, p2: ref) : i1
{
  (if $slt.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $slt.ref.bool(p1: ref, p2: ref) : bool
{
  $slt.bv64.bool(p1, p2)
}

function {:inline} $sle.ref(p1: ref, p2: ref) : i1
{
  (if $sle.bv64.bool(p1, p2) then 1 else 0)
}

function {:inline} $sle.ref.bool(p1: ref, p2: ref) : bool
{
  $sle.bv64.bool(p1, p2)
}

function {:inline} $add.ref(p1: ref, p2: ref) : ref
{
  $add.bv64(p1, p2)
}

function {:inline} $sub.ref(p1: ref, p2: ref) : ref
{
  $sub.bv64(p1, p2)
}

function {:inline} $mul.ref(p1: ref, p2: ref) : ref
{
  $mul.bv64(p1, p2)
}

const .str: ref;

axiom .str == $sub.ref(0bv64, 16bv64);

const .str2: ref;

axiom .str2 == $sub.ref(0bv64, 30bv64);

const .str3: ref;

axiom .str3 == $sub.ref(0bv64, 44bv64);

const in6addr_any: ref;

axiom in6addr_any == $sub.ref(0bv64, 32776bv64);

const errno: ref;

axiom errno == $sub.ref(0bv64, 32784bv64);

const send_dg.have_sendmmsg: ref;

axiom send_dg.have_sendmmsg == $sub.ref(0bv64, 48bv64);

const __SMACK_dummy: ref;

axiom __SMACK_dummy == $sub.ref(0bv64, 56bv64);

procedure __SMACK_dummy(v: i32);



const __SMACK_code: ref;

axiom __SMACK_code == $sub.ref(0bv64, 64bv64);

procedure __SMACK_code.ref($p0: ref);



procedure __SMACK_code.ref.i32($p0: ref, p.1: i32);



const __VERIFIER_assert: ref;

axiom __VERIFIER_assert == $sub.ref(0bv64, 72bv64);

procedure __VERIFIER_assert(x: i32);
  modifies $exn;



implementation {:ForceInline} __VERIFIER_assert(x: i32)
{

  $bb0:
    call {:si_unique_call 0} {:cexpr "x"} boogie_si_record_i32(x);
    call {:si_unique_call 1} {:cexpr "v"} boogie_si_record_i32($u0);
    assume {:sourceloc "/usr/local/share/smack/lib/smack.c", 95, 3} true;
    assume true;
    assume {:sourceloc "/usr/local/share/smack/lib/smack.c", 36, 21} true;
    assert x != $0;
    assume {:sourceloc "/usr/local/share/smack/lib/smack.c", 37, 1} true;
    $exn := false;
    return;
}



const malloc: ref;

axiom malloc == $sub.ref(0bv64, 80bv64);

procedure malloc($i0: i64) returns ($r: ref);
  modifies $CurrAddr, $Alloc;



implementation malloc($i0: i64) returns ($r: ref)
{

  anon0:
    call {:si_unique_call 2} $r := $alloc($int2bv.64($i0));
    return;
}



const llvm.memset.p0i8.i64: ref;

axiom llvm.memset.p0i8.i64 == $sub.ref(0bv64, 88bv64);

procedure llvm.memset.p0i8.i64($p0: ref, $i1: i8, $i2: i64, $i3: i32, $i4: i1);



const __SMACK_decls: ref;

axiom __SMACK_decls == $sub.ref(0bv64, 96bv64);

function {:inline} $bitcast.ref.ref(i: ref) : ref
{
  i
}

function {:bvbuiltin "bvadd"} $add.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvadd"} $add.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvadd"} $add.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvadd"} $add.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvadd"} $add.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvadd"} $add.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvadd"} $add.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvadd"} $add.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvadd"} $add.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvadd"} $add.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvadd"} $add.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvsub"} $sub.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvsub"} $sub.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvsub"} $sub.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvsub"} $sub.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvsub"} $sub.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvsub"} $sub.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvsub"} $sub.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvsub"} $sub.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvsub"} $sub.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvsub"} $sub.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvsub"} $sub.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvmul"} $mul.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvmul"} $mul.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvmul"} $mul.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvmul"} $mul.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvmul"} $mul.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvmul"} $mul.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvmul"} $mul.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvmul"} $mul.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvmul"} $mul.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvmul"} $mul.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvmul"} $mul.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvudiv"} $udiv.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvudiv"} $udiv.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvudiv"} $udiv.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvudiv"} $udiv.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvudiv"} $udiv.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvudiv"} $udiv.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvudiv"} $udiv.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvudiv"} $udiv.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvudiv"} $udiv.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvudiv"} $udiv.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvudiv"} $udiv.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvsdiv"} $sdiv.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvsdiv"} $sdiv.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvsdiv"} $sdiv.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvsdiv"} $sdiv.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvsdiv"} $sdiv.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvsdiv"} $sdiv.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvsdiv"} $sdiv.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvsdiv"} $sdiv.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvsdiv"} $sdiv.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvsdiv"} $sdiv.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvsdiv"} $sdiv.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvsmod"} $smod.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvsmod"} $smod.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvsmod"} $smod.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvsmod"} $smod.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvsmod"} $smod.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvsmod"} $smod.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvsmod"} $smod.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvsmod"} $smod.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvsmod"} $smod.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvsmod"} $smod.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvsmod"} $smod.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvsrem"} $srem.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvsrem"} $srem.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvsrem"} $srem.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvsrem"} $srem.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvsrem"} $srem.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvsrem"} $srem.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvsrem"} $srem.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvsrem"} $srem.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvsrem"} $srem.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvsrem"} $srem.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvsrem"} $srem.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvurem"} $urem.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvurem"} $urem.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvurem"} $urem.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvurem"} $urem.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvurem"} $urem.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvurem"} $urem.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvurem"} $urem.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvurem"} $urem.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvurem"} $urem.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvurem"} $urem.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvurem"} $urem.bv1(i1: bv1, i2: bv1) : bv1;

function {:inline} $min.bv128(i1: bv128, i2: bv128) : bv128
{
  (if $slt.bv128.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv96(i1: bv96, i2: bv96) : bv96
{
  (if $slt.bv96.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv64(i1: bv64, i2: bv64) : bv64
{
  (if $slt.bv64.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv56(i1: bv56, i2: bv56) : bv56
{
  (if $slt.bv56.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv48(i1: bv48, i2: bv48) : bv48
{
  (if $slt.bv48.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv40(i1: bv40, i2: bv40) : bv40
{
  (if $slt.bv40.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv32(i1: bv32, i2: bv32) : bv32
{
  (if $slt.bv32.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv24(i1: bv24, i2: bv24) : bv24
{
  (if $slt.bv24.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv16(i1: bv16, i2: bv16) : bv16
{
  (if $slt.bv16.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv8(i1: bv8, i2: bv8) : bv8
{
  (if $slt.bv8.bool(i1, i2) then i1 else i2)
}

function {:inline} $min.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $slt.bv1.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv128(i1: bv128, i2: bv128) : bv128
{
  (if $sgt.bv128.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv96(i1: bv96, i2: bv96) : bv96
{
  (if $sgt.bv96.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv64(i1: bv64, i2: bv64) : bv64
{
  (if $sgt.bv64.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv56(i1: bv56, i2: bv56) : bv56
{
  (if $sgt.bv56.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv48(i1: bv48, i2: bv48) : bv48
{
  (if $sgt.bv48.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv40(i1: bv40, i2: bv40) : bv40
{
  (if $sgt.bv40.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv32(i1: bv32, i2: bv32) : bv32
{
  (if $sgt.bv32.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv24(i1: bv24, i2: bv24) : bv24
{
  (if $sgt.bv24.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv16(i1: bv16, i2: bv16) : bv16
{
  (if $sgt.bv16.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv8(i1: bv8, i2: bv8) : bv8
{
  (if $sgt.bv8.bool(i1, i2) then i1 else i2)
}

function {:inline} $max.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $sgt.bv1.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv128(i1: bv128, i2: bv128) : bv128
{
  (if $ult.bv128.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv96(i1: bv96, i2: bv96) : bv96
{
  (if $ult.bv96.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv64(i1: bv64, i2: bv64) : bv64
{
  (if $ult.bv64.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv56(i1: bv56, i2: bv56) : bv56
{
  (if $ult.bv56.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv48(i1: bv48, i2: bv48) : bv48
{
  (if $ult.bv48.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv40(i1: bv40, i2: bv40) : bv40
{
  (if $ult.bv40.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv32(i1: bv32, i2: bv32) : bv32
{
  (if $ult.bv32.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv24(i1: bv24, i2: bv24) : bv24
{
  (if $ult.bv24.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv16(i1: bv16, i2: bv16) : bv16
{
  (if $ult.bv16.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv8(i1: bv8, i2: bv8) : bv8
{
  (if $ult.bv8.bool(i1, i2) then i1 else i2)
}

function {:inline} $umin.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $ult.bv1.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv128(i1: bv128, i2: bv128) : bv128
{
  (if $ugt.bv128.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv96(i1: bv96, i2: bv96) : bv96
{
  (if $ugt.bv96.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv64(i1: bv64, i2: bv64) : bv64
{
  (if $ugt.bv64.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv56(i1: bv56, i2: bv56) : bv56
{
  (if $ugt.bv56.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv48(i1: bv48, i2: bv48) : bv48
{
  (if $ugt.bv48.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv40(i1: bv40, i2: bv40) : bv40
{
  (if $ugt.bv40.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv32(i1: bv32, i2: bv32) : bv32
{
  (if $ugt.bv32.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv24(i1: bv24, i2: bv24) : bv24
{
  (if $ugt.bv24.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv16(i1: bv16, i2: bv16) : bv16
{
  (if $ugt.bv16.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv8(i1: bv8, i2: bv8) : bv8
{
  (if $ugt.bv8.bool(i1, i2) then i1 else i2)
}

function {:inline} $umax.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $ugt.bv1.bool(i1, i2) then i1 else i2)
}

function {:bvbuiltin "bvshl"} $shl.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvshl"} $shl.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvshl"} $shl.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvshl"} $shl.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvshl"} $shl.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvshl"} $shl.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvshl"} $shl.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvshl"} $shl.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvshl"} $shl.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvshl"} $shl.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvshl"} $shl.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvlshr"} $lshr.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvlshr"} $lshr.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvlshr"} $lshr.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvlshr"} $lshr.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvlshr"} $lshr.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvlshr"} $lshr.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvlshr"} $lshr.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvlshr"} $lshr.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvlshr"} $lshr.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvlshr"} $lshr.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvlshr"} $lshr.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvashr"} $ashr.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvashr"} $ashr.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvashr"} $ashr.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvashr"} $ashr.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvashr"} $ashr.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvashr"} $ashr.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvashr"} $ashr.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvashr"} $ashr.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvashr"} $ashr.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvashr"} $ashr.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvashr"} $ashr.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvnot"} $not.bv128(i: bv128) : bv128;

function {:bvbuiltin "bvnot"} $not.bv96(i: bv96) : bv96;

function {:bvbuiltin "bvnot"} $not.bv64(i: bv64) : bv64;

function {:bvbuiltin "bvnot"} $not.bv56(i: bv56) : bv56;

function {:bvbuiltin "bvnot"} $not.bv48(i: bv48) : bv48;

function {:bvbuiltin "bvnot"} $not.bv40(i: bv40) : bv40;

function {:bvbuiltin "bvnot"} $not.bv32(i: bv32) : bv32;

function {:bvbuiltin "bvnot"} $not.bv24(i: bv24) : bv24;

function {:bvbuiltin "bvnot"} $not.bv16(i: bv16) : bv16;

function {:bvbuiltin "bvnot"} $not.bv8(i: bv8) : bv8;

function {:bvbuiltin "bvnot"} $not.bv1(i: bv1) : bv1;

function {:bvbuiltin "bvand"} $and.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvand"} $and.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvand"} $and.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvand"} $and.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvand"} $and.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvand"} $and.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvand"} $and.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvand"} $and.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvand"} $and.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvand"} $and.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvand"} $and.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvor"} $or.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvor"} $or.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvor"} $or.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvor"} $or.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvor"} $or.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvor"} $or.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvor"} $or.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvor"} $or.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvor"} $or.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvor"} $or.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvor"} $or.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvxor"} $xor.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvxor"} $xor.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvxor"} $xor.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvxor"} $xor.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvxor"} $xor.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvxor"} $xor.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvxor"} $xor.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvxor"} $xor.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvxor"} $xor.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvxor"} $xor.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvxor"} $xor.bv1(i1: bv1, i2: bv1) : bv1;

function {:bvbuiltin "bvnand"} $nand.bv128(i1: bv128, i2: bv128) : bv128;

function {:bvbuiltin "bvnand"} $nand.bv96(i1: bv96, i2: bv96) : bv96;

function {:bvbuiltin "bvnand"} $nand.bv64(i1: bv64, i2: bv64) : bv64;

function {:bvbuiltin "bvnand"} $nand.bv56(i1: bv56, i2: bv56) : bv56;

function {:bvbuiltin "bvnand"} $nand.bv48(i1: bv48, i2: bv48) : bv48;

function {:bvbuiltin "bvnand"} $nand.bv40(i1: bv40, i2: bv40) : bv40;

function {:bvbuiltin "bvnand"} $nand.bv32(i1: bv32, i2: bv32) : bv32;

function {:bvbuiltin "bvnand"} $nand.bv24(i1: bv24, i2: bv24) : bv24;

function {:bvbuiltin "bvnand"} $nand.bv16(i1: bv16, i2: bv16) : bv16;

function {:bvbuiltin "bvnand"} $nand.bv8(i1: bv8, i2: bv8) : bv8;

function {:bvbuiltin "bvnand"} $nand.bv1(i1: bv1, i2: bv1) : bv1;

function {:inline} $eq.bv128.bool(i1: bv128, i2: bv128) : bool
{
  i1 == i2
}

function {:inline} $eq.bv128(i1: bv128, i2: bv128) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv96.bool(i1: bv96, i2: bv96) : bool
{
  i1 == i2
}

function {:inline} $eq.bv96(i1: bv96, i2: bv96) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv64.bool(i1: bv64, i2: bv64) : bool
{
  i1 == i2
}

function {:inline} $eq.bv64(i1: bv64, i2: bv64) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv56.bool(i1: bv56, i2: bv56) : bool
{
  i1 == i2
}

function {:inline} $eq.bv56(i1: bv56, i2: bv56) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv48.bool(i1: bv48, i2: bv48) : bool
{
  i1 == i2
}

function {:inline} $eq.bv48(i1: bv48, i2: bv48) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv40.bool(i1: bv40, i2: bv40) : bool
{
  i1 == i2
}

function {:inline} $eq.bv40(i1: bv40, i2: bv40) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv32.bool(i1: bv32, i2: bv32) : bool
{
  i1 == i2
}

function {:inline} $eq.bv32(i1: bv32, i2: bv32) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv24.bool(i1: bv24, i2: bv24) : bool
{
  i1 == i2
}

function {:inline} $eq.bv24(i1: bv24, i2: bv24) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv16.bool(i1: bv16, i2: bv16) : bool
{
  i1 == i2
}

function {:inline} $eq.bv16(i1: bv16, i2: bv16) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv8.bool(i1: bv8, i2: bv8) : bool
{
  i1 == i2
}

function {:inline} $eq.bv8(i1: bv8, i2: bv8) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $eq.bv1.bool(i1: bv1, i2: bv1) : bool
{
  i1 == i2
}

function {:inline} $eq.bv1(i1: bv1, i2: bv1) : bv1
{
  (if i1 == i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv128.bool(i1: bv128, i2: bv128) : bool
{
  i1 != i2
}

function {:inline} $ne.bv128(i1: bv128, i2: bv128) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv96.bool(i1: bv96, i2: bv96) : bool
{
  i1 != i2
}

function {:inline} $ne.bv96(i1: bv96, i2: bv96) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv64.bool(i1: bv64, i2: bv64) : bool
{
  i1 != i2
}

function {:inline} $ne.bv64(i1: bv64, i2: bv64) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv56.bool(i1: bv56, i2: bv56) : bool
{
  i1 != i2
}

function {:inline} $ne.bv56(i1: bv56, i2: bv56) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv48.bool(i1: bv48, i2: bv48) : bool
{
  i1 != i2
}

function {:inline} $ne.bv48(i1: bv48, i2: bv48) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv40.bool(i1: bv40, i2: bv40) : bool
{
  i1 != i2
}

function {:inline} $ne.bv40(i1: bv40, i2: bv40) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv32.bool(i1: bv32, i2: bv32) : bool
{
  i1 != i2
}

function {:inline} $ne.bv32(i1: bv32, i2: bv32) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv24.bool(i1: bv24, i2: bv24) : bool
{
  i1 != i2
}

function {:inline} $ne.bv24(i1: bv24, i2: bv24) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv16.bool(i1: bv16, i2: bv16) : bool
{
  i1 != i2
}

function {:inline} $ne.bv16(i1: bv16, i2: bv16) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv8.bool(i1: bv8, i2: bv8) : bool
{
  i1 != i2
}

function {:inline} $ne.bv8(i1: bv8, i2: bv8) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:inline} $ne.bv1.bool(i1: bv1, i2: bv1) : bool
{
  i1 != i2
}

function {:inline} $ne.bv1(i1: bv1, i2: bv1) : bv1
{
  (if i1 != i2 then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv128.bool(i1: bv128, i2: bv128) : bool;

function {:inline} $ule.bv128(i1: bv128, i2: bv128) : bv1
{
  (if $ule.bv128.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv96.bool(i1: bv96, i2: bv96) : bool;

function {:inline} $ule.bv96(i1: bv96, i2: bv96) : bv1
{
  (if $ule.bv96.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv64.bool(i1: bv64, i2: bv64) : bool;

function {:inline} $ule.bv64(i1: bv64, i2: bv64) : bv1
{
  (if $ule.bv64.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv56.bool(i1: bv56, i2: bv56) : bool;

function {:inline} $ule.bv56(i1: bv56, i2: bv56) : bv1
{
  (if $ule.bv56.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv48.bool(i1: bv48, i2: bv48) : bool;

function {:inline} $ule.bv48(i1: bv48, i2: bv48) : bv1
{
  (if $ule.bv48.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv40.bool(i1: bv40, i2: bv40) : bool;

function {:inline} $ule.bv40(i1: bv40, i2: bv40) : bv1
{
  (if $ule.bv40.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv32.bool(i1: bv32, i2: bv32) : bool;

function {:inline} $ule.bv32(i1: bv32, i2: bv32) : bv1
{
  (if $ule.bv32.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv24.bool(i1: bv24, i2: bv24) : bool;

function {:inline} $ule.bv24(i1: bv24, i2: bv24) : bv1
{
  (if $ule.bv24.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv16.bool(i1: bv16, i2: bv16) : bool;

function {:inline} $ule.bv16(i1: bv16, i2: bv16) : bv1
{
  (if $ule.bv16.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv8.bool(i1: bv8, i2: bv8) : bool;

function {:inline} $ule.bv8(i1: bv8, i2: bv8) : bv1
{
  (if $ule.bv8.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvule"} $ule.bv1.bool(i1: bv1, i2: bv1) : bool;

function {:inline} $ule.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $ule.bv1.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv128.bool(i1: bv128, i2: bv128) : bool;

function {:inline} $ult.bv128(i1: bv128, i2: bv128) : bv1
{
  (if $ult.bv128.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv96.bool(i1: bv96, i2: bv96) : bool;

function {:inline} $ult.bv96(i1: bv96, i2: bv96) : bv1
{
  (if $ult.bv96.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv64.bool(i1: bv64, i2: bv64) : bool;

function {:inline} $ult.bv64(i1: bv64, i2: bv64) : bv1
{
  (if $ult.bv64.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv56.bool(i1: bv56, i2: bv56) : bool;

function {:inline} $ult.bv56(i1: bv56, i2: bv56) : bv1
{
  (if $ult.bv56.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv48.bool(i1: bv48, i2: bv48) : bool;

function {:inline} $ult.bv48(i1: bv48, i2: bv48) : bv1
{
  (if $ult.bv48.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv40.bool(i1: bv40, i2: bv40) : bool;

function {:inline} $ult.bv40(i1: bv40, i2: bv40) : bv1
{
  (if $ult.bv40.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv32.bool(i1: bv32, i2: bv32) : bool;

function {:inline} $ult.bv32(i1: bv32, i2: bv32) : bv1
{
  (if $ult.bv32.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv24.bool(i1: bv24, i2: bv24) : bool;

function {:inline} $ult.bv24(i1: bv24, i2: bv24) : bv1
{
  (if $ult.bv24.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv16.bool(i1: bv16, i2: bv16) : bool;

function {:inline} $ult.bv16(i1: bv16, i2: bv16) : bv1
{
  (if $ult.bv16.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv8.bool(i1: bv8, i2: bv8) : bool;

function {:inline} $ult.bv8(i1: bv8, i2: bv8) : bv1
{
  (if $ult.bv8.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvult"} $ult.bv1.bool(i1: bv1, i2: bv1) : bool;

function {:inline} $ult.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $ult.bv1.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv128.bool(i1: bv128, i2: bv128) : bool;

function {:inline} $uge.bv128(i1: bv128, i2: bv128) : bv1
{
  (if $uge.bv128.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv96.bool(i1: bv96, i2: bv96) : bool;

function {:inline} $uge.bv96(i1: bv96, i2: bv96) : bv1
{
  (if $uge.bv96.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv64.bool(i1: bv64, i2: bv64) : bool;

function {:inline} $uge.bv64(i1: bv64, i2: bv64) : bv1
{
  (if $uge.bv64.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv56.bool(i1: bv56, i2: bv56) : bool;

function {:inline} $uge.bv56(i1: bv56, i2: bv56) : bv1
{
  (if $uge.bv56.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv48.bool(i1: bv48, i2: bv48) : bool;

function {:inline} $uge.bv48(i1: bv48, i2: bv48) : bv1
{
  (if $uge.bv48.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv40.bool(i1: bv40, i2: bv40) : bool;

function {:inline} $uge.bv40(i1: bv40, i2: bv40) : bv1
{
  (if $uge.bv40.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv32.bool(i1: bv32, i2: bv32) : bool;

function {:inline} $uge.bv32(i1: bv32, i2: bv32) : bv1
{
  (if $uge.bv32.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv24.bool(i1: bv24, i2: bv24) : bool;

function {:inline} $uge.bv24(i1: bv24, i2: bv24) : bv1
{
  (if $uge.bv24.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv16.bool(i1: bv16, i2: bv16) : bool;

function {:inline} $uge.bv16(i1: bv16, i2: bv16) : bv1
{
  (if $uge.bv16.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv8.bool(i1: bv8, i2: bv8) : bool;

function {:inline} $uge.bv8(i1: bv8, i2: bv8) : bv1
{
  (if $uge.bv8.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvuge"} $uge.bv1.bool(i1: bv1, i2: bv1) : bool;

function {:inline} $uge.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $uge.bv1.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv128.bool(i1: bv128, i2: bv128) : bool;

function {:inline} $ugt.bv128(i1: bv128, i2: bv128) : bv1
{
  (if $ugt.bv128.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv96.bool(i1: bv96, i2: bv96) : bool;

function {:inline} $ugt.bv96(i1: bv96, i2: bv96) : bv1
{
  (if $ugt.bv96.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv64.bool(i1: bv64, i2: bv64) : bool;

function {:inline} $ugt.bv64(i1: bv64, i2: bv64) : bv1
{
  (if $ugt.bv64.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv56.bool(i1: bv56, i2: bv56) : bool;

function {:inline} $ugt.bv56(i1: bv56, i2: bv56) : bv1
{
  (if $ugt.bv56.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv48.bool(i1: bv48, i2: bv48) : bool;

function {:inline} $ugt.bv48(i1: bv48, i2: bv48) : bv1
{
  (if $ugt.bv48.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv40.bool(i1: bv40, i2: bv40) : bool;

function {:inline} $ugt.bv40(i1: bv40, i2: bv40) : bv1
{
  (if $ugt.bv40.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv32.bool(i1: bv32, i2: bv32) : bool;

function {:inline} $ugt.bv32(i1: bv32, i2: bv32) : bv1
{
  (if $ugt.bv32.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv24.bool(i1: bv24, i2: bv24) : bool;

function {:inline} $ugt.bv24(i1: bv24, i2: bv24) : bv1
{
  (if $ugt.bv24.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv16.bool(i1: bv16, i2: bv16) : bool;

function {:inline} $ugt.bv16(i1: bv16, i2: bv16) : bv1
{
  (if $ugt.bv16.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv8.bool(i1: bv8, i2: bv8) : bool;

function {:inline} $ugt.bv8(i1: bv8, i2: bv8) : bv1
{
  (if $ugt.bv8.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvugt"} $ugt.bv1.bool(i1: bv1, i2: bv1) : bool;

function {:inline} $ugt.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $ugt.bv1.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv128.bool(i1: bv128, i2: bv128) : bool;

function {:inline} $sle.bv128(i1: bv128, i2: bv128) : bv1
{
  (if $sle.bv128.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv96.bool(i1: bv96, i2: bv96) : bool;

function {:inline} $sle.bv96(i1: bv96, i2: bv96) : bv1
{
  (if $sle.bv96.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv64.bool(i1: bv64, i2: bv64) : bool;

function {:inline} $sle.bv64(i1: bv64, i2: bv64) : bv1
{
  (if $sle.bv64.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv56.bool(i1: bv56, i2: bv56) : bool;

function {:inline} $sle.bv56(i1: bv56, i2: bv56) : bv1
{
  (if $sle.bv56.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv48.bool(i1: bv48, i2: bv48) : bool;

function {:inline} $sle.bv48(i1: bv48, i2: bv48) : bv1
{
  (if $sle.bv48.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv40.bool(i1: bv40, i2: bv40) : bool;

function {:inline} $sle.bv40(i1: bv40, i2: bv40) : bv1
{
  (if $sle.bv40.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv32.bool(i1: bv32, i2: bv32) : bool;

function {:inline} $sle.bv32(i1: bv32, i2: bv32) : bv1
{
  (if $sle.bv32.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv24.bool(i1: bv24, i2: bv24) : bool;

function {:inline} $sle.bv24(i1: bv24, i2: bv24) : bv1
{
  (if $sle.bv24.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv16.bool(i1: bv16, i2: bv16) : bool;

function {:inline} $sle.bv16(i1: bv16, i2: bv16) : bv1
{
  (if $sle.bv16.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv8.bool(i1: bv8, i2: bv8) : bool;

function {:inline} $sle.bv8(i1: bv8, i2: bv8) : bv1
{
  (if $sle.bv8.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsle"} $sle.bv1.bool(i1: bv1, i2: bv1) : bool;

function {:inline} $sle.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $sle.bv1.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv128.bool(i1: bv128, i2: bv128) : bool;

function {:inline} $slt.bv128(i1: bv128, i2: bv128) : bv1
{
  (if $slt.bv128.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv96.bool(i1: bv96, i2: bv96) : bool;

function {:inline} $slt.bv96(i1: bv96, i2: bv96) : bv1
{
  (if $slt.bv96.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv64.bool(i1: bv64, i2: bv64) : bool;

function {:inline} $slt.bv64(i1: bv64, i2: bv64) : bv1
{
  (if $slt.bv64.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv56.bool(i1: bv56, i2: bv56) : bool;

function {:inline} $slt.bv56(i1: bv56, i2: bv56) : bv1
{
  (if $slt.bv56.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv48.bool(i1: bv48, i2: bv48) : bool;

function {:inline} $slt.bv48(i1: bv48, i2: bv48) : bv1
{
  (if $slt.bv48.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv40.bool(i1: bv40, i2: bv40) : bool;

function {:inline} $slt.bv40(i1: bv40, i2: bv40) : bv1
{
  (if $slt.bv40.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv32.bool(i1: bv32, i2: bv32) : bool;

function {:inline} $slt.bv32(i1: bv32, i2: bv32) : bv1
{
  (if $slt.bv32.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv24.bool(i1: bv24, i2: bv24) : bool;

function {:inline} $slt.bv24(i1: bv24, i2: bv24) : bv1
{
  (if $slt.bv24.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv16.bool(i1: bv16, i2: bv16) : bool;

function {:inline} $slt.bv16(i1: bv16, i2: bv16) : bv1
{
  (if $slt.bv16.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv8.bool(i1: bv8, i2: bv8) : bool;

function {:inline} $slt.bv8(i1: bv8, i2: bv8) : bv1
{
  (if $slt.bv8.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvslt"} $slt.bv1.bool(i1: bv1, i2: bv1) : bool;

function {:inline} $slt.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $slt.bv1.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv128.bool(i1: bv128, i2: bv128) : bool;

function {:inline} $sge.bv128(i1: bv128, i2: bv128) : bv1
{
  (if $sge.bv128.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv96.bool(i1: bv96, i2: bv96) : bool;

function {:inline} $sge.bv96(i1: bv96, i2: bv96) : bv1
{
  (if $sge.bv96.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv64.bool(i1: bv64, i2: bv64) : bool;

function {:inline} $sge.bv64(i1: bv64, i2: bv64) : bv1
{
  (if $sge.bv64.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv56.bool(i1: bv56, i2: bv56) : bool;

function {:inline} $sge.bv56(i1: bv56, i2: bv56) : bv1
{
  (if $sge.bv56.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv48.bool(i1: bv48, i2: bv48) : bool;

function {:inline} $sge.bv48(i1: bv48, i2: bv48) : bv1
{
  (if $sge.bv48.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv40.bool(i1: bv40, i2: bv40) : bool;

function {:inline} $sge.bv40(i1: bv40, i2: bv40) : bv1
{
  (if $sge.bv40.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv32.bool(i1: bv32, i2: bv32) : bool;

function {:inline} $sge.bv32(i1: bv32, i2: bv32) : bv1
{
  (if $sge.bv32.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv24.bool(i1: bv24, i2: bv24) : bool;

function {:inline} $sge.bv24(i1: bv24, i2: bv24) : bv1
{
  (if $sge.bv24.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv16.bool(i1: bv16, i2: bv16) : bool;

function {:inline} $sge.bv16(i1: bv16, i2: bv16) : bv1
{
  (if $sge.bv16.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv8.bool(i1: bv8, i2: bv8) : bool;

function {:inline} $sge.bv8(i1: bv8, i2: bv8) : bv1
{
  (if $sge.bv8.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsge"} $sge.bv1.bool(i1: bv1, i2: bv1) : bool;

function {:inline} $sge.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $sge.bv1.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv128.bool(i1: bv128, i2: bv128) : bool;

function {:inline} $sgt.bv128(i1: bv128, i2: bv128) : bv1
{
  (if $sgt.bv128.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv96.bool(i1: bv96, i2: bv96) : bool;

function {:inline} $sgt.bv96(i1: bv96, i2: bv96) : bv1
{
  (if $sgt.bv96.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv64.bool(i1: bv64, i2: bv64) : bool;

function {:inline} $sgt.bv64(i1: bv64, i2: bv64) : bv1
{
  (if $sgt.bv64.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv56.bool(i1: bv56, i2: bv56) : bool;

function {:inline} $sgt.bv56(i1: bv56, i2: bv56) : bv1
{
  (if $sgt.bv56.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv48.bool(i1: bv48, i2: bv48) : bool;

function {:inline} $sgt.bv48(i1: bv48, i2: bv48) : bv1
{
  (if $sgt.bv48.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv40.bool(i1: bv40, i2: bv40) : bool;

function {:inline} $sgt.bv40(i1: bv40, i2: bv40) : bv1
{
  (if $sgt.bv40.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv32.bool(i1: bv32, i2: bv32) : bool;

function {:inline} $sgt.bv32(i1: bv32, i2: bv32) : bv1
{
  (if $sgt.bv32.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv24.bool(i1: bv24, i2: bv24) : bool;

function {:inline} $sgt.bv24(i1: bv24, i2: bv24) : bv1
{
  (if $sgt.bv24.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv16.bool(i1: bv16, i2: bv16) : bool;

function {:inline} $sgt.bv16(i1: bv16, i2: bv16) : bv1
{
  (if $sgt.bv16.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv8.bool(i1: bv8, i2: bv8) : bool;

function {:inline} $sgt.bv8(i1: bv8, i2: bv8) : bv1
{
  (if $sgt.bv8.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:bvbuiltin "bvsgt"} $sgt.bv1.bool(i1: bv1, i2: bv1) : bool;

function {:inline} $sgt.bv1(i1: bv1, i2: bv1) : bv1
{
  (if $sgt.bv1.bool(i1, i2) then 1bv1 else 0bv1)
}

function {:inline} $trunc.bv128.bv96(i: bv128) : bv96
{
  i[96:0]
}

function {:inline} $trunc.bv128.bv64(i: bv128) : bv64
{
  i[64:0]
}

function {:inline} $trunc.bv128.bv56(i: bv128) : bv56
{
  i[56:0]
}

function {:inline} $trunc.bv128.bv48(i: bv128) : bv48
{
  i[48:0]
}

function {:inline} $trunc.bv128.bv40(i: bv128) : bv40
{
  i[40:0]
}

function {:inline} $trunc.bv128.bv32(i: bv128) : bv32
{
  i[32:0]
}

function {:inline} $trunc.bv128.bv24(i: bv128) : bv24
{
  i[24:0]
}

function {:inline} $trunc.bv128.bv16(i: bv128) : bv16
{
  i[16:0]
}

function {:inline} $trunc.bv128.bv8(i: bv128) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv128.bv1(i: bv128) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv96.bv64(i: bv96) : bv64
{
  i[64:0]
}

function {:inline} $trunc.bv96.bv56(i: bv96) : bv56
{
  i[56:0]
}

function {:inline} $trunc.bv96.bv48(i: bv96) : bv48
{
  i[48:0]
}

function {:inline} $trunc.bv96.bv40(i: bv96) : bv40
{
  i[40:0]
}

function {:inline} $trunc.bv96.bv32(i: bv96) : bv32
{
  i[32:0]
}

function {:inline} $trunc.bv96.bv24(i: bv96) : bv24
{
  i[24:0]
}

function {:inline} $trunc.bv96.bv16(i: bv96) : bv16
{
  i[16:0]
}

function {:inline} $trunc.bv96.bv8(i: bv96) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv96.bv1(i: bv96) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv64.bv56(i: bv64) : bv56
{
  i[56:0]
}

function {:inline} $trunc.bv64.bv48(i: bv64) : bv48
{
  i[48:0]
}

function {:inline} $trunc.bv64.bv40(i: bv64) : bv40
{
  i[40:0]
}

function {:inline} $trunc.bv64.bv32(i: bv64) : bv32
{
  i[32:0]
}

function {:inline} $trunc.bv64.bv24(i: bv64) : bv24
{
  i[24:0]
}

function {:inline} $trunc.bv64.bv16(i: bv64) : bv16
{
  i[16:0]
}

function {:inline} $trunc.bv64.bv8(i: bv64) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv64.bv1(i: bv64) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv56.bv48(i: bv56) : bv48
{
  i[48:0]
}

function {:inline} $trunc.bv56.bv40(i: bv56) : bv40
{
  i[40:0]
}

function {:inline} $trunc.bv56.bv32(i: bv56) : bv32
{
  i[32:0]
}

function {:inline} $trunc.bv56.bv24(i: bv56) : bv24
{
  i[24:0]
}

function {:inline} $trunc.bv56.bv16(i: bv56) : bv16
{
  i[16:0]
}

function {:inline} $trunc.bv56.bv8(i: bv56) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv56.bv1(i: bv56) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv48.bv32(i: bv48) : bv32
{
  i[32:0]
}

function {:inline} $trunc.bv48.bv24(i: bv48) : bv24
{
  i[24:0]
}

function {:inline} $trunc.bv48.bv16(i: bv48) : bv16
{
  i[16:0]
}

function {:inline} $trunc.bv48.bv8(i: bv48) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv48.bv1(i: bv48) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv40.bv32(i: bv40) : bv32
{
  i[32:0]
}

function {:inline} $trunc.bv40.bv24(i: bv40) : bv24
{
  i[24:0]
}

function {:inline} $trunc.bv40.bv16(i: bv40) : bv16
{
  i[16:0]
}

function {:inline} $trunc.bv40.bv8(i: bv40) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv40.bv1(i: bv40) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv32.bv24(i: bv32) : bv24
{
  i[24:0]
}

function {:inline} $trunc.bv32.bv16(i: bv32) : bv16
{
  i[16:0]
}

function {:inline} $trunc.bv32.bv8(i: bv32) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv32.bv1(i: bv32) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv24.bv16(i: bv24) : bv16
{
  i[16:0]
}

function {:inline} $trunc.bv24.bv8(i: bv24) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv24.bv1(i: bv24) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv16.bv8(i: bv16) : bv8
{
  i[8:0]
}

function {:inline} $trunc.bv16.bv1(i: bv16) : bv1
{
  i[1:0]
}

function {:inline} $trunc.bv8.bv1(i: bv8) : bv1
{
  i[1:0]
}

function {:inline} $zext.bv1.bv8(i: bv1) : bv8
{
  (if i == 0bv1 then 0bv8 else 1bv8)
}

function {:inline} $zext.bv1.bv16(i: bv1) : bv16
{
  (if i == 0bv1 then 0bv16 else 1bv16)
}

function {:inline} $zext.bv1.bv24(i: bv1) : bv24
{
  (if i == 0bv1 then 0bv24 else 1bv24)
}

function {:inline} $zext.bv1.bv32(i: bv1) : bv32
{
  (if i == 0bv1 then 0bv32 else 1bv32)
}

function {:inline} $zext.bv1.bv40(i: bv1) : bv40
{
  (if i == 0bv1 then 0bv40 else 1bv40)
}

function {:inline} $zext.bv1.bv48(i: bv1) : bv48
{
  (if i == 0bv1 then 0bv48 else 1bv48)
}

function {:inline} $zext.bv1.bv56(i: bv1) : bv56
{
  (if i == 0bv1 then 0bv56 else 1bv56)
}

function {:inline} $zext.bv1.bv64(i: bv1) : bv64
{
  (if i == 0bv1 then 0bv64 else 1bv64)
}

function {:inline} $zext.bv1.bv96(i: bv1) : bv96
{
  (if i == 0bv1 then 0bv96 else 1bv96)
}

function {:inline} $zext.bv1.bv128(i: bv1) : bv128
{
  (if i == 0bv1 then 0bv128 else 1bv128)
}

function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv8.bv16(i: bv8) : bv16;

function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv8.bv24(i: bv8) : bv24;

function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv8.bv32(i: bv8) : bv32;

function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv8.bv40(i: bv8) : bv40;

function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv8.bv48(i: bv8) : bv48;

function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv8.bv56(i: bv8) : bv56;

function {:bvbuiltin "(_ zero_extend 56)"} $zext.bv8.bv64(i: bv8) : bv64;

function {:bvbuiltin "(_ zero_extend 88)"} $zext.bv8.bv96(i: bv8) : bv96;

function {:bvbuiltin "(_ zero_extend 120)"} $zext.bv8.bv128(i: bv8) : bv128;

function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv16.bv24(i: bv16) : bv24;

function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv16.bv32(i: bv16) : bv32;

function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv16.bv40(i: bv16) : bv40;

function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv16.bv48(i: bv16) : bv48;

function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv16.bv56(i: bv16) : bv56;

function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv16.bv64(i: bv16) : bv64;

function {:bvbuiltin "(_ zero_extend 80)"} $zext.bv16.bv96(i: bv16) : bv96;

function {:bvbuiltin "(_ zero_extend 112)"} $zext.bv16.bv128(i: bv16) : bv128;

function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv24.bv32(i: bv24) : bv32;

function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv24.bv40(i: bv24) : bv40;

function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv24.bv48(i: bv24) : bv48;

function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv24.bv56(i: bv24) : bv56;

function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv24.bv64(i: bv24) : bv64;

function {:bvbuiltin "(_ zero_extend 72)"} $zext.bv24.bv96(i: bv24) : bv96;

function {:bvbuiltin "(_ zero_extend 104)"} $zext.bv24.bv128(i: bv24) : bv128;

function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv32.bv40(i: bv32) : bv40;

function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv32.bv48(i: bv32) : bv48;

function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv32.bv56(i: bv32) : bv56;

function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv32.bv64(i: bv32) : bv64;

function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv32.bv96(i: bv32) : bv96;

function {:bvbuiltin "(_ zero_extend 96)"} $zext.bv32.bv128(i: bv32) : bv128;

function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv40.bv48(i: bv40) : bv48;

function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv40.bv56(i: bv40) : bv56;

function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv40.bv64(i: bv40) : bv64;

function {:bvbuiltin "(_ zero_extend 56)"} $zext.bv40.bv96(i: bv40) : bv96;

function {:bvbuiltin "(_ zero_extend 88)"} $zext.bv40.bv128(i: bv40) : bv128;

function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv48.bv64(i: bv48) : bv64;

function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv48.bv96(i: bv48) : bv96;

function {:bvbuiltin "(_ zero_extend 80)"} $zext.bv48.bv128(i: bv48) : bv128;

function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv56.bv64(i: bv56) : bv64;

function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv56.bv96(i: bv56) : bv96;

function {:bvbuiltin "(_ zero_extend 72)"} $zext.bv56.bv128(i: bv56) : bv128;

function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv64.bv96(i: bv64) : bv96;

function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv64.bv128(i: bv64) : bv128;

function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv96.bv128(i: bv96) : bv128;

function {:inline} $sext.bv1.bv8(i: bv1) : bv8
{
  (if i == 0bv1 then 0bv8 else 255bv8)
}

function {:inline} $sext.bv1.bv16(i: bv1) : bv16
{
  (if i == 0bv1 then 0bv16 else 65535bv16)
}

function {:inline} $sext.bv1.bv24(i: bv1) : bv24
{
  (if i == 0bv1 then 0bv24 else 16777215bv24)
}

function {:inline} $sext.bv1.bv32(i: bv1) : bv32
{
  (if i == 0bv1 then 0bv32 else 4294967295bv32)
}

function {:inline} $sext.bv1.bv40(i: bv1) : bv40
{
  (if i == 0bv1 then 0bv40 else 1099511627775bv40)
}

function {:inline} $sext.bv1.bv48(i: bv1) : bv48
{
  (if i == 0bv1 then 0bv48 else 281474976710655bv48)
}

function {:inline} $sext.bv1.bv56(i: bv1) : bv56
{
  (if i == 0bv1 then 0bv56 else 72057594037927935bv56)
}

function {:inline} $sext.bv1.bv64(i: bv1) : bv64
{
  (if i == 0bv1 then 0bv64 else 18446744073709551615bv64)
}

function {:inline} $sext.bv1.bv96(i: bv1) : bv96
{
  (if i == 0bv1 then 0bv96 else 79228162514264337593543950335bv96)
}

function {:inline} $sext.bv1.bv128(i: bv1) : bv128
{
  (if i == 0bv1 then 0bv128 else 340282366920938463463374607431768211455bv128)
}

function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv8.bv16(i: bv8) : bv16;

function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv8.bv24(i: bv8) : bv24;

function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv8.bv32(i: bv8) : bv32;

function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv8.bv40(i: bv8) : bv40;

function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv8.bv48(i: bv8) : bv48;

function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv8.bv56(i: bv8) : bv56;

function {:bvbuiltin "(_ sign_extend 56)"} $sext.bv8.bv64(i: bv8) : bv64;

function {:bvbuiltin "(_ sign_extend 88)"} $sext.bv8.bv96(i: bv8) : bv96;

function {:bvbuiltin "(_ sign_extend 120)"} $sext.bv8.bv128(i: bv8) : bv128;

function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv16.bv24(i: bv16) : bv24;

function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv16.bv32(i: bv16) : bv32;

function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv16.bv40(i: bv16) : bv40;

function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv16.bv48(i: bv16) : bv48;

function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv16.bv56(i: bv16) : bv56;

function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv16.bv64(i: bv16) : bv64;

function {:bvbuiltin "(_ sign_extend 80)"} $sext.bv16.bv96(i: bv16) : bv96;

function {:bvbuiltin "(_ sign_extend 112)"} $sext.bv16.bv128(i: bv16) : bv128;

function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv24.bv32(i: bv24) : bv32;

function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv24.bv40(i: bv24) : bv40;

function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv24.bv48(i: bv24) : bv48;

function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv24.bv56(i: bv24) : bv56;

function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv24.bv64(i: bv24) : bv64;

function {:bvbuiltin "(_ sign_extend 72)"} $sext.bv24.bv96(i: bv24) : bv96;

function {:bvbuiltin "(_ sign_extend 104)"} $sext.bv24.bv128(i: bv24) : bv128;

function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv32.bv40(i: bv32) : bv40;

function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv32.bv48(i: bv32) : bv48;

function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv32.bv56(i: bv32) : bv56;

function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv32.bv64(i: bv32) : bv64;

function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv32.bv96(i: bv32) : bv96;

function {:bvbuiltin "(_ sign_extend 96)"} $sext.bv32.bv128(i: bv32) : bv128;

function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv40.bv48(i: bv40) : bv48;

function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv40.bv56(i: bv40) : bv56;

function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv40.bv64(i: bv40) : bv64;

function {:bvbuiltin "(_ sign_extend 56)"} $sext.bv40.bv96(i: bv40) : bv96;

function {:bvbuiltin "(_ sign_extend 88)"} $sext.bv40.bv128(i: bv40) : bv128;

function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv48.bv56(i: bv48) : bv56;

function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv48.bv64(i: bv48) : bv64;

function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv48.bv96(i: bv48) : bv96;

function {:bvbuiltin "(_ sign_extend 80)"} $sext.bv48.bv128(i: bv48) : bv128;

function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv56.bv64(i: bv56) : bv64;

function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv56.bv96(i: bv56) : bv96;

function {:bvbuiltin "(_ sign_extend 72)"} $sext.bv56.bv128(i: bv56) : bv128;

function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv64.bv96(i: bv64) : bv96;

function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv64.bv128(i: bv64) : bv128;

function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv96.bv128(i: bv96) : bv128;

function {:inline} $add.i128(i1: i128, i2: i128) : i128
{
  i1 + i2
}

function {:inline} $add.i96(i1: i96, i2: i96) : i96
{
  i1 + i2
}

function {:inline} $add.i64(i1: i64, i2: i64) : i64
{
  i1 + i2
}

function {:inline} $add.i56(i1: i56, i2: i56) : i56
{
  i1 + i2
}

function {:inline} $add.i48(i1: i48, i2: i48) : i48
{
  i1 + i2
}

function {:inline} $add.i40(i1: i40, i2: i40) : i40
{
  i1 + i2
}

function {:inline} $add.i32(i1: i32, i2: i32) : i32
{
  i1 + i2
}

function {:inline} $add.i24(i1: i24, i2: i24) : i24
{
  i1 + i2
}

function {:inline} $add.i16(i1: i16, i2: i16) : i16
{
  i1 + i2
}

function {:inline} $add.i8(i1: i8, i2: i8) : i8
{
  i1 + i2
}

function {:inline} $add.i1(i1: i1, i2: i1) : i1
{
  i1 + i2
}

function {:inline} $sub.i128(i1: i128, i2: i128) : i128
{
  i1 - i2
}

function {:inline} $sub.i96(i1: i96, i2: i96) : i96
{
  i1 - i2
}

function {:inline} $sub.i64(i1: i64, i2: i64) : i64
{
  i1 - i2
}

function {:inline} $sub.i56(i1: i56, i2: i56) : i56
{
  i1 - i2
}

function {:inline} $sub.i48(i1: i48, i2: i48) : i48
{
  i1 - i2
}

function {:inline} $sub.i40(i1: i40, i2: i40) : i40
{
  i1 - i2
}

function {:inline} $sub.i32(i1: i32, i2: i32) : i32
{
  i1 - i2
}

function {:inline} $sub.i24(i1: i24, i2: i24) : i24
{
  i1 - i2
}

function {:inline} $sub.i16(i1: i16, i2: i16) : i16
{
  i1 - i2
}

function {:inline} $sub.i8(i1: i8, i2: i8) : i8
{
  i1 - i2
}

function {:inline} $sub.i1(i1: i1, i2: i1) : i1
{
  i1 - i2
}

function {:inline} $mul.i128(i1: i128, i2: i128) : i128
{
  i1 * i2
}

function {:inline} $mul.i96(i1: i96, i2: i96) : i96
{
  i1 * i2
}

function {:inline} $mul.i64(i1: i64, i2: i64) : i64
{
  i1 * i2
}

function {:inline} $mul.i56(i1: i56, i2: i56) : i56
{
  i1 * i2
}

function {:inline} $mul.i48(i1: i48, i2: i48) : i48
{
  i1 * i2
}

function {:inline} $mul.i40(i1: i40, i2: i40) : i40
{
  i1 * i2
}

function {:inline} $mul.i32(i1: i32, i2: i32) : i32
{
  i1 * i2
}

function {:inline} $mul.i24(i1: i24, i2: i24) : i24
{
  i1 * i2
}

function {:inline} $mul.i16(i1: i16, i2: i16) : i16
{
  i1 * i2
}

function {:inline} $mul.i8(i1: i8, i2: i8) : i8
{
  i1 * i2
}

function {:inline} $mul.i1(i1: i1, i2: i1) : i1
{
  i1 * i2
}

function {:builtin "div"} $div(i1: int, i2: int) : int;

function {:builtin "mod"} $mod(i1: int, i2: int) : int;

function {:builtin "rem"} $rem(i1: int, i2: int) : int;

function {:inline} $min(i1: int, i2: int) : int
{
  (if i1 < i2 then i1 else i2)
}

function {:inline} $max(i1: int, i2: int) : int
{
  (if i1 > i2 then i1 else i2)
}

function {:builtin "div"} $sdiv.i128(i1: i128, i2: i128) : i128;

function {:builtin "div"} $sdiv.i96(i1: i96, i2: i96) : i96;

function {:builtin "div"} $sdiv.i64(i1: i64, i2: i64) : i64;

function {:builtin "div"} $sdiv.i56(i1: i56, i2: i56) : i56;

function {:builtin "div"} $sdiv.i48(i1: i48, i2: i48) : i48;

function {:builtin "div"} $sdiv.i40(i1: i40, i2: i40) : i40;

function {:builtin "div"} $sdiv.i32(i1: i32, i2: i32) : i32;

function {:builtin "div"} $sdiv.i24(i1: i24, i2: i24) : i24;

function {:builtin "div"} $sdiv.i16(i1: i16, i2: i16) : i16;

function {:builtin "div"} $sdiv.i8(i1: i8, i2: i8) : i8;

function {:builtin "div"} $sdiv.i1(i1: i1, i2: i1) : i1;

function {:builtin "mod"} $smod.i128(i1: i128, i2: i128) : i128;

function {:builtin "mod"} $smod.i96(i1: i96, i2: i96) : i96;

function {:builtin "mod"} $smod.i64(i1: i64, i2: i64) : i64;

function {:builtin "mod"} $smod.i56(i1: i56, i2: i56) : i56;

function {:builtin "mod"} $smod.i48(i1: i48, i2: i48) : i48;

function {:builtin "mod"} $smod.i40(i1: i40, i2: i40) : i40;

function {:builtin "mod"} $smod.i32(i1: i32, i2: i32) : i32;

function {:builtin "mod"} $smod.i24(i1: i24, i2: i24) : i24;

function {:builtin "mod"} $smod.i16(i1: i16, i2: i16) : i16;

function {:builtin "mod"} $smod.i8(i1: i8, i2: i8) : i8;

function {:builtin "mod"} $smod.i1(i1: i1, i2: i1) : i1;

function {:builtin "rem"} $srem.i128(i1: i128, i2: i128) : i128;

function {:builtin "rem"} $srem.i96(i1: i96, i2: i96) : i96;

function {:builtin "rem"} $srem.i64(i1: i64, i2: i64) : i64;

function {:builtin "rem"} $srem.i56(i1: i56, i2: i56) : i56;

function {:builtin "rem"} $srem.i48(i1: i48, i2: i48) : i48;

function {:builtin "rem"} $srem.i40(i1: i40, i2: i40) : i40;

function {:builtin "rem"} $srem.i32(i1: i32, i2: i32) : i32;

function {:builtin "rem"} $srem.i24(i1: i24, i2: i24) : i24;

function {:builtin "rem"} $srem.i16(i1: i16, i2: i16) : i16;

function {:builtin "rem"} $srem.i8(i1: i8, i2: i8) : i8;

function {:builtin "rem"} $srem.i1(i1: i1, i2: i1) : i1;

function {:builtin "div"} $udiv.i128(i1: i128, i2: i128) : i128;

function {:builtin "div"} $udiv.i96(i1: i96, i2: i96) : i96;

function {:builtin "div"} $udiv.i64(i1: i64, i2: i64) : i64;

function {:builtin "div"} $udiv.i56(i1: i56, i2: i56) : i56;

function {:builtin "div"} $udiv.i48(i1: i48, i2: i48) : i48;

function {:builtin "div"} $udiv.i40(i1: i40, i2: i40) : i40;

function {:builtin "div"} $udiv.i32(i1: i32, i2: i32) : i32;

function {:builtin "div"} $udiv.i24(i1: i24, i2: i24) : i24;

function {:builtin "div"} $udiv.i16(i1: i16, i2: i16) : i16;

function {:builtin "div"} $udiv.i8(i1: i8, i2: i8) : i8;

function {:builtin "div"} $udiv.i1(i1: i1, i2: i1) : i1;

function {:builtin "rem"} $urem.i128(i1: i128, i2: i128) : i128;

function {:builtin "rem"} $urem.i96(i1: i96, i2: i96) : i96;

function {:builtin "rem"} $urem.i64(i1: i64, i2: i64) : i64;

function {:builtin "rem"} $urem.i56(i1: i56, i2: i56) : i56;

function {:builtin "rem"} $urem.i48(i1: i48, i2: i48) : i48;

function {:builtin "rem"} $urem.i40(i1: i40, i2: i40) : i40;

function {:builtin "rem"} $urem.i32(i1: i32, i2: i32) : i32;

function {:builtin "rem"} $urem.i24(i1: i24, i2: i24) : i24;

function {:builtin "rem"} $urem.i16(i1: i16, i2: i16) : i16;

function {:builtin "rem"} $urem.i8(i1: i8, i2: i8) : i8;

function {:builtin "rem"} $urem.i1(i1: i1, i2: i1) : i1;

function {:inline} $smin.i128(i1: i128, i2: i128) : i128
{
  $min(i1, i2)
}

function {:inline} $smin.i96(i1: i96, i2: i96) : i96
{
  $min(i1, i2)
}

function {:inline} $smin.i64(i1: i64, i2: i64) : i64
{
  $min(i1, i2)
}

function {:inline} $smin.i56(i1: i56, i2: i56) : i56
{
  $min(i1, i2)
}

function {:inline} $smin.i48(i1: i48, i2: i48) : i48
{
  $min(i1, i2)
}

function {:inline} $smin.i40(i1: i40, i2: i40) : i40
{
  $min(i1, i2)
}

function {:inline} $smin.i32(i1: i32, i2: i32) : i32
{
  $min(i1, i2)
}

function {:inline} $smin.i24(i1: i24, i2: i24) : i24
{
  $min(i1, i2)
}

function {:inline} $smin.i16(i1: i16, i2: i16) : i16
{
  $min(i1, i2)
}

function {:inline} $smin.i8(i1: i8, i2: i8) : i8
{
  $min(i1, i2)
}

function {:inline} $smin.i1(i1: i1, i2: i1) : i1
{
  $min(i1, i2)
}

function {:inline} $smax.i128(i1: i128, i2: i128) : i128
{
  $max(i1, i2)
}

function {:inline} $smax.i96(i1: i96, i2: i96) : i96
{
  $max(i1, i2)
}

function {:inline} $smax.i64(i1: i64, i2: i64) : i64
{
  $max(i1, i2)
}

function {:inline} $smax.i56(i1: i56, i2: i56) : i56
{
  $max(i1, i2)
}

function {:inline} $smax.i48(i1: i48, i2: i48) : i48
{
  $max(i1, i2)
}

function {:inline} $smax.i40(i1: i40, i2: i40) : i40
{
  $max(i1, i2)
}

function {:inline} $smax.i32(i1: i32, i2: i32) : i32
{
  $max(i1, i2)
}

function {:inline} $smax.i24(i1: i24, i2: i24) : i24
{
  $max(i1, i2)
}

function {:inline} $smax.i16(i1: i16, i2: i16) : i16
{
  $max(i1, i2)
}

function {:inline} $smax.i8(i1: i8, i2: i8) : i8
{
  $max(i1, i2)
}

function {:inline} $smax.i1(i1: i1, i2: i1) : i1
{
  $max(i1, i2)
}

function {:inline} $umin.i128(i1: i128, i2: i128) : i128
{
  $min(i1, i2)
}

function {:inline} $umin.i96(i1: i96, i2: i96) : i96
{
  $min(i1, i2)
}

function {:inline} $umin.i64(i1: i64, i2: i64) : i64
{
  $min(i1, i2)
}

function {:inline} $umin.i56(i1: i56, i2: i56) : i56
{
  $min(i1, i2)
}

function {:inline} $umin.i48(i1: i48, i2: i48) : i48
{
  $min(i1, i2)
}

function {:inline} $umin.i40(i1: i40, i2: i40) : i40
{
  $min(i1, i2)
}

function {:inline} $umin.i32(i1: i32, i2: i32) : i32
{
  $min(i1, i2)
}

function {:inline} $umin.i24(i1: i24, i2: i24) : i24
{
  $min(i1, i2)
}

function {:inline} $umin.i16(i1: i16, i2: i16) : i16
{
  $min(i1, i2)
}

function {:inline} $umin.i8(i1: i8, i2: i8) : i8
{
  $min(i1, i2)
}

function {:inline} $umin.i1(i1: i1, i2: i1) : i1
{
  $min(i1, i2)
}

function {:inline} $umax.i128(i1: i128, i2: i128) : i128
{
  $max(i1, i2)
}

function {:inline} $umax.i96(i1: i96, i2: i96) : i96
{
  $max(i1, i2)
}

function {:inline} $umax.i64(i1: i64, i2: i64) : i64
{
  $max(i1, i2)
}

function {:inline} $umax.i56(i1: i56, i2: i56) : i56
{
  $max(i1, i2)
}

function {:inline} $umax.i48(i1: i48, i2: i48) : i48
{
  $max(i1, i2)
}

function {:inline} $umax.i40(i1: i40, i2: i40) : i40
{
  $max(i1, i2)
}

function {:inline} $umax.i32(i1: i32, i2: i32) : i32
{
  $max(i1, i2)
}

function {:inline} $umax.i24(i1: i24, i2: i24) : i24
{
  $max(i1, i2)
}

function {:inline} $umax.i16(i1: i16, i2: i16) : i16
{
  $max(i1, i2)
}

function {:inline} $umax.i8(i1: i8, i2: i8) : i8
{
  $max(i1, i2)
}

function {:inline} $umax.i1(i1: i1, i2: i1) : i1
{
  $max(i1, i2)
}

function $shl.i128(i1: i128, i2: i128) : i128;

function $shl.i96(i1: i96, i2: i96) : i96;

function $shl.i64(i1: i64, i2: i64) : i64;

function $shl.i56(i1: i56, i2: i56) : i56;

function $shl.i48(i1: i48, i2: i48) : i48;

function $shl.i40(i1: i40, i2: i40) : i40;

function $shl.i32(i1: i32, i2: i32) : i32;

function $shl.i24(i1: i24, i2: i24) : i24;

function $shl.i16(i1: i16, i2: i16) : i16;

function $shl.i8(i1: i8, i2: i8) : i8;

function $shl.i1(i1: i1, i2: i1) : i1;

function $lshr.i128(i1: i128, i2: i128) : i128;

function $lshr.i96(i1: i96, i2: i96) : i96;

function $lshr.i64(i1: i64, i2: i64) : i64;

function $lshr.i56(i1: i56, i2: i56) : i56;

function $lshr.i48(i1: i48, i2: i48) : i48;

function $lshr.i40(i1: i40, i2: i40) : i40;

function $lshr.i32(i1: i32, i2: i32) : i32;

function $lshr.i24(i1: i24, i2: i24) : i24;

function $lshr.i16(i1: i16, i2: i16) : i16;

function $lshr.i8(i1: i8, i2: i8) : i8;

function $lshr.i1(i1: i1, i2: i1) : i1;

function $ashr.i128(i1: i128, i2: i128) : i128;

function $ashr.i96(i1: i96, i2: i96) : i96;

function $ashr.i64(i1: i64, i2: i64) : i64;

function $ashr.i56(i1: i56, i2: i56) : i56;

function $ashr.i48(i1: i48, i2: i48) : i48;

function $ashr.i40(i1: i40, i2: i40) : i40;

function $ashr.i32(i1: i32, i2: i32) : i32;

function $ashr.i24(i1: i24, i2: i24) : i24;

function $ashr.i16(i1: i16, i2: i16) : i16;

function $ashr.i8(i1: i8, i2: i8) : i8;

function $ashr.i1(i1: i1, i2: i1) : i1;

function $not.i128(i: i128) : i128;

function $not.i96(i: i96) : i96;

function $not.i64(i: i64) : i64;

function $not.i56(i: i56) : i56;

function $not.i48(i: i48) : i48;

function $not.i40(i: i40) : i40;

function $not.i32(i: i32) : i32;

function $not.i24(i: i24) : i24;

function $not.i16(i: i16) : i16;

function $not.i8(i: i8) : i8;

function $not.i1(i: i1) : i1;

function $and.i128(i1: i128, i2: i128) : i128;

function $and.i96(i1: i96, i2: i96) : i96;

function $and.i64(i1: i64, i2: i64) : i64;

function $and.i56(i1: i56, i2: i56) : i56;

function $and.i48(i1: i48, i2: i48) : i48;

function $and.i40(i1: i40, i2: i40) : i40;

function $and.i32(i1: i32, i2: i32) : i32;

function $and.i24(i1: i24, i2: i24) : i24;

function $and.i16(i1: i16, i2: i16) : i16;

function $and.i8(i1: i8, i2: i8) : i8;

function $and.i1(i1: i1, i2: i1) : i1;

function $or.i128(i1: i128, i2: i128) : i128;

function $or.i96(i1: i96, i2: i96) : i96;

function $or.i64(i1: i64, i2: i64) : i64;

function $or.i56(i1: i56, i2: i56) : i56;

function $or.i48(i1: i48, i2: i48) : i48;

function $or.i40(i1: i40, i2: i40) : i40;

function $or.i32(i1: i32, i2: i32) : i32;

function $or.i24(i1: i24, i2: i24) : i24;

function $or.i16(i1: i16, i2: i16) : i16;

function $or.i8(i1: i8, i2: i8) : i8;

function $or.i1(i1: i1, i2: i1) : i1;

function $xor.i128(i1: i128, i2: i128) : i128;

function $xor.i96(i1: i96, i2: i96) : i96;

function $xor.i64(i1: i64, i2: i64) : i64;

function $xor.i56(i1: i56, i2: i56) : i56;

function $xor.i48(i1: i48, i2: i48) : i48;

function $xor.i40(i1: i40, i2: i40) : i40;

function $xor.i32(i1: i32, i2: i32) : i32;

function $xor.i24(i1: i24, i2: i24) : i24;

function $xor.i16(i1: i16, i2: i16) : i16;

function $xor.i8(i1: i8, i2: i8) : i8;

function $xor.i1(i1: i1, i2: i1) : i1;

function $nand.i128(i1: i128, i2: i128) : i128;

function $nand.i96(i1: i96, i2: i96) : i96;

function $nand.i64(i1: i64, i2: i64) : i64;

function $nand.i56(i1: i56, i2: i56) : i56;

function $nand.i48(i1: i48, i2: i48) : i48;

function $nand.i40(i1: i40, i2: i40) : i40;

function $nand.i32(i1: i32, i2: i32) : i32;

function $nand.i24(i1: i24, i2: i24) : i24;

function $nand.i16(i1: i16, i2: i16) : i16;

function $nand.i8(i1: i8, i2: i8) : i8;

function $nand.i1(i1: i1, i2: i1) : i1;

function {:inline} $eq.i128.bool(i1: i128, i2: i128) : bool
{
  i1 == i2
}

function {:inline} $eq.i128(i1: i128, i2: i128) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i96.bool(i1: i96, i2: i96) : bool
{
  i1 == i2
}

function {:inline} $eq.i96(i1: i96, i2: i96) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i64.bool(i1: i64, i2: i64) : bool
{
  i1 == i2
}

function {:inline} $eq.i64(i1: i64, i2: i64) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i56.bool(i1: i56, i2: i56) : bool
{
  i1 == i2
}

function {:inline} $eq.i56(i1: i56, i2: i56) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i48.bool(i1: i48, i2: i48) : bool
{
  i1 == i2
}

function {:inline} $eq.i48(i1: i48, i2: i48) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i40.bool(i1: i40, i2: i40) : bool
{
  i1 == i2
}

function {:inline} $eq.i40(i1: i40, i2: i40) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i32.bool(i1: i32, i2: i32) : bool
{
  i1 == i2
}

function {:inline} $eq.i32(i1: i32, i2: i32) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i24.bool(i1: i24, i2: i24) : bool
{
  i1 == i2
}

function {:inline} $eq.i24(i1: i24, i2: i24) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i16.bool(i1: i16, i2: i16) : bool
{
  i1 == i2
}

function {:inline} $eq.i16(i1: i16, i2: i16) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i8.bool(i1: i8, i2: i8) : bool
{
  i1 == i2
}

function {:inline} $eq.i8(i1: i8, i2: i8) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $eq.i1.bool(i1: i1, i2: i1) : bool
{
  i1 == i2
}

function {:inline} $eq.i1(i1: i1, i2: i1) : i1
{
  (if i1 == i2 then 1 else 0)
}

function {:inline} $ne.i128.bool(i1: i128, i2: i128) : bool
{
  i1 != i2
}

function {:inline} $ne.i128(i1: i128, i2: i128) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i96.bool(i1: i96, i2: i96) : bool
{
  i1 != i2
}

function {:inline} $ne.i96(i1: i96, i2: i96) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i64.bool(i1: i64, i2: i64) : bool
{
  i1 != i2
}

function {:inline} $ne.i64(i1: i64, i2: i64) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i56.bool(i1: i56, i2: i56) : bool
{
  i1 != i2
}

function {:inline} $ne.i56(i1: i56, i2: i56) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i48.bool(i1: i48, i2: i48) : bool
{
  i1 != i2
}

function {:inline} $ne.i48(i1: i48, i2: i48) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i40.bool(i1: i40, i2: i40) : bool
{
  i1 != i2
}

function {:inline} $ne.i40(i1: i40, i2: i40) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i32.bool(i1: i32, i2: i32) : bool
{
  i1 != i2
}

function {:inline} $ne.i32(i1: i32, i2: i32) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i24.bool(i1: i24, i2: i24) : bool
{
  i1 != i2
}

function {:inline} $ne.i24(i1: i24, i2: i24) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i16.bool(i1: i16, i2: i16) : bool
{
  i1 != i2
}

function {:inline} $ne.i16(i1: i16, i2: i16) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i8.bool(i1: i8, i2: i8) : bool
{
  i1 != i2
}

function {:inline} $ne.i8(i1: i8, i2: i8) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ne.i1.bool(i1: i1, i2: i1) : bool
{
  i1 != i2
}

function {:inline} $ne.i1(i1: i1, i2: i1) : i1
{
  (if i1 != i2 then 1 else 0)
}

function {:inline} $ule.i128.bool(i1: i128, i2: i128) : bool
{
  i1 <= i2
}

function {:inline} $ule.i128(i1: i128, i2: i128) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i96.bool(i1: i96, i2: i96) : bool
{
  i1 <= i2
}

function {:inline} $ule.i96(i1: i96, i2: i96) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i64.bool(i1: i64, i2: i64) : bool
{
  i1 <= i2
}

function {:inline} $ule.i64(i1: i64, i2: i64) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i56.bool(i1: i56, i2: i56) : bool
{
  i1 <= i2
}

function {:inline} $ule.i56(i1: i56, i2: i56) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i48.bool(i1: i48, i2: i48) : bool
{
  i1 <= i2
}

function {:inline} $ule.i48(i1: i48, i2: i48) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i40.bool(i1: i40, i2: i40) : bool
{
  i1 <= i2
}

function {:inline} $ule.i40(i1: i40, i2: i40) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i32.bool(i1: i32, i2: i32) : bool
{
  i1 <= i2
}

function {:inline} $ule.i32(i1: i32, i2: i32) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i24.bool(i1: i24, i2: i24) : bool
{
  i1 <= i2
}

function {:inline} $ule.i24(i1: i24, i2: i24) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i16.bool(i1: i16, i2: i16) : bool
{
  i1 <= i2
}

function {:inline} $ule.i16(i1: i16, i2: i16) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i8.bool(i1: i8, i2: i8) : bool
{
  i1 <= i2
}

function {:inline} $ule.i8(i1: i8, i2: i8) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ule.i1.bool(i1: i1, i2: i1) : bool
{
  i1 <= i2
}

function {:inline} $ule.i1(i1: i1, i2: i1) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $ult.i128.bool(i1: i128, i2: i128) : bool
{
  i1 < i2
}

function {:inline} $ult.i128(i1: i128, i2: i128) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i96.bool(i1: i96, i2: i96) : bool
{
  i1 < i2
}

function {:inline} $ult.i96(i1: i96, i2: i96) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i64.bool(i1: i64, i2: i64) : bool
{
  i1 < i2
}

function {:inline} $ult.i64(i1: i64, i2: i64) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i56.bool(i1: i56, i2: i56) : bool
{
  i1 < i2
}

function {:inline} $ult.i56(i1: i56, i2: i56) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i48.bool(i1: i48, i2: i48) : bool
{
  i1 < i2
}

function {:inline} $ult.i48(i1: i48, i2: i48) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i40.bool(i1: i40, i2: i40) : bool
{
  i1 < i2
}

function {:inline} $ult.i40(i1: i40, i2: i40) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i32.bool(i1: i32, i2: i32) : bool
{
  i1 < i2
}

function {:inline} $ult.i32(i1: i32, i2: i32) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i24.bool(i1: i24, i2: i24) : bool
{
  i1 < i2
}

function {:inline} $ult.i24(i1: i24, i2: i24) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i16.bool(i1: i16, i2: i16) : bool
{
  i1 < i2
}

function {:inline} $ult.i16(i1: i16, i2: i16) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i8.bool(i1: i8, i2: i8) : bool
{
  i1 < i2
}

function {:inline} $ult.i8(i1: i8, i2: i8) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $ult.i1.bool(i1: i1, i2: i1) : bool
{
  i1 < i2
}

function {:inline} $ult.i1(i1: i1, i2: i1) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $uge.i128.bool(i1: i128, i2: i128) : bool
{
  i1 >= i2
}

function {:inline} $uge.i128(i1: i128, i2: i128) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i96.bool(i1: i96, i2: i96) : bool
{
  i1 >= i2
}

function {:inline} $uge.i96(i1: i96, i2: i96) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i64.bool(i1: i64, i2: i64) : bool
{
  i1 >= i2
}

function {:inline} $uge.i64(i1: i64, i2: i64) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i56.bool(i1: i56, i2: i56) : bool
{
  i1 >= i2
}

function {:inline} $uge.i56(i1: i56, i2: i56) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i48.bool(i1: i48, i2: i48) : bool
{
  i1 >= i2
}

function {:inline} $uge.i48(i1: i48, i2: i48) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i40.bool(i1: i40, i2: i40) : bool
{
  i1 >= i2
}

function {:inline} $uge.i40(i1: i40, i2: i40) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i32.bool(i1: i32, i2: i32) : bool
{
  i1 >= i2
}

function {:inline} $uge.i32(i1: i32, i2: i32) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i24.bool(i1: i24, i2: i24) : bool
{
  i1 >= i2
}

function {:inline} $uge.i24(i1: i24, i2: i24) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i16.bool(i1: i16, i2: i16) : bool
{
  i1 >= i2
}

function {:inline} $uge.i16(i1: i16, i2: i16) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i8.bool(i1: i8, i2: i8) : bool
{
  i1 >= i2
}

function {:inline} $uge.i8(i1: i8, i2: i8) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $uge.i1.bool(i1: i1, i2: i1) : bool
{
  i1 >= i2
}

function {:inline} $uge.i1(i1: i1, i2: i1) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $ugt.i128.bool(i1: i128, i2: i128) : bool
{
  i1 > i2
}

function {:inline} $ugt.i128(i1: i128, i2: i128) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i96.bool(i1: i96, i2: i96) : bool
{
  i1 > i2
}

function {:inline} $ugt.i96(i1: i96, i2: i96) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i64.bool(i1: i64, i2: i64) : bool
{
  i1 > i2
}

function {:inline} $ugt.i64(i1: i64, i2: i64) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i56.bool(i1: i56, i2: i56) : bool
{
  i1 > i2
}

function {:inline} $ugt.i56(i1: i56, i2: i56) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i48.bool(i1: i48, i2: i48) : bool
{
  i1 > i2
}

function {:inline} $ugt.i48(i1: i48, i2: i48) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i40.bool(i1: i40, i2: i40) : bool
{
  i1 > i2
}

function {:inline} $ugt.i40(i1: i40, i2: i40) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i32.bool(i1: i32, i2: i32) : bool
{
  i1 > i2
}

function {:inline} $ugt.i32(i1: i32, i2: i32) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i24.bool(i1: i24, i2: i24) : bool
{
  i1 > i2
}

function {:inline} $ugt.i24(i1: i24, i2: i24) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i16.bool(i1: i16, i2: i16) : bool
{
  i1 > i2
}

function {:inline} $ugt.i16(i1: i16, i2: i16) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i8.bool(i1: i8, i2: i8) : bool
{
  i1 > i2
}

function {:inline} $ugt.i8(i1: i8, i2: i8) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $ugt.i1.bool(i1: i1, i2: i1) : bool
{
  i1 > i2
}

function {:inline} $ugt.i1(i1: i1, i2: i1) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sle.i128.bool(i1: i128, i2: i128) : bool
{
  i1 <= i2
}

function {:inline} $sle.i128(i1: i128, i2: i128) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i96.bool(i1: i96, i2: i96) : bool
{
  i1 <= i2
}

function {:inline} $sle.i96(i1: i96, i2: i96) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i64.bool(i1: i64, i2: i64) : bool
{
  i1 <= i2
}

function {:inline} $sle.i64(i1: i64, i2: i64) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i56.bool(i1: i56, i2: i56) : bool
{
  i1 <= i2
}

function {:inline} $sle.i56(i1: i56, i2: i56) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i48.bool(i1: i48, i2: i48) : bool
{
  i1 <= i2
}

function {:inline} $sle.i48(i1: i48, i2: i48) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i40.bool(i1: i40, i2: i40) : bool
{
  i1 <= i2
}

function {:inline} $sle.i40(i1: i40, i2: i40) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i32.bool(i1: i32, i2: i32) : bool
{
  i1 <= i2
}

function {:inline} $sle.i32(i1: i32, i2: i32) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i24.bool(i1: i24, i2: i24) : bool
{
  i1 <= i2
}

function {:inline} $sle.i24(i1: i24, i2: i24) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i16.bool(i1: i16, i2: i16) : bool
{
  i1 <= i2
}

function {:inline} $sle.i16(i1: i16, i2: i16) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i8.bool(i1: i8, i2: i8) : bool
{
  i1 <= i2
}

function {:inline} $sle.i8(i1: i8, i2: i8) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $sle.i1.bool(i1: i1, i2: i1) : bool
{
  i1 <= i2
}

function {:inline} $sle.i1(i1: i1, i2: i1) : i1
{
  (if i1 <= i2 then 1 else 0)
}

function {:inline} $slt.i128.bool(i1: i128, i2: i128) : bool
{
  i1 < i2
}

function {:inline} $slt.i128(i1: i128, i2: i128) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i96.bool(i1: i96, i2: i96) : bool
{
  i1 < i2
}

function {:inline} $slt.i96(i1: i96, i2: i96) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i64.bool(i1: i64, i2: i64) : bool
{
  i1 < i2
}

function {:inline} $slt.i64(i1: i64, i2: i64) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i56.bool(i1: i56, i2: i56) : bool
{
  i1 < i2
}

function {:inline} $slt.i56(i1: i56, i2: i56) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i48.bool(i1: i48, i2: i48) : bool
{
  i1 < i2
}

function {:inline} $slt.i48(i1: i48, i2: i48) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i40.bool(i1: i40, i2: i40) : bool
{
  i1 < i2
}

function {:inline} $slt.i40(i1: i40, i2: i40) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i32.bool(i1: i32, i2: i32) : bool
{
  i1 < i2
}

function {:inline} $slt.i32(i1: i32, i2: i32) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i24.bool(i1: i24, i2: i24) : bool
{
  i1 < i2
}

function {:inline} $slt.i24(i1: i24, i2: i24) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i16.bool(i1: i16, i2: i16) : bool
{
  i1 < i2
}

function {:inline} $slt.i16(i1: i16, i2: i16) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i8.bool(i1: i8, i2: i8) : bool
{
  i1 < i2
}

function {:inline} $slt.i8(i1: i8, i2: i8) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $slt.i1.bool(i1: i1, i2: i1) : bool
{
  i1 < i2
}

function {:inline} $slt.i1(i1: i1, i2: i1) : i1
{
  (if i1 < i2 then 1 else 0)
}

function {:inline} $sge.i128.bool(i1: i128, i2: i128) : bool
{
  i1 >= i2
}

function {:inline} $sge.i128(i1: i128, i2: i128) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i96.bool(i1: i96, i2: i96) : bool
{
  i1 >= i2
}

function {:inline} $sge.i96(i1: i96, i2: i96) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i64.bool(i1: i64, i2: i64) : bool
{
  i1 >= i2
}

function {:inline} $sge.i64(i1: i64, i2: i64) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i56.bool(i1: i56, i2: i56) : bool
{
  i1 >= i2
}

function {:inline} $sge.i56(i1: i56, i2: i56) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i48.bool(i1: i48, i2: i48) : bool
{
  i1 >= i2
}

function {:inline} $sge.i48(i1: i48, i2: i48) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i40.bool(i1: i40, i2: i40) : bool
{
  i1 >= i2
}

function {:inline} $sge.i40(i1: i40, i2: i40) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i32.bool(i1: i32, i2: i32) : bool
{
  i1 >= i2
}

function {:inline} $sge.i32(i1: i32, i2: i32) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i24.bool(i1: i24, i2: i24) : bool
{
  i1 >= i2
}

function {:inline} $sge.i24(i1: i24, i2: i24) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i16.bool(i1: i16, i2: i16) : bool
{
  i1 >= i2
}

function {:inline} $sge.i16(i1: i16, i2: i16) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i8.bool(i1: i8, i2: i8) : bool
{
  i1 >= i2
}

function {:inline} $sge.i8(i1: i8, i2: i8) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sge.i1.bool(i1: i1, i2: i1) : bool
{
  i1 >= i2
}

function {:inline} $sge.i1(i1: i1, i2: i1) : i1
{
  (if i1 >= i2 then 1 else 0)
}

function {:inline} $sgt.i128.bool(i1: i128, i2: i128) : bool
{
  i1 > i2
}

function {:inline} $sgt.i128(i1: i128, i2: i128) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i96.bool(i1: i96, i2: i96) : bool
{
  i1 > i2
}

function {:inline} $sgt.i96(i1: i96, i2: i96) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i64.bool(i1: i64, i2: i64) : bool
{
  i1 > i2
}

function {:inline} $sgt.i64(i1: i64, i2: i64) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i56.bool(i1: i56, i2: i56) : bool
{
  i1 > i2
}

function {:inline} $sgt.i56(i1: i56, i2: i56) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i48.bool(i1: i48, i2: i48) : bool
{
  i1 > i2
}

function {:inline} $sgt.i48(i1: i48, i2: i48) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i40.bool(i1: i40, i2: i40) : bool
{
  i1 > i2
}

function {:inline} $sgt.i40(i1: i40, i2: i40) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i32.bool(i1: i32, i2: i32) : bool
{
  i1 > i2
}

function {:inline} $sgt.i32(i1: i32, i2: i32) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i24.bool(i1: i24, i2: i24) : bool
{
  i1 > i2
}

function {:inline} $sgt.i24(i1: i24, i2: i24) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i16.bool(i1: i16, i2: i16) : bool
{
  i1 > i2
}

function {:inline} $sgt.i16(i1: i16, i2: i16) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i8.bool(i1: i8, i2: i8) : bool
{
  i1 > i2
}

function {:inline} $sgt.i8(i1: i8, i2: i8) : i1
{
  (if i1 > i2 then 1 else 0)
}

function {:inline} $sgt.i1.bool(i1: i1, i2: i1) : bool
{
  i1 > i2
}

function {:inline} $sgt.i1(i1: i1, i2: i1) : i1
{
  (if i1 > i2 then 1 else 0)
}

axiom $and.i1(0, 0) == 0;

axiom $and.i1(0, 1) == 0;

axiom $and.i1(1, 0) == 0;

axiom $and.i1(1, 1) == 1;

axiom $or.i1(0, 0) == 0;

axiom $or.i1(0, 1) == 1;

axiom $or.i1(1, 0) == 1;

axiom $or.i1(1, 1) == 1;

axiom $xor.i1(0, 0) == 0;

axiom $xor.i1(0, 1) == 1;

axiom $xor.i1(1, 0) == 1;

axiom $xor.i1(1, 1) == 0;

function {:inline} $trunc.i128.i96(i: i128) : i96
{
  i
}

function {:inline} $trunc.i128.i64(i: i128) : i64
{
  i
}

function {:inline} $trunc.i128.i56(i: i128) : i56
{
  i
}

function {:inline} $trunc.i128.i48(i: i128) : i48
{
  i
}

function {:inline} $trunc.i128.i40(i: i128) : i40
{
  i
}

function {:inline} $trunc.i128.i32(i: i128) : i32
{
  i
}

function {:inline} $trunc.i128.i24(i: i128) : i24
{
  i
}

function {:inline} $trunc.i128.i16(i: i128) : i16
{
  i
}

function {:inline} $trunc.i128.i8(i: i128) : i8
{
  i
}

function {:inline} $trunc.i128.i1(i: i128) : i1
{
  i
}

function {:inline} $trunc.i96.i64(i: i96) : i64
{
  i
}

function {:inline} $trunc.i96.i56(i: i96) : i56
{
  i
}

function {:inline} $trunc.i96.i48(i: i96) : i48
{
  i
}

function {:inline} $trunc.i96.i40(i: i96) : i40
{
  i
}

function {:inline} $trunc.i96.i32(i: i96) : i32
{
  i
}

function {:inline} $trunc.i96.i24(i: i96) : i24
{
  i
}

function {:inline} $trunc.i96.i16(i: i96) : i16
{
  i
}

function {:inline} $trunc.i96.i8(i: i96) : i8
{
  i
}

function {:inline} $trunc.i96.i1(i: i96) : i1
{
  i
}

function {:inline} $trunc.i64.i56(i: i64) : i56
{
  i
}

function {:inline} $trunc.i64.i48(i: i64) : i48
{
  i
}

function {:inline} $trunc.i64.i40(i: i64) : i40
{
  i
}

function {:inline} $trunc.i64.i32(i: i64) : i32
{
  i
}

function {:inline} $trunc.i64.i24(i: i64) : i24
{
  i
}

function {:inline} $trunc.i64.i16(i: i64) : i16
{
  i
}

function {:inline} $trunc.i64.i8(i: i64) : i8
{
  i
}

function {:inline} $trunc.i64.i1(i: i64) : i1
{
  i
}

function {:inline} $trunc.i56.i48(i: i56) : i48
{
  i
}

function {:inline} $trunc.i56.i40(i: i56) : i40
{
  i
}

function {:inline} $trunc.i56.i32(i: i56) : i32
{
  i
}

function {:inline} $trunc.i56.i24(i: i56) : i24
{
  i
}

function {:inline} $trunc.i56.i16(i: i56) : i16
{
  i
}

function {:inline} $trunc.i56.i8(i: i56) : i8
{
  i
}

function {:inline} $trunc.i56.i1(i: i56) : i1
{
  i
}

function {:inline} $trunc.i48.i40(i: i48) : i40
{
  i
}

function {:inline} $trunc.i48.i32(i: i48) : i32
{
  i
}

function {:inline} $trunc.i48.i24(i: i48) : i24
{
  i
}

function {:inline} $trunc.i48.i16(i: i48) : i16
{
  i
}

function {:inline} $trunc.i48.i8(i: i48) : i8
{
  i
}

function {:inline} $trunc.i48.i1(i: i48) : i1
{
  i
}

function {:inline} $trunc.i40.i32(i: i40) : i32
{
  i
}

function {:inline} $trunc.i40.i24(i: i40) : i24
{
  i
}

function {:inline} $trunc.i40.i16(i: i40) : i16
{
  i
}

function {:inline} $trunc.i40.i8(i: i40) : i8
{
  i
}

function {:inline} $trunc.i40.i1(i: i40) : i1
{
  i
}

function {:inline} $trunc.i32.i24(i: i32) : i24
{
  i
}

function {:inline} $trunc.i32.i16(i: i32) : i16
{
  i
}

function {:inline} $trunc.i32.i8(i: i32) : i8
{
  i
}

function {:inline} $trunc.i32.i1(i: i32) : i1
{
  i
}

function {:inline} $trunc.i24.i16(i: i24) : i16
{
  i
}

function {:inline} $trunc.i24.i8(i: i24) : i8
{
  i
}

function {:inline} $trunc.i24.i1(i: i24) : i1
{
  i
}

function {:inline} $trunc.i16.i8(i: i16) : i8
{
  i
}

function {:inline} $trunc.i16.i1(i: i16) : i1
{
  i
}

function {:inline} $trunc.i8.i1(i: i8) : i1
{
  i
}

function {:inline} $zext.i1.i8(i: i1) : i8
{
  i
}

function {:inline} $zext.i1.i16(i: i1) : i16
{
  i
}

function {:inline} $zext.i1.i24(i: i1) : i24
{
  i
}

function {:inline} $zext.i1.i32(i: i1) : i32
{
  i
}

function {:inline} $zext.i1.i40(i: i1) : i40
{
  i
}

function {:inline} $zext.i1.i48(i: i1) : i48
{
  i
}

function {:inline} $zext.i1.i56(i: i1) : i56
{
  i
}

function {:inline} $zext.i1.i64(i: i1) : i64
{
  i
}

function {:inline} $zext.i1.i96(i: i1) : i96
{
  i
}

function {:inline} $zext.i1.i128(i: i1) : i128
{
  i
}

function {:inline} $zext.i8.i16(i: i8) : i16
{
  i
}

function {:inline} $zext.i8.i24(i: i8) : i24
{
  i
}

function {:inline} $zext.i8.i32(i: i8) : i32
{
  i
}

function {:inline} $zext.i8.i40(i: i8) : i40
{
  i
}

function {:inline} $zext.i8.i48(i: i8) : i48
{
  i
}

function {:inline} $zext.i8.i56(i: i8) : i56
{
  i
}

function {:inline} $zext.i8.i64(i: i8) : i64
{
  i
}

function {:inline} $zext.i8.i96(i: i8) : i96
{
  i
}

function {:inline} $zext.i8.i128(i: i8) : i128
{
  i
}

function {:inline} $zext.i16.i24(i: i16) : i24
{
  i
}

function {:inline} $zext.i16.i32(i: i16) : i32
{
  i
}

function {:inline} $zext.i16.i40(i: i16) : i40
{
  i
}

function {:inline} $zext.i16.i48(i: i16) : i48
{
  i
}

function {:inline} $zext.i16.i56(i: i16) : i56
{
  i
}

function {:inline} $zext.i16.i64(i: i16) : i64
{
  i
}

function {:inline} $zext.i16.i96(i: i16) : i96
{
  i
}

function {:inline} $zext.i16.i128(i: i16) : i128
{
  i
}

function {:inline} $zext.i24.i32(i: i24) : i32
{
  i
}

function {:inline} $zext.i24.i40(i: i24) : i40
{
  i
}

function {:inline} $zext.i24.i48(i: i24) : i48
{
  i
}

function {:inline} $zext.i24.i56(i: i24) : i56
{
  i
}

function {:inline} $zext.i24.i64(i: i24) : i64
{
  i
}

function {:inline} $zext.i24.i96(i: i24) : i96
{
  i
}

function {:inline} $zext.i24.i128(i: i24) : i128
{
  i
}

function {:inline} $zext.i32.i40(i: i32) : i40
{
  i
}

function {:inline} $zext.i32.i48(i: i32) : i48
{
  i
}

function {:inline} $zext.i32.i56(i: i32) : i56
{
  i
}

function {:inline} $zext.i32.i64(i: i32) : i64
{
  i
}

function {:inline} $zext.i32.i96(i: i32) : i96
{
  i
}

function {:inline} $zext.i32.i128(i: i32) : i128
{
  i
}

function {:inline} $zext.i40.i48(i: i40) : i48
{
  i
}

function {:inline} $zext.i40.i56(i: i40) : i56
{
  i
}

function {:inline} $zext.i40.i64(i: i40) : i64
{
  i
}

function {:inline} $zext.i40.i96(i: i40) : i96
{
  i
}

function {:inline} $zext.i40.i128(i: i40) : i128
{
  i
}

function {:inline} $zext.i48.i56(i: i48) : i56
{
  i
}

function {:inline} $zext.i48.i64(i: i48) : i64
{
  i
}

function {:inline} $zext.i48.i96(i: i48) : i96
{
  i
}

function {:inline} $zext.i48.i128(i: i48) : i128
{
  i
}

function {:inline} $zext.i56.i64(i: i56) : i64
{
  i
}

function {:inline} $zext.i56.i96(i: i56) : i96
{
  i
}

function {:inline} $zext.i56.i128(i: i56) : i128
{
  i
}

function {:inline} $zext.i64.i96(i: i64) : i96
{
  i
}

function {:inline} $zext.i64.i128(i: i64) : i128
{
  i
}

function {:inline} $zext.i96.i128(i: i96) : i128
{
  i
}

function {:inline} $sext.i1.i8(i: i1) : i8
{
  i
}

function {:inline} $sext.i1.i16(i: i1) : i16
{
  i
}

function {:inline} $sext.i1.i24(i: i1) : i24
{
  i
}

function {:inline} $sext.i1.i32(i: i1) : i32
{
  i
}

function {:inline} $sext.i1.i40(i: i1) : i40
{
  i
}

function {:inline} $sext.i1.i48(i: i1) : i48
{
  i
}

function {:inline} $sext.i1.i56(i: i1) : i56
{
  i
}

function {:inline} $sext.i1.i64(i: i1) : i64
{
  i
}

function {:inline} $sext.i1.i96(i: i1) : i96
{
  i
}

function {:inline} $sext.i1.i128(i: i1) : i128
{
  i
}

function {:inline} $sext.i8.i16(i: i8) : i16
{
  i
}

function {:inline} $sext.i8.i24(i: i8) : i24
{
  i
}

function {:inline} $sext.i8.i32(i: i8) : i32
{
  i
}

function {:inline} $sext.i8.i40(i: i8) : i40
{
  i
}

function {:inline} $sext.i8.i48(i: i8) : i48
{
  i
}

function {:inline} $sext.i8.i56(i: i8) : i56
{
  i
}

function {:inline} $sext.i8.i64(i: i8) : i64
{
  i
}

function {:inline} $sext.i8.i96(i: i8) : i96
{
  i
}

function {:inline} $sext.i8.i128(i: i8) : i128
{
  i
}

function {:inline} $sext.i16.i24(i: i16) : i24
{
  i
}

function {:inline} $sext.i16.i32(i: i16) : i32
{
  i
}

function {:inline} $sext.i16.i40(i: i16) : i40
{
  i
}

function {:inline} $sext.i16.i48(i: i16) : i48
{
  i
}

function {:inline} $sext.i16.i56(i: i16) : i56
{
  i
}

function {:inline} $sext.i16.i64(i: i16) : i64
{
  i
}

function {:inline} $sext.i16.i96(i: i16) : i96
{
  i
}

function {:inline} $sext.i16.i128(i: i16) : i128
{
  i
}

function {:inline} $sext.i24.i32(i: i24) : i32
{
  i
}

function {:inline} $sext.i24.i40(i: i24) : i40
{
  i
}

function {:inline} $sext.i24.i48(i: i24) : i48
{
  i
}

function {:inline} $sext.i24.i56(i: i24) : i56
{
  i
}

function {:inline} $sext.i24.i64(i: i24) : i64
{
  i
}

function {:inline} $sext.i24.i96(i: i24) : i96
{
  i
}

function {:inline} $sext.i24.i128(i: i24) : i128
{
  i
}

function {:inline} $sext.i32.i40(i: i32) : i40
{
  i
}

function {:inline} $sext.i32.i48(i: i32) : i48
{
  i
}

function {:inline} $sext.i32.i56(i: i32) : i56
{
  i
}

function {:inline} $sext.i32.i64(i: i32) : i64
{
  i
}

function {:inline} $sext.i32.i96(i: i32) : i96
{
  i
}

function {:inline} $sext.i32.i128(i: i32) : i128
{
  i
}

function {:inline} $sext.i40.i48(i: i40) : i48
{
  i
}

function {:inline} $sext.i40.i56(i: i40) : i56
{
  i
}

function {:inline} $sext.i40.i64(i: i40) : i64
{
  i
}

function {:inline} $sext.i40.i96(i: i40) : i96
{
  i
}

function {:inline} $sext.i40.i128(i: i40) : i128
{
  i
}

function {:inline} $sext.i48.i56(i: i48) : i56
{
  i
}

function {:inline} $sext.i48.i64(i: i48) : i64
{
  i
}

function {:inline} $sext.i48.i96(i: i48) : i96
{
  i
}

function {:inline} $sext.i48.i128(i: i48) : i128
{
  i
}

function {:inline} $sext.i56.i64(i: i56) : i64
{
  i
}

function {:inline} $sext.i56.i96(i: i56) : i96
{
  i
}

function {:inline} $sext.i56.i128(i: i56) : i128
{
  i
}

function {:inline} $sext.i64.i96(i: i64) : i96
{
  i
}

function {:inline} $sext.i64.i128(i: i64) : i128
{
  i
}

function {:inline} $sext.i96.i128(i: i96) : i128
{
  i
}

function $fp(ipart: int, fpart: int, epart: int) : float;

function $fadd.float(f1: float, f2: float) : float;

function $fsub.float(f1: float, f2: float) : float;

function $fmul.float(f1: float, f2: float) : float;

function $fdiv.float(f1: float, f2: float) : float;

function $frem.float(f1: float, f2: float) : float;

function $ffalse.float(f1: float, f2: float) : i1;

function $ftrue.float(f1: float, f2: float) : i1;

function {:inline} $foeq.float(f1: float, f2: float) : i1
{
  (if $foeq.bool(f1, f2) then 1 else 0)
}

function $foeq.bool(f1: float, f2: float) : bool;

function $foge.float(f1: float, f2: float) : i1;

function $fogt.float(f1: float, f2: float) : i1;

function $fole.float(f1: float, f2: float) : i1;

function $folt.float(f1: float, f2: float) : i1;

function $fone.float(f1: float, f2: float) : i1;

function $ford.float(f1: float, f2: float) : i1;

function $fueq.float(f1: float, f2: float) : i1;

function $fuge.float(f1: float, f2: float) : i1;

function $fugt.float(f1: float, f2: float) : i1;

function $fule.float(f1: float, f2: float) : i1;

function $fult.float(f1: float, f2: float) : i1;

function $fune.float(f1: float, f2: float) : i1;

function $funo.float(f1: float, f2: float) : i1;

function $fp2si.float.i128(f: float) : i128;

function $fp2ui.float.i128(f: float) : i128;

function $si2fp.i128.float(i: i128) : float;

function $ui2fp.i128.float(i: i128) : float;

function $fp2si.float.i96(f: float) : i96;

function $fp2ui.float.i96(f: float) : i96;

function $si2fp.i96.float(i: i96) : float;

function $ui2fp.i96.float(i: i96) : float;

function $fp2si.float.i64(f: float) : i64;

function $fp2ui.float.i64(f: float) : i64;

function $si2fp.i64.float(i: i64) : float;

function $ui2fp.i64.float(i: i64) : float;

function $fp2si.float.i56(f: float) : i56;

function $fp2ui.float.i56(f: float) : i56;

function $si2fp.i56.float(i: i56) : float;

function $ui2fp.i56.float(i: i56) : float;

function $fp2si.float.i48(f: float) : i48;

function $fp2ui.float.i48(f: float) : i48;

function $si2fp.i48.float(i: i48) : float;

function $ui2fp.i48.float(i: i48) : float;

function $fp2si.float.i40(f: float) : i40;

function $fp2ui.float.i40(f: float) : i40;

function $si2fp.i40.float(i: i40) : float;

function $ui2fp.i40.float(i: i40) : float;

function $fp2si.float.i32(f: float) : i32;

function $fp2ui.float.i32(f: float) : i32;

function $si2fp.i32.float(i: i32) : float;

function $ui2fp.i32.float(i: i32) : float;

function $fp2si.float.i24(f: float) : i24;

function $fp2ui.float.i24(f: float) : i24;

function $si2fp.i24.float(i: i24) : float;

function $ui2fp.i24.float(i: i24) : float;

function $fp2si.float.i16(f: float) : i16;

function $fp2ui.float.i16(f: float) : i16;

function $si2fp.i16.float(i: i16) : float;

function $ui2fp.i16.float(i: i16) : float;

function $fp2si.float.i8(f: float) : i8;

function $fp2ui.float.i8(f: float) : i8;

function $si2fp.i8.float(i: i8) : float;

function $ui2fp.i8.float(i: i8) : float;

function $fptrunc.float.float(f: float) : float;

function $fpext.float.float(f: float) : float;

function $fp2si.float.bv128(f: float) : bv128;

function $fp2ui.float.bv128(f: float) : bv128;

function $si2fp.bv128.float(i: bv128) : float;

function $ui2fp.bv128.float(i: bv128) : float;

function $fp2si.float.bv96(f: float) : bv96;

function $fp2ui.float.bv96(f: float) : bv96;

function $si2fp.bv96.float(i: bv96) : float;

function $ui2fp.bv96.float(i: bv96) : float;

function $fp2si.float.bv64(f: float) : bv64;

function $fp2ui.float.bv64(f: float) : bv64;

function $si2fp.bv64.float(i: bv64) : float;

function $ui2fp.bv64.float(i: bv64) : float;

function $fp2si.float.bv56(f: float) : bv56;

function $fp2ui.float.bv56(f: float) : bv56;

function $si2fp.bv56.float(i: bv56) : float;

function $ui2fp.bv56.float(i: bv56) : float;

function $fp2si.float.bv48(f: float) : bv48;

function $fp2ui.float.bv48(f: float) : bv48;

function $si2fp.bv48.float(i: bv48) : float;

function $ui2fp.bv48.float(i: bv48) : float;

function $fp2si.float.bv40(f: float) : bv40;

function $fp2ui.float.bv40(f: float) : bv40;

function $si2fp.bv40.float(i: bv40) : float;

function $ui2fp.bv40.float(i: bv40) : float;

function $fp2si.float.bv32(f: float) : bv32;

function $fp2ui.float.bv32(f: float) : bv32;

function $si2fp.bv32.float(i: bv32) : float;

function $ui2fp.bv32.float(i: bv32) : float;

function $fp2si.float.bv24(f: float) : bv24;

function $fp2ui.float.bv24(f: float) : bv24;

function $si2fp.bv24.float(i: bv24) : float;

function $ui2fp.bv24.float(i: bv24) : float;

function $fp2si.float.bv16(f: float) : bv16;

function $fp2ui.float.bv16(f: float) : bv16;

function $si2fp.bv16.float(i: bv16) : float;

function $ui2fp.bv16.float(i: bv16) : float;

function $fp2si.float.bv8(f: float) : bv8;

function $fp2ui.float.bv8(f: float) : bv8;

function $si2fp.bv8.float(i: bv8) : float;

function $ui2fp.bv8.float(i: bv8) : float;

axiom (forall f1: float, f2: float :: f1 != f2 || $foeq.bool(f1, f2));

axiom (forall i: i128 :: $fp2ui.float.i128($ui2fp.i128.float(i)) == i);

axiom (forall f: float :: $ui2fp.i128.float($fp2ui.float.i128(f)) == f);

axiom (forall i: i128 :: $fp2si.float.i128($si2fp.i128.float(i)) == i);

axiom (forall f: float :: $si2fp.i128.float($fp2si.float.i128(f)) == f);

axiom (forall i: i96 :: $fp2ui.float.i96($ui2fp.i96.float(i)) == i);

axiom (forall f: float :: $ui2fp.i96.float($fp2ui.float.i96(f)) == f);

axiom (forall i: i96 :: $fp2si.float.i96($si2fp.i96.float(i)) == i);

axiom (forall f: float :: $si2fp.i96.float($fp2si.float.i96(f)) == f);

axiom (forall i: i64 :: $fp2ui.float.i64($ui2fp.i64.float(i)) == i);

axiom (forall f: float :: $ui2fp.i64.float($fp2ui.float.i64(f)) == f);

axiom (forall i: i64 :: $fp2si.float.i64($si2fp.i64.float(i)) == i);

axiom (forall f: float :: $si2fp.i64.float($fp2si.float.i64(f)) == f);

axiom (forall i: i56 :: $fp2ui.float.i56($ui2fp.i56.float(i)) == i);

axiom (forall f: float :: $ui2fp.i56.float($fp2ui.float.i56(f)) == f);

axiom (forall i: i56 :: $fp2si.float.i56($si2fp.i56.float(i)) == i);

axiom (forall f: float :: $si2fp.i56.float($fp2si.float.i56(f)) == f);

axiom (forall i: i48 :: $fp2ui.float.i48($ui2fp.i48.float(i)) == i);

axiom (forall f: float :: $ui2fp.i48.float($fp2ui.float.i48(f)) == f);

axiom (forall i: i48 :: $fp2si.float.i48($si2fp.i48.float(i)) == i);

axiom (forall f: float :: $si2fp.i48.float($fp2si.float.i48(f)) == f);

axiom (forall i: i40 :: $fp2ui.float.i40($ui2fp.i40.float(i)) == i);

axiom (forall f: float :: $ui2fp.i40.float($fp2ui.float.i40(f)) == f);

axiom (forall i: i40 :: $fp2si.float.i40($si2fp.i40.float(i)) == i);

axiom (forall f: float :: $si2fp.i40.float($fp2si.float.i40(f)) == f);

axiom (forall i: i32 :: $fp2ui.float.i32($ui2fp.i32.float(i)) == i);

axiom (forall f: float :: $ui2fp.i32.float($fp2ui.float.i32(f)) == f);

axiom (forall i: i32 :: $fp2si.float.i32($si2fp.i32.float(i)) == i);

axiom (forall f: float :: $si2fp.i32.float($fp2si.float.i32(f)) == f);

axiom (forall i: i24 :: $fp2ui.float.i24($ui2fp.i24.float(i)) == i);

axiom (forall f: float :: $ui2fp.i24.float($fp2ui.float.i24(f)) == f);

axiom (forall i: i24 :: $fp2si.float.i24($si2fp.i24.float(i)) == i);

axiom (forall f: float :: $si2fp.i24.float($fp2si.float.i24(f)) == f);

axiom (forall i: i16 :: $fp2ui.float.i16($ui2fp.i16.float(i)) == i);

axiom (forall f: float :: $ui2fp.i16.float($fp2ui.float.i16(f)) == f);

axiom (forall i: i16 :: $fp2si.float.i16($si2fp.i16.float(i)) == i);

axiom (forall f: float :: $si2fp.i16.float($fp2si.float.i16(f)) == f);

axiom (forall i: i8 :: $fp2ui.float.i8($ui2fp.i8.float(i)) == i);

axiom (forall f: float :: $ui2fp.i8.float($fp2ui.float.i8(f)) == f);

axiom (forall i: i8 :: $fp2si.float.i8($si2fp.i8.float(i)) == i);

axiom (forall f: float :: $si2fp.i8.float($fp2si.float.i8(f)) == f);

const $GLOBALS_BOTTOM: ref;

const $EXTERNS_BOTTOM: ref;

const $MALLOC_TOP: ref;

function $base(ref) : ref;

function {:inline} $isExternal(p: ref) : bool
{
  $slt.ref.bool(p, $EXTERNS_BOTTOM)
}

function {:inline} $load.i128(M: [ref]i128, p: ref) : i128
{
  M[p]
}

function {:inline} $load.i96(M: [ref]i96, p: ref) : i96
{
  M[p]
}

function {:inline} $load.i64(M: [ref]i64, p: ref) : i64
{
  M[p]
}

function {:inline} $load.i56(M: [ref]i56, p: ref) : i56
{
  M[p]
}

function {:inline} $load.i48(M: [ref]i48, p: ref) : i48
{
  M[p]
}

function {:inline} $load.i40(M: [ref]i40, p: ref) : i40
{
  M[p]
}

function {:inline} $load.i32(M: [ref]i32, p: ref) : i32
{
  M[p]
}

function {:inline} $load.i24(M: [ref]i24, p: ref) : i24
{
  M[p]
}

function {:inline} $load.i16(M: [ref]i16, p: ref) : i16
{
  M[p]
}

function {:inline} $load.i8(M: [ref]i8, p: ref) : i8
{
  M[p]
}

function {:inline} $load.bv128(M: [ref]bv128, p: ref) : bv128
{
  M[p]
}

function {:inline} $load.bv96(M: [ref]bv96, p: ref) : bv96
{
  M[p]
}

function {:inline} $load.bv64(M: [ref]bv64, p: ref) : bv64
{
  M[p]
}

function {:inline} $load.bv56(M: [ref]bv56, p: ref) : bv56
{
  M[p]
}

function {:inline} $load.bv48(M: [ref]bv48, p: ref) : bv48
{
  M[p]
}

function {:inline} $load.bv40(M: [ref]bv40, p: ref) : bv40
{
  M[p]
}

function {:inline} $load.bv32(M: [ref]bv32, p: ref) : bv32
{
  M[p]
}

function {:inline} $load.bv24(M: [ref]bv24, p: ref) : bv24
{
  M[p]
}

function {:inline} $load.bv16(M: [ref]bv16, p: ref) : bv16
{
  M[p]
}

function {:inline} $load.bv8(M: [ref]bv8, p: ref) : bv8
{
  M[p]
}

function {:inline} $load.bytes.bv128(M: [ref]bv8, p: ref) : bv128
{
  $load.bytes.bv64(M, $add.ref(p, $8.ref)) ++ $load.bytes.bv64(M, p)
}

function {:inline} $load.bytes.bv96(M: [ref]bv8, p: ref) : bv96
{
  $load.bytes.bv64(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p)
}

function {:inline} $load.bytes.bv64(M: [ref]bv8, p: ref) : bv64
{
  $load.bytes.bv32(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p)
}

function {:inline} $load.bytes.bv56(M: [ref]bv8, p: ref) : bv56
{
  $load.bytes.bv24(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p)
}

function {:inline} $load.bytes.bv48(M: [ref]bv8, p: ref) : bv48
{
  $load.bytes.bv16(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p)
}

function {:inline} $load.bytes.bv40(M: [ref]bv8, p: ref) : bv40
{
  M[$add.ref(p, $4.ref)] ++ $load.bytes.bv32(M, p)
}

function {:inline} $load.bytes.bv32(M: [ref]bv8, p: ref) : bv32
{
  M[$add.ref(p, $3.ref)] ++ M[$add.ref(p, $2.ref)] ++ M[$add.ref(p, $1.ref)] ++ M[p]
}

function {:inline} $load.bytes.bv24(M: [ref]bv8, p: ref) : bv24
{
  M[$add.ref(p, $2.ref)] ++ M[$add.ref(p, $1.ref)] ++ M[p]
}

function {:inline} $load.bytes.bv16(M: [ref]bv8, p: ref) : bv16
{
  M[$add.ref(p, $1.ref)] ++ M[p]
}

function {:inline} $load.bytes.bv8(M: [ref]bv8, p: ref) : bv8
{
  M[p]
}

function {:inline} $store.i128(M: [ref]i128, p: ref, v: i128) : [ref]i128
{
  M[p := v]
}

function {:inline} $store.i96(M: [ref]i96, p: ref, v: i96) : [ref]i96
{
  M[p := v]
}

function {:inline} $store.i64(M: [ref]i64, p: ref, v: i64) : [ref]i64
{
  M[p := v]
}

function {:inline} $store.i56(M: [ref]i56, p: ref, v: i56) : [ref]i56
{
  M[p := v]
}

function {:inline} $store.i48(M: [ref]i48, p: ref, v: i48) : [ref]i48
{
  M[p := v]
}

function {:inline} $store.i40(M: [ref]i40, p: ref, v: i40) : [ref]i40
{
  M[p := v]
}

function {:inline} $store.i32(M: [ref]i32, p: ref, v: i32) : [ref]i32
{
  M[p := v]
}

function {:inline} $store.i24(M: [ref]i24, p: ref, v: i24) : [ref]i24
{
  M[p := v]
}

function {:inline} $store.i16(M: [ref]i16, p: ref, v: i16) : [ref]i16
{
  M[p := v]
}

function {:inline} $store.i8(M: [ref]i8, p: ref, v: i8) : [ref]i8
{
  M[p := v]
}

function {:inline} $store.bv128(M: [ref]bv128, p: ref, v: bv128) : [ref]bv128
{
  M[p := v]
}

function {:inline} $store.bv96(M: [ref]bv96, p: ref, v: bv96) : [ref]bv96
{
  M[p := v]
}

function {:inline} $store.bv64(M: [ref]bv64, p: ref, v: bv64) : [ref]bv64
{
  M[p := v]
}

function {:inline} $store.bv56(M: [ref]bv56, p: ref, v: bv56) : [ref]bv56
{
  M[p := v]
}

function {:inline} $store.bv48(M: [ref]bv48, p: ref, v: bv48) : [ref]bv48
{
  M[p := v]
}

function {:inline} $store.bv40(M: [ref]bv40, p: ref, v: bv40) : [ref]bv40
{
  M[p := v]
}

function {:inline} $store.bv32(M: [ref]bv32, p: ref, v: bv32) : [ref]bv32
{
  M[p := v]
}

function {:inline} $store.bv24(M: [ref]bv24, p: ref, v: bv24) : [ref]bv24
{
  M[p := v]
}

function {:inline} $store.bv16(M: [ref]bv16, p: ref, v: bv16) : [ref]bv16
{
  M[p := v]
}

function {:inline} $store.bv8(M: [ref]bv8, p: ref, v: bv8) : [ref]bv8
{
  M[p := v]
}

function {:inline} $store.bytes.bv128(M: [ref]bv8, p: ref, v: bv128) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]][$add.ref(p, $7.ref) := v[64:56]][$add.ref(p, $7.ref) := v[72:64]][$add.ref(p, $8.ref) := v[80:72]][$add.ref(p, $9.ref) := v[88:80]][$add.ref(p, $10.ref) := v[96:88]][$add.ref(p, $11.ref) := v[104:96]][$add.ref(p, $12.ref) := v[112:104]][$add.ref(p, $13.ref) := v[120:112]][$add.ref(p, $14.ref) := v[128:120]]
}

function {:inline} $store.bytes.bv96(M: [ref]bv8, p: ref, v: bv96) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]][$add.ref(p, $7.ref) := v[64:56]][$add.ref(p, $7.ref) := v[72:64]][$add.ref(p, $8.ref) := v[80:72]][$add.ref(p, $9.ref) := v[88:80]][$add.ref(p, $10.ref) := v[96:88]]
}

function {:inline} $store.bytes.bv64(M: [ref]bv8, p: ref, v: bv64) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]][$add.ref(p, $7.ref) := v[64:56]]
}

function {:inline} $store.bytes.bv56(M: [ref]bv8, p: ref, v: bv56) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]]
}

function {:inline} $store.bytes.bv48(M: [ref]bv8, p: ref, v: bv48) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]]
}

function {:inline} $store.bytes.bv40(M: [ref]bv8, p: ref, v: bv40) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]]
}

function {:inline} $store.bytes.bv32(M: [ref]bv8, p: ref, v: bv32) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]]
}

function {:inline} $store.bytes.bv24(M: [ref]bv8, p: ref, v: bv24) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]]
}

function {:inline} $store.bytes.bv16(M: [ref]bv8, p: ref, v: bv16) : [ref]bv8
{
  M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]]
}

function {:inline} $store.bytes.bv8(M: [ref]bv8, p: ref, v: bv8) : [ref]bv8
{
  M[p := v]
}

function {:inline} $load.ref(M: [ref]ref, p: ref) : ref
{
  M[p]
}

function {:inline} $store.ref(M: [ref]ref, p: ref, v: ref) : [ref]ref
{
  M[p := v]
}

function {:inline} $load.float(M: [ref]float, p: ref) : float
{
  M[p]
}

function {:inline} $store.float(M: [ref]float, p: ref, v: float) : [ref]float
{
  M[p := v]
}

type $mop;

procedure boogie_si_record_mop(m: $mop);



const $MOP: $mop;

procedure boogie_si_record_bool(i: bool);



procedure boogie_si_record_i1(i: i1);



procedure boogie_si_record_i8(i: i8);



procedure boogie_si_record_i16(i: i16);



procedure boogie_si_record_i24(i: i24);



procedure boogie_si_record_i32(i: i32);



procedure boogie_si_record_i40(i: i40);



procedure boogie_si_record_i48(i: i48);



procedure boogie_si_record_i56(i: i56);



procedure boogie_si_record_i64(i: i64);



procedure boogie_si_record_i96(i: i96);



procedure boogie_si_record_i128(i: i128);



procedure boogie_si_record_bv1(i: bv1);



procedure boogie_si_record_bv8(i: bv8);



procedure boogie_si_record_bv16(i: bv16);



procedure boogie_si_record_bv24(i: bv24);



procedure boogie_si_record_bv32(i: bv32);



procedure boogie_si_record_bv40(i: bv40);



procedure boogie_si_record_bv48(i: bv48);



procedure boogie_si_record_bv56(i: bv56);



procedure boogie_si_record_bv64(i: bv64);



procedure boogie_si_record_bv96(i: bv96);



procedure boogie_si_record_bv128(i: bv128);



procedure boogie_si_record_ref(i: ref);



procedure boogie_si_record_float(i: float);



var $Alloc: [ref]bool;

var $CurrAddr: ref;

procedure $alloc(n: ref) returns (p: ref);
  modifies $CurrAddr, $Alloc;



implementation {:ForceInline} $alloc(n: ref) returns (p: ref)
{

  anon0:
    assume $sgt.ref.bool($CurrAddr, $0.ref);
    p := $CurrAddr;
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} $sgt.ref.bool(n, $0.ref);
    $CurrAddr := $add.ref($CurrAddr, n);
    goto anon3;

  anon4_Else:
    assume {:partition} !$sgt.ref.bool(n, $0.ref);
    $CurrAddr := $add.ref($CurrAddr, $1.ref);
    goto anon3;

  anon3:
    $Alloc[p] := true;
    return;
}



procedure $free(p: ref);
  modifies $Alloc;



var $exn: bool;

var $exnv: int;

function $extractvalue(p: int, i: int) : int;

const __SMACK_top_decl: ref;

axiom __SMACK_top_decl == $sub.ref(0bv64, 104bv64);

procedure __SMACK_top_decl.ref($p0: ref);



const __SMACK_init_func_memory_model: ref;

axiom __SMACK_init_func_memory_model == $sub.ref(0bv64, 112bv64);

procedure __SMACK_init_func_memory_model();
  modifies $CurrAddr, $exn;



implementation __SMACK_init_func_memory_model()
{

  $bb0:
    assume {:sourceloc "/usr/local/share/smack/lib/smack.c", 1010, 3} true;
    $CurrAddr := $1024.ref;
    assume {:sourceloc "/usr/local/share/smack/lib/smack.c", 1011, 1} true;
    $exn := false;
    return;
}



const llvm.dbg.value: ref;

axiom llvm.dbg.value == $sub.ref(0bv64, 120bv64);

procedure llvm.dbg.value($p0: ref, $i1: i64, $p2: ref);



const res_ourserver_p: ref;

axiom res_ourserver_p == $sub.ref(0bv64, 128bv64);

procedure res_ourserver_p(statp: ref, inp: ref) returns ($r: i32);
  modifies $exn;



implementation res_ourserver_p(statp: ref, inp: ref) returns ($r: i32)
{
  var $p0: ref;
  var $i1: i16;
  var $i2: i1;
  var $i3: i1;
  var $i5: i1;
  var $p6: ref;
  var $p7: ref;
  var $p8: ref;
  var $p10: ref;
  var $i11: i16;
  var $p12: ref;
  var $i13: i32;
  var $i14: i64;
  var $p15: ref;
  var $p16: ref;
  var $i17: i1;
  var $p18: ref;
  var $i19: i16;
  var $i20: i1;
  var $p21: ref;
  var $i22: i16;
  var $i23: i1;
  var $p24: ref;
  var $i25: i32;
  var $i26: i1;
  var $i27: i1;
  var $i28: i1;
  var $i29: i64;
  var $i30: i32;
  var $i31: i1;
  var $i9: i64;
  var $p32: ref;
  var $p33: ref;
  var $i34: i1;
  var $p35: ref;
  var $i36: i16;
  var $i37: i1;
  var $p38: ref;
  var $i39: i16;
  var $i40: i16;
  var $i41: i1;
  var $p42: ref;
  var $p43: ref;
  var $i44: i32;
  var $i45: i1;
  var $i46: i32;
  var $i47: i1;
  var $i48: i64;
  var $i49: i32;
  var $i50: i1;
  var $i4: i32;

  $bb0:
    call {:si_unique_call 3} {:cexpr "statp"} boogie_si_record_ref(statp);
    call {:si_unique_call 4} {:cexpr "inp"} boogie_si_record_ref(inp);
    assume {:sourceloc "./res_send.c", 223, 6} true;
    $p0 := inp;
    assume {:sourceloc "./res_send.c", 223, 6} true;
    $i1 := $load.i16($M.0, $p0);
    $i2 := $slt.i16($i1, 10);
    assume {:branchcond $i2} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i2 == 1;
    $i5 := $eq.i16($i1, 2);
    $i4 := 0;
    assume {:branchcond $i5} true;
    goto $bb6, $bb7;

  $bb2:
    assume !($i2 == 1);
    $i3 := $eq.i16($i1, 10);
    $i4 := 0;
    assume {:branchcond $i3} true;
    goto $bb3, $bb4;

  $bb3:
    assume $i3 == 1;
    assume {:sourceloc "./res_send.c", 245, 9} true;
    $p6 := $add.ref(inp, 8bv64);
    assume {:sourceloc "./res_send.c", 245, 9} true;
    $p7 := $bitcast.ref.ref($p6);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $p8 := $add.ref(inp, 2bv64);
    assume {:sourceloc "./res_send.c", 239, 11} true;
    $i9 := 0;
    goto $bb8;

  $bb4:
    assume !($i3 == 1);
    goto $bb5;

  $bb5:
    assume {:sourceloc "./res_send.c", 251, 1} true;
    $r := $i4;
    $exn := false;
    return;

  $bb6:
    assume $i5 == 1;
    assume {:sourceloc "./res_send.c", 225, 6} true;
    $p10 := $add.ref(inp, 2bv64);
    assume {:sourceloc "./res_send.c", 225, 6} true;
    $i11 := $load.i16($M.0, $p10);
    call {:si_unique_call 5} {:cexpr "port"} boogie_si_record_i16($i11);
    assume {:sourceloc "./res_send.c", 226, 6} true;
    $p12 := $add.ref(inp, 4bv64);
    assume {:sourceloc "./res_send.c", 226, 6} true;
    $i13 := $load.i32($M.0, $p12);
    call {:si_unique_call 6} {:cexpr "addr"} boogie_si_record_i32($i13);
    call {:si_unique_call 7} {:cexpr "ns"} boogie_si_record_i32(0);
    assume {:sourceloc "./res_send.c", 228, 11} true;
    $i14 := 0;
    goto $bb9;

  $bb7:
    assume !($i5 == 1);
    goto $bb5;

  $bb8:
    assume {:sourceloc "./res_send.c", 240, 3} true;
    $p32 := $add.ref($add.ref($add.ref(statp, 512bv64), 24bv64), $mul.ref($int2bv.64($i9), 8bv64));
    assume {:sourceloc "./res_send.c", 240, 3} true;
    $p33 := $load.ref($M.0, $p32);
    call {:si_unique_call 8} {:cexpr "srv"} boogie_si_record_ref($p33);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $i34 := $eq.ref($p33, $0.ref);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    assume {:branchcond $i34} true;
    goto $bb21, $bb23;

  $bb9:
    assume {:sourceloc "./res_send.c", 229, 3} true;
    $p15 := $add.ref($add.ref($add.ref(statp, 512bv64), 24bv64), $mul.ref($int2bv.64($i14), 8bv64));
    assume {:sourceloc "./res_send.c", 229, 3} true;
    $p16 := $load.ref($M.0, $p15);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i17 := $eq.ref($p16, $0.ref);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    assume {:branchcond $i17} true;
    goto $bb10, $bb12;

  $bb10:
    assume {:sourceloc "./res_send.c", 232, 7} true;
    assume $i17 == 1;
    goto $bb11;

  $bb11:
    assume {:sourceloc "./res_send.c", 228, 11} true;
    $i29 := $add.i64($i14, 1);
    assume {:sourceloc "./res_send.c", 228, 11} true;
    $i30 := $trunc.i64.i32($i29);
    assume {:sourceloc "./res_send.c", 228, 11} true;
    $i31 := $slt.i32($i30, 3);
    assume {:sourceloc "./res_send.c", 228, 11} true;
    $i14, $i4 := $i29, 0;
    assume {:branchcond $i31} true;
    goto $bb19, $bb20;

  $bb12:
    assume !($i17 == 1);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $p18 := $p16;
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i19 := $load.i16($M.0, $p18);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i20 := $eq.i16($i19, 2);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    assume {:branchcond $i20} true;
    goto $bb13, $bb14;

  $bb13:
    assume $i20 == 1;
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $p21 := $add.ref($p16, 2bv64);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i22 := $load.i16($M.0, $p21);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i23 := $eq.i16($i22, $i11);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    assume {:branchcond $i23} true;
    goto $bb15, $bb16;

  $bb14:
    assume {:sourceloc "./res_send.c", 232, 7} true;
    assume !($i20 == 1);
    goto $bb11;

  $bb15:
    assume $i23 == 1;
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $p24 := $add.ref($p16, 4bv64);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i25 := $load.i32($M.0, $p24);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i26 := $eq.i32($i25, 0);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i27 := $eq.i32($i25, $i13);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i28 := $or.i1($i26, $i27);
    assume {:sourceloc "./res_send.c", 232, 7} true;
    $i4 := 1;
    assume {:branchcond $i28} true;
    goto $bb17, $bb18;

  $bb16:
    assume {:sourceloc "./res_send.c", 232, 7} true;
    assume !($i23 == 1);
    goto $bb11;

  $bb17:
    assume {:sourceloc "./res_send.c", 232, 7} true;
    assume $i28 == 1;
    goto $bb5;

  $bb18:
    assume {:sourceloc "./res_send.c", 232, 7} true;
    assume !($i28 == 1);
    goto $bb11;

  $bb19:
    assume {:sourceloc "./res_send.c", 228, 11} true;
    assume $i31 == 1;
    goto $bb9;

  $bb20:
    assume {:sourceloc "./res_send.c", 228, 11} true;
    assume !($i31 == 1);
    goto $bb5;

  $bb21:
    assume {:sourceloc "./res_send.c", 241, 7} true;
    assume $i34 == 1;
    goto $bb22;

  $bb22:
    assume {:sourceloc "./res_send.c", 239, 11} true;
    $i48 := $add.i64($i9, 1);
    assume {:sourceloc "./res_send.c", 239, 11} true;
    $i49 := $trunc.i64.i32($i48);
    assume {:sourceloc "./res_send.c", 239, 11} true;
    $i50 := $slt.i32($i49, 3);
    assume {:sourceloc "./res_send.c", 239, 11} true;
    $i9, $i4 := $i48, 0;
    assume {:branchcond $i50} true;
    goto $bb32, $bb33;

  $bb23:
    assume !($i34 == 1);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $p35 := $p33;
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $i36 := $load.i16($M.0, $p35);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $i37 := $eq.i16($i36, 10);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    assume {:branchcond $i37} true;
    goto $bb24, $bb25;

  $bb24:
    assume $i37 == 1;
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $p38 := $add.ref($p33, 2bv64);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $i39 := $load.i16($M.0, $p38);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $i40 := $load.i16($M.0, $p8);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    $i41 := $eq.i16($i39, $i40);
    assume {:sourceloc "./res_send.c", 241, 7} true;
    assume {:branchcond $i41} true;
    goto $bb26, $bb27;

  $bb25:
    assume {:sourceloc "./res_send.c", 241, 7} true;
    assume !($i37 == 1);
    goto $bb22;

  $bb26:
    assume $i41 == 1;
    assume {:sourceloc "./res_send.c", 243, 9} true;
    $p42 := $add.ref($p33, 8bv64);
    assume {:sourceloc "./res_send.c", 243, 9} true;
    $p43 := $bitcast.ref.ref($p42);
    assume {:sourceloc "./res_send.c", 243, 9} true;
    call {:si_unique_call 9} $i44 := memcmp($p43, $bitcast.ref.ref(in6addr_any), 16);
    assume {:sourceloc "./res_send.c", 243, 9} true;
    $i45 := $eq.i32($i44, 0);
    assume {:sourceloc "./res_send.c", 243, 9} true;
    $i4 := 1;
    assume {:branchcond $i45} true;
    goto $bb28, $bb29;

  $bb27:
    assume {:sourceloc "./res_send.c", 241, 7} true;
    assume !($i41 == 1);
    goto $bb22;

  $bb28:
    assume {:sourceloc "./res_send.c", 243, 9} true;
    assume $i45 == 1;
    goto $bb5;

  $bb29:
    assume !($i45 == 1);
    assume {:sourceloc "./res_send.c", 245, 9} true;
    call {:si_unique_call 10} $i46 := memcmp($p43, $p7, 16);
    assume {:sourceloc "./res_send.c", 245, 9} true;
    $i47 := $eq.i32($i46, 0);
    assume {:sourceloc "./res_send.c", 245, 9} true;
    $i4 := 1;
    assume {:branchcond $i47} true;
    goto $bb30, $bb31;

  $bb30:
    assume {:sourceloc "./res_send.c", 245, 9} true;
    assume $i47 == 1;
    goto $bb5;

  $bb31:
    assume {:sourceloc "./res_send.c", 245, 9} true;
    assume !($i47 == 1);
    goto $bb22;

  $bb32:
    assume {:sourceloc "./res_send.c", 239, 11} true;
    assume $i50 == 1;
    goto $bb8;

  $bb33:
    assume {:sourceloc "./res_send.c", 239, 11} true;
    assume !($i50 == 1);
    goto $bb5;
}



const llvm.dbg.declare: ref;

axiom llvm.dbg.declare == $sub.ref(0bv64, 136bv64);

procedure llvm.dbg.declare($p0: ref, $p1: ref);



const memcmp: ref;

axiom memcmp == $sub.ref(0bv64, 144bv64);

procedure memcmp($p0: ref, $p1: ref, $i2: i64) returns ($r: i32);



const __res_nameinquery: ref;

axiom __res_nameinquery == $sub.ref(0bv64, 152bv64);

procedure __res_nameinquery(name: ref, type_: i32, class: i32, buf: ref, eom: ref) returns ($r: i32);
  modifies $CurrAddr, $Alloc, $exn;



implementation __res_nameinquery(name: ref, type_: i32, class: i32, buf: ref, eom: ref) returns ($r: i32)
{
  var $p0: ref;
  var $p2: ref;
  var $i3: i96;
  var $i4: i96;
  var $i5: i16;
  var $i6: i16;
  var $i8: i1;
  var $i7: i32;
  var $p1: ref;
  var $p10: ref;
  var $i11: i32;
  var $p12: ref;
  var $i13: i32;
  var $i14: i32;
  var $i15: i1;
  var $i17: i64;
  var $i19: i64;
  var $p20: ref;
  var $i21: i1;
  var $p18: ref;
  var $p22: ref;
  var $i23: i16;
  var $i24: i16;
  var $i25: i32;
  var $i26: i64;
  var $p27: ref;
  var $p28: ref;
  var $i29: i16;
  var $i30: i16;
  var $i31: i1;
  var $i32: i32;
  var $i33: i1;
  var $i34: i1;
  var $i35: i32;
  var $i36: i1;
  var $i16: i32;
  var $i37: i1;
  var $i9: i32;

  $bb0:
    call {:si_unique_call 11} $p0 := $alloc($mul.ref(1026bv64, $int2bv.64(1)));
    call {:si_unique_call 12} {:cexpr "name"} boogie_si_record_ref(name);
    call {:si_unique_call 13} {:cexpr "type"} boogie_si_record_i32(type_);
    call {:si_unique_call 14} {:cexpr "class"} boogie_si_record_i32(class);
    call {:si_unique_call 15} {:cexpr "buf"} boogie_si_record_ref(buf);
    call {:si_unique_call 16} {:cexpr "eom"} boogie_si_record_ref(eom);
    call {:si_unique_call 17} {:cexpr "cp"} boogie_si_record_ref($p1);
    assume {:sourceloc "./res_send.c", 270, 16} true;
    $p2 := $bitcast.ref.ref(buf);
    assume {:sourceloc "./res_send.c", 270, 16} true;
    $i3 := $load.i96($M.0, $p2);
    assume {:sourceloc "./res_send.c", 270, 16} true;
    $i4 := $lshr.i96($i3, 32);
    assume {:sourceloc "./res_send.c", 270, 16} true;
    $i5 := $trunc.i96.i16($i4);
    call {:si_unique_call 18} {:cexpr "__x"} boogie_si_record_i16($i5);
    call {:si_unique_call 19} $i6 := devirtbounce(0bv64, $i5);
    call {:si_unique_call 20} {:cexpr "__v"} boogie_si_record_i16($i6);
    call {:si_unique_call 21} {:cexpr "qdcount"} boogie_si_record_i32($i7);
    assume {:sourceloc "./res_send.c", 272, 2} true;
    $i8 := $eq.i16($i6, 0);
    assume {:sourceloc "./res_send.c", 272, 2} true;
    $i9 := 0;
    assume {:branchcond $i8} true;
    goto $bb1, $bb3;

  $bb1:
    assume {:sourceloc "./res_send.c", 272, 2} true;
    assume $i8 == 1;
    goto $bb2;

  $bb2:
    assume {:sourceloc "./res_send.c", 289, 1} true;
    $r := $i9;
    $exn := false;
    return;

  $bb3:
    assume !($i8 == 1);
    assume {:sourceloc "./res_send.c", 270, 16} true;
    $i7 := $zext.i16.i32($i6);
    assume {:sourceloc "./res_send.c", 269, 2} true;
    $p1 := $add.ref(buf, 12bv64);
    assume {:sourceloc "./res_send.c", 273, 3} true;
    $p10 := $p0;
    assume {:sourceloc "./res_send.c", 272, 2} true;
    $i11, $p12 := $i7, $p1;
    goto $bb4;

  $bb4:
    assume {:sourceloc "./res_send.c", 272, 2} true;
    $i13 := $add.i32($i11, $sub.i32(0, 1));
    assume {:sourceloc "./res_send.c", 273, 3} true;
    call {:si_unique_call 22} llvm.lifetime.start(1026, $p10);
    assume true;
    assume {:sourceloc "./res_send.c", 276, 7} true;
    call {:si_unique_call 23} $i14 := __dn_expand(buf, eom, $p12, $p10, 1026);
    call {:si_unique_call 24} {:cexpr "n"} boogie_si_record_i32($i14);
    assume {:sourceloc "./res_send.c", 277, 7} true;
    $i15 := $slt.i32($i14, 0);
    assume {:sourceloc "./res_send.c", 277, 7} true;
    $i16 := $sub.i32(0, 1);
    assume {:branchcond $i15} true;
    goto $bb5, $bb7;

  $bb5:
    assume {:sourceloc "./res_send.c", 277, 7} true;
    assume $i15 == 1;
    goto $bb6;

  $bb6:
    assume {:sourceloc "./res_send.c", 287, 2} true;
    call {:si_unique_call 25} llvm.lifetime.end(1026, $p10);
    $i9 := $i16;
    goto $bb2;

  $bb7:
    assume !($i15 == 1);
    assume {:sourceloc "./res_send.c", 279, 3} true;
    $i17 := $sext.i32.i64($i14);
    call {:si_unique_call 26} {:cexpr "cp"} boogie_si_record_ref($p18);
    assume {:sourceloc "./res_send.c", 280, 7} true;
    $i19 := $add.i64($i17, 4);
    assume {:sourceloc "./res_send.c", 280, 7} true;
    $p20 := $add.ref($p12, $mul.ref($int2bv.64($i19), 1bv64));
    assume {:sourceloc "./res_send.c", 280, 7} true;
    $i21 := $ugt.ref($p20, eom);
    assume {:sourceloc "./res_send.c", 280, 7} true;
    $i16 := $sub.i32(0, 1);
    assume {:branchcond $i21} true;
    goto $bb8, $bb9;

  $bb8:
    assume {:sourceloc "./res_send.c", 280, 7} true;
    assume $i21 == 1;
    goto $bb6;

  $bb9:
    assume !($i21 == 1);
    assume {:sourceloc "./res_send.c", 279, 3} true;
    $p18 := $add.ref($p12, $mul.ref($int2bv.64($i17), 1bv64));
    assume {:sourceloc "./res_send.c", 282, 3} true;
    $p22 := $bitcast.ref.ref($p18);
    call {:si_unique_call 27} {:cexpr "t_cp"} boogie_si_record_ref($p22);
    assume {:sourceloc "./res_send.c", 282, 3} true;
    $i23 := $load.i16($M.0, $p22);
    call {:si_unique_call 28} {:cexpr "__x"} boogie_si_record_i16($i23);
    call {:si_unique_call 29} $i24 := devirtbounce(0bv64, $i23);
    call {:si_unique_call 30} {:cexpr "__v"} boogie_si_record_i16($i24);
    assume {:sourceloc "./res_send.c", 282, 3} true;
    $i25 := $zext.i16.i32($i24);
    call {:si_unique_call 31} {:cexpr "ttype"} boogie_si_record_i32($i25);
    assume {:sourceloc "./res_send.c", 282, 3} true;
    $i26 := $add.i64($i17, 2);
    assume {:sourceloc "./res_send.c", 282, 3} true;
    $p27 := $add.ref($p12, $mul.ref($int2bv.64($i26), 1bv64));
    call {:si_unique_call 32} {:cexpr "cp"} boogie_si_record_ref($p27);
    assume {:sourceloc "./res_send.c", 283, 3} true;
    $p28 := $bitcast.ref.ref($p27);
    call {:si_unique_call 33} {:cexpr "t_cp"} boogie_si_record_ref($p28);
    assume {:sourceloc "./res_send.c", 283, 3} true;
    $i29 := $load.i16($M.0, $p28);
    call {:si_unique_call 34} {:cexpr "__x"} boogie_si_record_i16($i29);
    call {:si_unique_call 35} $i30 := devirtbounce(0bv64, $i29);
    call {:si_unique_call 36} {:cexpr "__v"} boogie_si_record_i16($i30);
    call {:si_unique_call 37} {:cexpr "cp"} boogie_si_record_ref($p20);
    assume {:sourceloc "./res_send.c", 284, 7} true;
    $i31 := $eq.i32($i25, type_);
    $i32 := $zext.i16.i32($i30);
    assume {:sourceloc "./res_send.c", 284, 7} true;
    $i33 := $eq.i32($i32, class);
    assume {:sourceloc "./res_send.c", 284, 7} true;
    $i34 := $and.i1($i31, $i33);
    assume {:sourceloc "./res_send.c", 284, 7} true;
    assume {:branchcond $i34} true;
    goto $bb10, $bb11;

  $bb10:
    assume $i34 == 1;
    assume {:sourceloc "./res_send.c", 285, 7} true;
    call {:si_unique_call 38} $i35 := ns_samename($p10, name);
    assume {:sourceloc "./res_send.c", 285, 7} true;
    $i36 := $eq.i32($i35, 1);
    assume {:sourceloc "./res_send.c", 285, 7} true;
    $i16 := 1;
    assume {:branchcond $i36} true;
    goto $bb13, $bb14;

  $bb11:
    assume {:sourceloc "./res_send.c", 284, 7} true;
    assume !($i34 == 1);
    goto $bb12;

  $bb12:
    assume {:sourceloc "./res_send.c", 287, 2} true;
    call {:si_unique_call 39} llvm.lifetime.end(1026, $p10);
    call {:si_unique_call 40} {:cexpr "qdcount"} boogie_si_record_i32($i13);
    assume {:sourceloc "./res_send.c", 272, 2} true;
    $i37 := $sgt.i32($i13, 0);
    assume {:sourceloc "./res_send.c", 272, 2} true;
    $i11, $p12, $i9 := $i13, $p20, 0;
    assume {:branchcond $i37} true;
    goto $bb15, $bb16;

  $bb13:
    assume {:sourceloc "./res_send.c", 285, 7} true;
    assume $i36 == 1;
    goto $bb6;

  $bb14:
    assume {:sourceloc "./res_send.c", 285, 7} true;
    assume !($i36 == 1);
    goto $bb12;

  $bb15:
    assume {:sourceloc "./res_send.c", 272, 2} true;
    assume $i37 == 1;
    goto $bb4;

  $bb16:
    assume {:sourceloc "./res_send.c", 272, 2} true;
    assume !($i37 == 1);
    goto $bb2;
}



const llvm.lifetime.start: ref;

axiom llvm.lifetime.start == $sub.ref(0bv64, 160bv64);

procedure llvm.lifetime.start($i0: i64, $p1: ref);



const __dn_expand: ref;

axiom __dn_expand == $sub.ref(0bv64, 168bv64);

procedure __dn_expand($p0: ref, $p1: ref, $p2: ref, $p3: ref, $i4: i32) returns ($r: i32);



const ns_samename: ref;

axiom ns_samename == $sub.ref(0bv64, 176bv64);

procedure ns_samename($p0: ref, $p1: ref) returns ($r: i32);



const llvm.lifetime.end: ref;

axiom llvm.lifetime.end == $sub.ref(0bv64, 184bv64);

procedure llvm.lifetime.end($i0: i64, $p1: ref);



const __res_queriesmatch: ref;

axiom __res_queriesmatch == $sub.ref(0bv64, 192bv64);

procedure __res_queriesmatch(buf1: ref, eom1: ref, buf2: ref, eom2: ref) returns ($r: i32);
  modifies $CurrAddr, $Alloc, $exn;



implementation __res_queriesmatch(buf1: ref, eom1: ref, buf2: ref, eom2: ref) returns ($r: i32)
{
  var $p0: ref;
  var $p1: ref;
  var $i2: i1;
  var $p3: ref;
  var $i4: i1;
  var $i5: i1;
  var $p7: ref;
  var $i8: i96;
  var $i9: i96;
  var $i10: i1;
  var $p11: ref;
  var $i12: i96;
  var $i13: i96;
  var $i14: i1;
  var $i15: i96;
  var $p16: ref;
  var $i17: i96;
  var $i18: i96;
  var $i19: i96;
  var $i20: i1;
  var $i21: i96;
  var $i22: i16;
  var $i23: i16;
  var $i24: i32;
  var $p25: ref;
  var $p26: ref;
  var $i27: i32;
  var $i28: i32;
  var $i29: i1;
  var $i30: i32;
  var $i31: i1;
  var $i32: i64;
  var $i34: i64;
  var $p35: ref;
  var $i36: i1;
  var $p33: ref;
  var $p37: ref;
  var $i38: i16;
  var $i39: i16;
  var $i40: i32;
  var $i41: i64;
  var $p42: ref;
  var $p43: ref;
  var $i44: i16;
  var $i45: i16;
  var $i46: i32;
  var $i47: i32;
  var $i48: i1;
  var $i6: i32;

  $bb0:
    call {:si_unique_call 41} $p0 := $alloc($mul.ref(1026bv64, $int2bv.64(1)));
    call {:si_unique_call 42} {:cexpr "buf1"} boogie_si_record_ref(buf1);
    call {:si_unique_call 43} {:cexpr "eom1"} boogie_si_record_ref(eom1);
    call {:si_unique_call 44} {:cexpr "buf2"} boogie_si_record_ref(buf2);
    call {:si_unique_call 45} {:cexpr "eom2"} boogie_si_record_ref(eom2);
    assume {:sourceloc "./res_send.c", 307, 6} true;
    $p1 := $add.ref(buf1, 12bv64);
    assume {:sourceloc "./res_send.c", 307, 6} true;
    $i2 := $ugt.ref($p1, eom1);
    $p3 := $add.ref(buf2, 12bv64);
    assume {:sourceloc "./res_send.c", 307, 6} true;
    $i4 := $ugt.ref($p3, eom2);
    assume {:sourceloc "./res_send.c", 307, 6} true;
    $i5 := $or.i1($i2, $i4);
    assume {:sourceloc "./res_send.c", 307, 6} true;
    $i6 := $sub.i32(0, 1);
    assume {:branchcond $i5} true;
    goto $bb1, $bb3;

  $bb1:
    assume {:sourceloc "./res_send.c", 307, 6} true;
    assume $i5 == 1;
    goto $bb2;

  $bb2:
    assume {:sourceloc "./res_send.c", 344, 1} true;
    $r := $i6;
    $exn := false;
    return;

  $bb3:
    assume !($i5 == 1);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $p7 := $bitcast.ref.ref(buf1);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $i8 := $load.i96($M.0, $p7);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $i9 := $and.i96($i8, 7864320);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $i10 := $eq.i96($i9, 2621440);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    assume {:branchcond $i10} true;
    goto $bb4, $bb5;

  $bb4:
    assume $i10 == 1;
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $p11 := $bitcast.ref.ref(buf2);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $i12 := $load.i96($M.0, $p11);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $i13 := $and.i96($i12, 7864320);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $i14 := $eq.i96($i13, 2621440);
    assume {:sourceloc "./res_send.c", 314, 6} true;
    $i6 := 1;
    assume {:branchcond $i14} true;
    goto $bb7, $bb8;

  $bb5:
    assume {:sourceloc "./res_send.c", 314, 6} true;
    assume !($i10 == 1);
    goto $bb6;

  $bb6:
    assume {:sourceloc "./res_send.c", 321, 2} true;
    $i15 := $load.i96($M.0, $p7);
    assume {:sourceloc "./res_send.c", 322, 6} true;
    $p16 := $bitcast.ref.ref(buf2);
    assume {:sourceloc "./res_send.c", 322, 6} true;
    $i17 := $load.i96($M.0, $p16);
    assume {:sourceloc "./res_send.c", 322, 6} true;
    $i18 := $xor.i96($i17, $i15);
    assume {:sourceloc "./res_send.c", 322, 6} true;
    $i19 := $and.i96($i18, 281470681743360);
    assume {:sourceloc "./res_send.c", 322, 6} true;
    $i20 := $eq.i96($i19, 0);
    assume {:sourceloc "./res_send.c", 322, 6} true;
    $i6 := 0;
    assume {:branchcond $i20} true;
    goto $bb9, $bb10;

  $bb7:
    assume {:sourceloc "./res_send.c", 314, 6} true;
    assume $i14 == 1;
    goto $bb2;

  $bb8:
    assume {:sourceloc "./res_send.c", 314, 6} true;
    assume !($i14 == 1);
    goto $bb6;

  $bb9:
    assume $i20 == 1;
    assume {:sourceloc "./res_send.c", 321, 2} true;
    $i21 := $lshr.i96($i15, 32);
    assume {:sourceloc "./res_send.c", 325, 12} true;
    $i22 := $trunc.i96.i16($i21);
    call {:si_unique_call 46} {:cexpr "__x"} boogie_si_record_i16($i22);
    call {:si_unique_call 47} $i23 := devirtbounce(0bv64, $i22);
    call {:si_unique_call 48} {:cexpr "__v"} boogie_si_record_i16($i23);
    assume {:sourceloc "./res_send.c", 325, 12} true;
    $i24 := $zext.i16.i32($i23);
    call {:si_unique_call 49} {:cexpr "qdcount"} boogie_si_record_i32($i24);
    call {:si_unique_call 50} {:cexpr "cp"} boogie_si_record_ref($p1);
    assume {:sourceloc "./res_send.c", 329, 3} true;
    $p25 := $p0;
    assume {:sourceloc "./res_send.c", 328, 2} true;
    $p26, $i27 := $p1, $i24;
    goto $bb11;

  $bb10:
    assume {:sourceloc "./res_send.c", 322, 6} true;
    assume !($i20 == 1);
    goto $bb2;

  $bb11:
    assume {:sourceloc "./res_send.c", 328, 2} true;
    $i28 := $add.i32($i27, $sub.i32(0, 1));
    call {:si_unique_call 51} {:cexpr "qdcount"} boogie_si_record_i32($i28);
    assume {:sourceloc "./res_send.c", 328, 2} true;
    $i29 := $sgt.i32($i27, 0);
    assume {:sourceloc "./res_send.c", 328, 2} true;
    $i6 := 1;
    assume {:branchcond $i29} true;
    goto $bb12, $bb13;

  $bb12:
    assume $i29 == 1;
    assume {:sourceloc "./res_send.c", 329, 3} true;
    call {:si_unique_call 52} llvm.lifetime.start(1026, $p25);
    assume true;
    assume {:sourceloc "./res_send.c", 332, 7} true;
    call {:si_unique_call 53} $i30 := __dn_expand(buf1, eom1, $p26, $p25, 1026);
    call {:si_unique_call 54} {:cexpr "n"} boogie_si_record_i32($i30);
    assume {:sourceloc "./res_send.c", 333, 7} true;
    $i31 := $slt.i32($i30, 0);
    assume {:sourceloc "./res_send.c", 333, 7} true;
    assume {:branchcond $i31} true;
    goto $bb14, $bb16;

  $bb13:
    assume {:sourceloc "./res_send.c", 328, 2} true;
    assume !($i29 == 1);
    goto $bb2;

  $bb14:
    assume {:sourceloc "./res_send.c", 333, 7} true;
    assume $i31 == 1;
    goto $bb15;

  $bb15:
    assume {:sourceloc "./res_send.c", 342, 2} true;
    call {:si_unique_call 55} llvm.lifetime.end(1026, $p25);
    $i6 := $sub.i32(0, 1);
    goto $bb2;

  $bb16:
    assume !($i31 == 1);
    assume {:sourceloc "./res_send.c", 335, 3} true;
    $i32 := $sext.i32.i64($i30);
    call {:si_unique_call 56} {:cexpr "cp"} boogie_si_record_ref($p33);
    assume {:sourceloc "./res_send.c", 336, 7} true;
    $i34 := $add.i64($i32, 4);
    assume {:sourceloc "./res_send.c", 336, 7} true;
    $p35 := $add.ref($p26, $mul.ref($int2bv.64($i34), 1bv64));
    assume {:sourceloc "./res_send.c", 336, 7} true;
    $i36 := $ugt.ref($p35, eom1);
    assume {:sourceloc "./res_send.c", 336, 7} true;
    assume {:branchcond $i36} true;
    goto $bb17, $bb18;

  $bb17:
    assume {:sourceloc "./res_send.c", 336, 7} true;
    assume $i36 == 1;
    goto $bb15;

  $bb18:
    assume !($i36 == 1);
    assume {:sourceloc "./res_send.c", 335, 3} true;
    $p33 := $add.ref($p26, $mul.ref($int2bv.64($i32), 1bv64));
    assume {:sourceloc "./res_send.c", 338, 3} true;
    $p37 := $bitcast.ref.ref($p33);
    call {:si_unique_call 57} {:cexpr "t_cp"} boogie_si_record_ref($p37);
    assume {:sourceloc "./res_send.c", 338, 3} true;
    $i38 := $load.i16($M.0, $p37);
    call {:si_unique_call 58} {:cexpr "__x"} boogie_si_record_i16($i38);
    call {:si_unique_call 59} $i39 := devirtbounce(0bv64, $i38);
    call {:si_unique_call 60} {:cexpr "__v"} boogie_si_record_i16($i39);
    assume {:sourceloc "./res_send.c", 338, 3} true;
    $i40 := $zext.i16.i32($i39);
    call {:si_unique_call 61} {:cexpr "ttype"} boogie_si_record_i32($i40);
    assume {:sourceloc "./res_send.c", 338, 3} true;
    $i41 := $add.i64($i32, 2);
    assume {:sourceloc "./res_send.c", 338, 3} true;
    $p42 := $add.ref($p26, $mul.ref($int2bv.64($i41), 1bv64));
    call {:si_unique_call 62} {:cexpr "cp"} boogie_si_record_ref($p42);
    assume {:sourceloc "./res_send.c", 339, 3} true;
    $p43 := $bitcast.ref.ref($p42);
    call {:si_unique_call 63} {:cexpr "t_cp"} boogie_si_record_ref($p43);
    assume {:sourceloc "./res_send.c", 339, 3} true;
    $i44 := $load.i16($M.0, $p43);
    call {:si_unique_call 64} {:cexpr "__x"} boogie_si_record_i16($i44);
    call {:si_unique_call 65} $i45 := devirtbounce(0bv64, $i44);
    call {:si_unique_call 66} {:cexpr "__v"} boogie_si_record_i16($i45);
    assume {:sourceloc "./res_send.c", 339, 3} true;
    $i46 := $zext.i16.i32($i45);
    call {:si_unique_call 67} {:cexpr "tclass"} boogie_si_record_i32($i46);
    call {:si_unique_call 68} {:cexpr "cp"} boogie_si_record_ref($p35);
    assume {:sourceloc "./res_send.c", 340, 8} true;
    call {:si_unique_call 69} $i47 := __res_nameinquery($p25, $i40, $i46, buf2, eom2);
    assume {:sourceloc "./res_send.c", 340, 8} true;
    $i48 := $eq.i32($i47, 0);
    assume {:sourceloc "./res_send.c", 342, 2} true;
    call {:si_unique_call 70} llvm.lifetime.end(1026, $p25);
    $i6, $p26, $i27 := 0, $p35, $i28;
    assume {:branchcond $i48} true;
    goto $bb19, $bb20;

  $bb19:
    assume $i48 == 1;
    goto $bb2;

  $bb20:
    assume !($i48 == 1);
    goto $bb11;
}



const __res_iclose: ref;

axiom __res_iclose == $sub.ref(0bv64, 200bv64);

procedure __res_iclose($p0: ref, $i1: i1);



const __builtinx_expect: ref;

axiom __builtinx_expect == $sub.ref(0bv64, 208bv64);

procedure __builtinx_expect.i32.i32(p.0: i32, p.1: i32) returns ($r: i32);



const __poll: ref;

axiom __poll == $sub.ref(0bv64, 216bv64);

procedure __poll($p0: ref, $i1: i64, $i2: i32) returns ($r: i32);



const __sendmmsg: ref;

axiom __sendmmsg == $sub.ref(0bv64, 224bv64);

procedure __sendmmsg($i0: i32, $p1: ref, $i2: i32, $i3: i32) returns ($r: i32);



const send: ref;

axiom send == $sub.ref(0bv64, 232bv64);

procedure send($i0: i32, $p1: ref, $i2: i64, $i3: i32) returns ($r: i64);



const ioctl: ref;

axiom ioctl == $sub.ref(0bv64, 240bv64);

procedure ioctl.i32.i64.ref($i0: i32, $i1: i64, p.2: ref) returns ($r: i32);



const recvfrom: ref;

axiom recvfrom == $sub.ref(0bv64, 248bv64);

procedure recvfrom($i0: i32, $p1: ref, $i2: i64, $i3: i32, $p4: ref, $p5: ref) returns ($r: i64);



const abort: ref;

axiom abort == $sub.ref(0bv64, 256bv64);

procedure abort();



const gettimeofday: ref;

axiom gettimeofday == $sub.ref(0bv64, 264bv64);

procedure gettimeofday($p0: ref, $p1: ref) returns ($r: i32);



const socket: ref;

axiom socket == $sub.ref(0bv64, 272bv64);

procedure socket($i0: i32, $i1: i32, $i2: i32) returns ($r: i32);



const connect: ref;

axiom connect == $sub.ref(0bv64, 280bv64);

procedure connect($i0: i32, $p1: ref, $i2: i32) returns ($r: i32);



const __fcntl: ref;

axiom __fcntl == $sub.ref(0bv64, 288bv64);

procedure __fcntl.i32.i32.i32($i0: i32, $i1: i32, p.2: i32) returns ($r: i32);



procedure __fcntl.i32.i32($i0: i32, $i1: i32) returns ($r: i32);



const send_dg: ref;

axiom send_dg == $sub.ref(0bv64, 296bv64);

procedure {:entrypoint} send_dg(statp: ref, buf: ref, buflen: i32, buf2: ref, buflen2: i32, ansp: ref, anssizp: ref, terrno: ref, ns: i32, v_circuit: ref, gotsomewhere: ref, anscp: ref, ansp2: ref, anssizp2: ref, resplen2: ref, ansp2_malloced: ref) returns ($r: i32);
  modifies $CurrAddr, $Alloc, $exn, $M.0, $M.2, $M.7, $M.1, $M.8, $M.9, $M.10, $M.11, $M.5, $M.6, $M.3, $M.4;



implementation {:entrypoint} send_dg(statp: ref, buf: ref, buflen: i32, buf2: ref, buflen2: i32, ansp: ref, anssizp: ref, terrno: ref, ns: i32, v_circuit: ref, gotsomewhere: ref, anscp: ref, ansp2: ref, anssizp2: ref, resplen2: ref, ansp2_malloced: ref) returns ($r: i32)
{
  var $p0: ref;
  var $p1: ref;
  var $p2: ref;
  var $p3: ref;
  var $p4: ref;
  var $p5: ref;
  var $p6: ref;
  var $p7: ref;
  var $p8: ref;
  var $i9: i32;
  var $p10: ref;
  var $i11: i32;
  var $i12: i32;
  var $i13: i1;
  var $p15: ref;
  var $i16: i32;
  var $i17: i32;
  var $i14: i32;
  var $p18: ref;
  var $i19: i64;
  var $i20: i64;
  var $i22: i32;
  var $i23: i32;
  var $i24: i1;
  var $i26: i64;
  var $i27: i1;
  var $i28: i64;
  var $i29: i64;
  var $i30: i8;
  var $i21: i8;
  var $i31: i1;
  var $i32: i64;
  var $i33: i64;
  var $i34: i1;
  var $i35: i32;
  var $i36: i64;
  var $p37: ref;
  var $p38: ref;
  var $p39: ref;
  var $i40: i1;
  var $p41: ref;
  var $p42: ref;
  var $p43: ref;
  var $p44: ref;
  var $i45: i1;
  var $p46: ref;
  var $i47: i1;
  var $i48: i1;
  var $i49: i32;
  var $i50: i1;
  var $p51: ref;
  var $p52: ref;
  var $i53: i64;
  var $p54: ref;
  var $i55: i64;
  var $p56: ref;
  var $p57: ref;
  var $i58: i1;
  var $p59: ref;
  var $p60: ref;
  var $p61: ref;
  var $i62: i1;
  var $p63: ref;
  var $p64: ref;
  var $p65: ref;
  var $p66: ref;
  var $p67: ref;
  var $p68: ref;
  var $p69: ref;
  var $i70: i64;
  var $p71: ref;
  var $p72: ref;
  var $p73: ref;
  var $p74: ref;
  var $p75: ref;
  var $p76: ref;
  var $p77: ref;
  var $p78: ref;
  var $i79: i64;
  var $p80: ref;
  var $p81: ref;
  var $p82: ref;
  var $p83: ref;
  var $p84: ref;
  var $p85: ref;
  var $i86: i64;
  var $i87: i64;
  var $p88: ref;
  var $p89: ref;
  var $p90: ref;
  var $p91: ref;
  var $p92: ref;
  var $i93: i1;
  var $i94: i1;
  var $i95: i8;
  var $i96: i8;
  var $i97: i32;
  var $i98: i8;
  var $i99: i1;
  var $i100: i8;
  var $i101: i1;
  var $i102: i32;
  var $i103: i32;
  var $i104: i32;
  var $i105: i32;
  var $i106: i1;
  var $i108: i32;
  var $i109: i64;
  var $i110: i64;
  var $i111: i64;
  var $i112: i64;
  var $i113: i32;
  var $i114: i1;
  var $i107: i32;
  var $i115: i64;
  var $i116: i64;
  var $i117: i64;
  var $i118: i64;
  var $i119: i64;
  var $i120: i32;
  var $i121: i1;
  var $i123: i32;
  var $i122: i32;
  var $i124: i1;
  var $i125: i32;
  var $i126: i32;
  var $i127: i1;
  var $i130: i32;
  var $i128: i32;
  var $i129: i32;
  var $i131: i1;
  var $i132: i32;
  var $i133: i1;
  var $i134: i1;
  var $i135: i1;
  var $i136: i1;
  var $i137: i1;
  var $i138: i8;
  var $i139: i1;
  var $i140: i64;
  var $i141: i64;
  var $i142: i64;
  var $i143: i64;
  var $i144: i32;
  var $i145: i1;
  var $i146: i32;
  var $i147: i1;
  var $i148: i32;
  var $i149: i1;
  var $i150: i16;
  var $i151: i32;
  var $i152: i32;
  var $i153: i1;
  var $i154: i32;
  var $i155: i1;
  var $i156: i1;
  var $i157: i1;
  var $i158: i1;
  var $p159: ref;
  var $p160: ref;
  var $i161: i32;
  var $i162: i32;
  var $i163: i1;
  var $i164: i32;
  var $i165: i32;
  var $i166: i1;
  var $i167: i32;
  var $i168: i1;
  var $i169: i32;
  var $i170: i1;
  var $i171: i1;
  var $i172: i32;
  var $i173: i1;
  var $i174: i32;
  var $i175: i1;
  var $i177: i1;
  var $i178: i32;
  var $i179: i1;
  var $i180: i1;
  var $i181: i1;
  var $i176: i1;
  var $i182: i32;
  var $i183: i1;
  var $i184: i32;
  var $i185: i32;
  var $i186: i1;
  var $i187: i32;
  var $i188: i1;
  var $i189: i1;
  var $i190: i1;
  var $i191: i32;
  var $i192: i64;
  var $i194: i64;
  var $i193: i64;
  var $i195: i32;
  var $i196: i64;
  var $i197: i1;
  var $i198: i32;
  var $i199: i1;
  var $i200: i1;
  var $i201: i1;
  var $i202: i1;
  var $i203: i1;
  var $i204: i1;
  var $i205: i1;
  var $i206: i16;
  var $i207: i32;
  var $i208: i32;
  var $i209: i1;
  var $i210: i32;
  var $i211: i1;
  var $i212: i1;
  var $i216: i32;
  var $i217: i1;
  var $i218: i32;
  var $i219: i32;
  var $p220: ref;
  var $i221: i32;
  var $i222: i64;
  var $p223: ref;
  var $p225: ref;
  var $p224: ref;
  var $p213: ref;
  var $p214: ref;
  var $p215: ref;
  var $i226: i32;
  var $i227: i1;
  var $i228: i1;
  var $i229: i32;
  var $i230: i32;
  var $i231: i1;
  var $i232: i32;
  var $i233: i32;
  var $i234: i1;
  var $p235: ref;
  var $i236: i1;
  var $i237: i1;
  var $p238: ref;
  var $i239: i32;
  var $p240: ref;
  var $i241: i32;
  var $i242: i64;
  var $i243: i64;
  var $i244: i32;
  var $i245: i1;
  var $i246: i32;
  var $i247: i32;
  var $i248: i1;
  var $i249: i32;
  var $i250: i1;
  var $i251: i1;
  var $i252: i1;
  var $i253: i32;
  var $i254: i1;
  var $i255: i32;
  var $i256: i32;
  var $i257: i1;
  var $i258: i1;
  var $i259: i96;
  var $p260: ref;
  var $i261: i96;
  var $i262: i96;
  var $i263: i96;
  var $i264: i1;
  var $i265: i1;
  var $i266: i96;
  var $p267: ref;
  var $i268: i96;
  var $i269: i96;
  var $i270: i96;
  var $i271: i1;
  var $i272: i64;
  var $i273: i64;
  var $i274: i1;
  var $i275: i32;
  var $i276: i1;
  var $p277: ref;
  var $i278: i96;
  var $i279: i96;
  var $i280: i1;
  var $i281: i64;
  var $i282: i64;
  var $i283: i1;
  var $p284: ref;
  var $i285: i32;
  var $i286: i32;
  var $i287: i64;
  var $i288: i64;
  var $i289: i1;
  var $p290: ref;
  var $i291: i32;
  var $i292: i64;
  var $p293: ref;
  var $i294: i32;
  var $i295: i1;
  var $i296: i1;
  var $p297: ref;
  var $i298: i32;
  var $i299: i64;
  var $p300: ref;
  var $i301: i32;
  var $i302: i1;
  var $i303: i96;
  var $i304: i96;
  var $i305: i32;
  var $i306: i32;
  var $i307: i1;
  var $i308: i32;
  var $i309: i1;
  var $i310: i1;
  var $i311: i1;
  var $i312: i1;
  var $i313: i1;
  var $i314: i32;
  var $i315: i96;
  var $i316: i96;
  var $i317: i96;
  var $i318: i96;
  var $i319: i1;
  var $i320: i32;
  var $i321: i32;
  var $i322: i64;
  var $i323: i1;
  var $i324: i96;
  var $i325: i96;
  var $i326: i1;
  var $i327: i64;
  var $i328: i64;
  var $i329: i1;
  var $i330: i96;
  var $i331: i1;
  var $i332: i1;
  var $i333: i1;
  var $i334: i96;
  var $i335: i96;
  var $i336: i96;
  var $i337: i96;
  var $i338: i1;
  var $i339: i32;
  var $i340: i32;
  var $i341: i32;
  var $i342: i1;
  var $i343: i32;
  var $i344: i1;
  var $i345: i32;
  var $i346: i32;
  var $i347: i32;
  var $i348: i1;
  var $i25: i32;

  $bb0:
    call {:si_unique_call 71} $initialize();
    call {:si_unique_call 72} $p0 := $alloc($mul.ref(16bv64, $int2bv.64(1)));
    call {:si_unique_call 73} $p1 := $alloc($mul.ref(16bv64, $int2bv.64(1)));
    call {:si_unique_call 74} $p2 := $alloc($mul.ref(16bv64, $int2bv.64(1)));
    call {:si_unique_call 75} $p3 := $alloc($mul.ref(8bv64, $int2bv.64(1)));
    call {:si_unique_call 76} $p4 := $alloc($mul.ref(28bv64, $int2bv.64(1)));
    call {:si_unique_call 77} $p5 := $alloc($mul.ref(4bv64, $int2bv.64(1)));
    call {:si_unique_call 78} $p6 := $alloc($mul.ref(32bv64, $int2bv.64(1)));
    call {:si_unique_call 79} $p7 := $alloc($mul.ref(128bv64, $int2bv.64(1)));
    call {:si_unique_call 80} $p8 := $alloc($mul.ref(4bv64, $int2bv.64(1)));
    call {:si_unique_call 81} {:cexpr "statp"} boogie_si_record_ref(statp);
    call {:si_unique_call 82} {:cexpr "buf"} boogie_si_record_ref(buf);
    call {:si_unique_call 83} {:cexpr "buflen"} boogie_si_record_i32(buflen);
    call {:si_unique_call 84} {:cexpr "buf2"} boogie_si_record_ref(buf2);
    call {:si_unique_call 85} {:cexpr "buflen2"} boogie_si_record_i32(buflen2);
    call {:si_unique_call 86} {:cexpr "ansp"} boogie_si_record_ref(ansp);
    call {:si_unique_call 87} {:cexpr "anssizp"} boogie_si_record_ref(anssizp);
    call {:si_unique_call 88} {:cexpr "terrno"} boogie_si_record_ref(terrno);
    call {:si_unique_call 89} {:cexpr "ns"} boogie_si_record_i32(ns);
    call {:si_unique_call 90} {:cexpr "v_circuit"} boogie_si_record_ref(v_circuit);
    call {:si_unique_call 91} {:cexpr "gotsomewhere"} boogie_si_record_ref(gotsomewhere);
    call {:si_unique_call 92} {:cexpr "anscp"} boogie_si_record_ref(anscp);
    call {:si_unique_call 93} {:cexpr "ansp2"} boogie_si_record_ref(ansp2);
    call {:si_unique_call 94} {:cexpr "anssizp2"} boogie_si_record_ref(anssizp2);
    call {:si_unique_call 95} {:cexpr "resplen2"} boogie_si_record_ref(resplen2);
    call {:si_unique_call 96} {:cexpr "ansp2_malloced"} boogie_si_record_ref(ansp2_malloced);
    assume {:sourceloc "./res_send.c", 1036, 2} true;
    call {:si_unique_call 97} __VERIFIER_assert(0);
    assume {:sourceloc "./res_send.c", 1040, 2} true;
    $i9 := $load.i32($M.1, anssizp);
    call {:si_unique_call 98} {:cexpr "orig_anssizp"} boogie_si_record_i32($i9);
    assume true;
    call {:si_unique_call 99} {:cexpr "resplen"} boogie_si_record_i32(0);
    assume {:sourceloc "./res_send.c", 1045, 2} true;
    $M.0 := $store.i32($M.0, $p5, 0);
    assume {:sourceloc "./res_send.c", 1051, 2} true;
    $p10 := statp;
    assume {:sourceloc "./res_send.c", 1051, 2} true;
    $i11 := $load.i32($M.0, $p10);
    assume {:sourceloc "./res_send.c", 1051, 2} true;
    $i12 := $shl.i32($i11, ns);
    call {:si_unique_call 100} {:cexpr "seconds"} boogie_si_record_i32($i12);
    assume {:sourceloc "./res_send.c", 1052, 6} true;
    $i13 := $sgt.i32(ns, 0);
    assume {:sourceloc "./res_send.c", 1052, 6} true;
    $i14 := $i12;
    assume {:branchcond $i13} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i13 == 1;
    assume {:sourceloc "./res_send.c", 1053, 3} true;
    $p15 := $add.ref(statp, 16bv64);
    assume {:sourceloc "./res_send.c", 1053, 3} true;
    $i16 := $load.i32($M.0, $p15);
    assume {:sourceloc "./res_send.c", 1053, 3} true;
    $i17 := $sdiv.i32($i12, $i16);
    call {:si_unique_call 101} {:cexpr "seconds"} boogie_si_record_i32($i17);
    assume {:sourceloc "./res_send.c", 1053, 3} true;
    $i14 := $i17;
    goto $bb3;

  $bb2:
    assume {:sourceloc "./res_send.c", 1052, 6} true;
    assume !($i13 == 1);
    goto $bb3;

  $bb3:
    call {:si_unique_call 102} {:cexpr "seconds"} boogie_si_record_i32(1);
    assume {:sourceloc "./res_send.c", 1056, 2} true;
    $p18 := $add.ref(statp, 8bv64);
    assume {:sourceloc "./res_send.c", 1056, 2} true;
    $i19 := $load.i64($M.0, $p18);
    assume {:sourceloc "./res_send.c", 1056, 2} true;
    $i20 := $lshr.i64($i19, 22);
    call {:si_unique_call 103} {:cexpr "single_request"} boogie_si_record_i8($i21);
    assume {:sourceloc "./res_send.c", 1059, 2} true;
    $i22 := $load.i32($M.2, gotsomewhere);
    call {:si_unique_call 104} {:cexpr "save_gotsomewhere"} boogie_si_record_i32($i22);
    assume {:sourceloc "./res_send.c", 1063, 11} true;
    call {:si_unique_call 105} $i23 := reopen(statp, terrno, ns);
    assume {:sourceloc "./res_send.c", 1064, 6} true;
    $i24 := $slt.i32($i23, 1);
    assume {:sourceloc "./res_send.c", 1064, 6} true;
    $i25 := $i23;
    assume {:branchcond $i24} true;
    goto $bb4, $bb6;

  $bb4:
    assume {:sourceloc "./res_send.c", 1064, 6} true;
    assume $i24 == 1;
    goto $bb5;

  $bb5:
    assume {:sourceloc "./res_send.c", 1469, 1} true;
    $r := $i25;
    $exn := false;
    return;

  $bb6:
    assume !($i24 == 1);
    assume {:sourceloc "./res_send.c", 1061, 2} true;
    $i26 := $and.i64($i20, 1);
    assume {:sourceloc "./res_send.c", 1061, 2} true;
    $i27 := $ne.i64($i26, 0);
    assume {:sourceloc "./res_send.c", 1057, 2} true;
    $i28 := $lshr.i64($i19, 21);
    assume {:sourceloc "./res_send.c", 1057, 2} true;
    $i29 := $or.i64($i28, $i20);
    assume {:sourceloc "./res_send.c", 1057, 2} true;
    $i30 := $trunc.i64.i8($i29);
    assume {:sourceloc "./res_send.c", 1057, 2} true;
    $i21 := $and.i8($i30, 1);
    assume {:sourceloc "./res_send.c", 1054, 6} true;
    $i31 := $slt.i32($i14, 1);
    assume {:sourceloc "./res_send.c", 1068, 2} true;
    $i32 := $sext.i32.i64($i14);
    assume {:sourceloc "./res_send.c", 1068, 2} true;
    havoc $i33;
    assume ($i31 == 1 ==> $i33 == 1) && ($i31 != 1 ==> $i33 == $i32);
    assume {:sourceloc "./res_send.c", 1073, 2} true;
    $i34 := $eq.ref(buf2, $0.ref);
    assume {:sourceloc "./res_send.c", 1073, 2} true;
    $i35 := $zext.i1.i32($i34);
    assume {:sourceloc "./res_send.c", 1074, 2} true;
    $i36 := $sext.i32.i64(ns);
    assume {:sourceloc "./res_send.c", 1074, 2} true;
    $p37 := $add.ref($add.ref($add.ref(statp, 512bv64), 8bv64), $mul.ref($int2bv.64($i36), 4bv64));
    assume {:sourceloc "./res_send.c", 1074, 2} true;
    $p38 := $p3;
    assume {:sourceloc "./res_send.c", 1075, 2} true;
    $p39 := $add.ref($p3, 4bv64);
    assume {:sourceloc "./res_send.c", 1076, 6} true;
    $i40 := $eq.ref(resplen2, $0.ref);
    assume {:sourceloc "./res_send.c", 1093, 2} true;
    $p41 := $p1;
    assume {:sourceloc "./res_send.c", 1093, 2} true;
    $p42 := $add.ref($p1, 8bv64);
    assume {:sourceloc "./res_send.c", 1097, 8} true;
    $p43 := $p3;
    assume {:sourceloc "./res_send.c", 1143, 6} true;
    $p44 := $add.ref($p3, 6bv64);
    assume {:sourceloc "./res_send.c", 1238, 4} true;
    $i45 := $ne.ref(anscp, $0.ref);
    assume {:sourceloc "./res_send.c", 1238, 4} true;
    havoc $p46;
    assume ($i45 == 1 ==> $p46 == anscp) && ($i45 != 1 ==> $p46 == ansp);
    assume {:sourceloc "./res_send.c", 1239, 4} true;
    $i47 := $eq.ref(ansp2, $0.ref);
    assume {:sourceloc "./res_send.c", 1239, 4} true;
    $i48 := $or.i1($i45, $i47);
    assume {:sourceloc "./res_send.c", 1239, 4} true;
    $i49 := $zext.i1.i32($i48);
    assume {:sourceloc "./res_send.c", 1269, 7} true;
    $i50 := $ne.ref(anscp, $0.ref);
    assume {:sourceloc "./res_send.c", 1289, 19} true;
    $p51 := $bitcast.ref.ref($p4);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $p52 := $bitcast.ref.ref(buf2);
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    $i53 := $sext.i32.i64(buflen2);
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    $p54 := $add.ref(buf2, $mul.ref($int2bv.64($i53), 1bv64));
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $i55 := $sext.i32.i64(buflen);
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $p56 := $add.ref(buf, $mul.ref($int2bv.64($i55), 1bv64));
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    $p57 := $bitcast.ref.ref(buf);
    assume {:sourceloc "./res_send.c", 1393, 8} true;
    $i58 := $ne.ref(buf2, $0.ref);
    assume {:sourceloc "./res_send.c", 1402, 12} true;
    $p59 := $bitcast.ref.ref(buf);
    assume {:sourceloc "./res_send.c", 1412, 8} true;
    $p60 := $add.ref(statp, 384bv64);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $p61 := $bitcast.ref.ref(buf);
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    $i62 := $ne.ref(buf2, $0.ref);
    assume {:sourceloc "./res_send.c", 1153, 7} true;
    $p63 := $bitcast.ref.ref($p7);
    assume {:sourceloc "./res_send.c", 1154, 7} true;
    $p64 := $p7;
    assume {:sourceloc "./res_send.c", 1155, 7} true;
    $p65 := $add.ref($p7, 8bv64);
    assume {:sourceloc "./res_send.c", 1156, 7} true;
    $p66 := $p6;
    assume {:sourceloc "./res_send.c", 1156, 7} true;
    $p67 := $add.ref($p7, 16bv64);
    assume {:sourceloc "./res_send.c", 1157, 7} true;
    $p68 := $add.ref($p7, 24bv64);
    assume {:sourceloc "./res_send.c", 1158, 7} true;
    $p69 := $p6;
    assume {:sourceloc "./res_send.c", 1159, 7} true;
    $i70 := $sext.i32.i64(buflen);
    assume {:sourceloc "./res_send.c", 1159, 7} true;
    $p71 := $add.ref($p6, 8bv64);
    assume {:sourceloc "./res_send.c", 1160, 7} true;
    $p72 := $add.ref($p7, 32bv64);
    assume {:sourceloc "./res_send.c", 1163, 7} true;
    $p73 := $add.ref($p7, 64bv64);
    assume {:sourceloc "./res_send.c", 1164, 7} true;
    $p74 := $add.ref($add.ref($p7, 64bv64), 8bv64);
    assume {:sourceloc "./res_send.c", 1165, 7} true;
    $p75 := $add.ref($p6, 16bv64);
    assume {:sourceloc "./res_send.c", 1165, 7} true;
    $p76 := $add.ref($add.ref($p7, 64bv64), 16bv64);
    assume {:sourceloc "./res_send.c", 1166, 7} true;
    $p77 := $add.ref($add.ref($p7, 64bv64), 24bv64);
    $p78 := $add.ref($p6, 16bv64);
    assume {:sourceloc "./res_send.c", 1168, 7} true;
    $i79 := $sext.i32.i64(buflen2);
    assume {:sourceloc "./res_send.c", 1168, 7} true;
    $p80 := $add.ref($add.ref($p6, 16bv64), 8bv64);
    assume {:sourceloc "./res_send.c", 1169, 7} true;
    $p81 := $add.ref($add.ref($p7, 64bv64), 32bv64);
    assume {:sourceloc "./res_send.c", 1172, 17} true;
    $p82 := $p7;
    assume {:sourceloc "./res_send.c", 1182, 16} true;
    $p83 := $add.ref($p7, 56bv64);
    assume {:sourceloc "./res_send.c", 1175, 8} true;
    $p84 := $add.ref($p7, 56bv64);
    assume {:sourceloc "./res_send.c", 1175, 8} true;
    $p85 := $add.ref($add.ref($p7, 64bv64), 56bv64);
    assume {:sourceloc "./res_send.c", 1212, 14} true;
    $i86 := $sext.i32.i64(buflen2);
    assume {:sourceloc "./res_send.c", 1214, 14} true;
    $i87 := $sext.i32.i64(buflen);
    assume {:sourceloc "./res_send.c", 1099, 7} true;
    $p88 := $p3;
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $p89 := $p2;
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $p90 := $add.ref($p2, 8bv64);
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $p91 := $p0;
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $p92 := $add.ref($p0, 8bv64);
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    $i93 := $ne.ref(buf2, $0.ref);
    assume {:sourceloc "./res_send.c", 1064, 6} true;
    $i94, $i95 := $i27, $i21;
    goto $bb7;

  $bb7:
    assume {:sourceloc "./res_send.c", 1041, 18} true;
    $i96 := $i95;
    goto $bb8;

  $bb8:
    call {:si_unique_call 106} {:cexpr "now"} boogie_si_record_ref($p0);
    assume {:sourceloc "./res_send.c", 1067, 2} true;
    call {:si_unique_call 107} evNowTime($p0);
    call {:si_unique_call 108} {:cexpr "timeout"} boogie_si_record_ref($p1);
    assume {:sourceloc "./res_send.c", 1068, 2} true;
    call {:si_unique_call 109} evConsTime($p1, $i33);
    call {:si_unique_call 110} {:cexpr "now"} boogie_si_record_ref($p0);
    call {:si_unique_call 111} {:cexpr "timeout"} boogie_si_record_ref($p1);
    call {:si_unique_call 112} {:cexpr "finish"} boogie_si_record_ref($p2);
    assume {:sourceloc "./res_send.c", 1069, 2} true;
    call {:si_unique_call 113} evAddTime($p2, $p0, $p1);
    call {:si_unique_call 114} {:cexpr "need_recompute"} boogie_si_record_i32(0);
    call {:si_unique_call 115} {:cexpr "nwritten"} boogie_si_record_i32(0);
    call {:si_unique_call 116} {:cexpr "recvresp1"} boogie_si_record_i32(0);
    call {:si_unique_call 117} {:cexpr "recvresp2"} boogie_si_record_i32($i35);
    assume {:sourceloc "./res_send.c", 1074, 2} true;
    $i97 := $load.i32($M.0, $p37);
    assume {:sourceloc "./res_send.c", 1074, 2} true;
    $M.0 := $store.i32($M.0, $p38, $i97);
    assume {:sourceloc "./res_send.c", 1075, 2} true;
    $M.0 := $store.i16($M.0, $p39, 4);
    assume {:sourceloc "./res_send.c", 1076, 6} true;
    assume {:branchcond $i40} true;
    goto $bb9, $bb11;

  $bb9:
    assume {:sourceloc "./res_send.c", 1076, 6} true;
    assume $i40 == 1;
    goto $bb10;

  $bb10:
    assume {:sourceloc "./res_send.c", 1444, 8} true;
    $i98 := $and.i8($i96, 1);
    assume {:sourceloc "./res_send.c", 1444, 8} true;
    $i99 := $eq.i8($i98, 0);
    $i100 := $and.i8($i96, 1);
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    $i101 := $eq.i8($i100, 0);
    assume {:sourceloc "./res_send.c", 1079, 6} true;
    $i102, $i103, $i104, $i105 := 0, 0, 0, $i35;
    goto $bb12;

  $bb11:
    assume !($i40 == 1);
    assume {:sourceloc "./res_send.c", 1077, 4} true;
    $M.0 := $store.i32($M.0, resplen2, 0);
    assume {:sourceloc "./res_send.c", 1077, 4} true;
    goto $bb10;

  $bb12:
    assume {:sourceloc "./res_send.c", 1079, 6} true;
    $i106 := $eq.i32($i102, 0);
    assume {:sourceloc "./res_send.c", 1079, 6} true;
    $i107, $i108 := $i103, $i103;
    assume {:branchcond $i106} true;
    goto $bb13, $bb15;

  $bb13:
    assume {:sourceloc "./res_send.c", 1079, 6} true;
    assume $i106 == 1;
    goto $bb14;

  $bb14:
    assume {:sourceloc "./res_send.c", 1093, 2} true;
    $i115 := $load.i64($M.5, $p41);
    assume {:sourceloc "./res_send.c", 1093, 2} true;
    $i116 := $mul.i64($i115, 1000);
    assume {:sourceloc "./res_send.c", 1093, 2} true;
    $i117 := $load.i64($M.6, $p42);
    assume {:sourceloc "./res_send.c", 1093, 2} true;
    $i118 := $sdiv.i64($i117, 1000000);
    assume {:sourceloc "./res_send.c", 1093, 2} true;
    $i119 := $add.i64($i118, $i116);
    assume {:sourceloc "./res_send.c", 1093, 2} true;
    $i120 := $trunc.i64.i32($i119);
    call {:si_unique_call 118} {:cexpr "ptimeout"} boogie_si_record_i32($i120);
    call {:si_unique_call 119} {:cexpr "n"} boogie_si_record_i32(0);
    assume {:sourceloc "./res_send.c", 1096, 6} true;
    $i121 := $eq.i32($i107, 0);
    assume {:sourceloc "./res_send.c", 1096, 6} true;
    $i122 := 0;
    assume {:branchcond $i121} true;
    goto $bb20, $bb21;

  $bb15:
    assume {:sourceloc "./res_send.c", 1079, 6} true;
    assume !($i106 == 1);
    goto $bb16;

  $bb16:
    call {:si_unique_call 120} {:cexpr "now"} boogie_si_record_ref($p0);
    assume {:sourceloc "./res_send.c", 1081, 3} true;
    call {:si_unique_call 121} evNowTime($p0);
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $i109 := $load.i64($M.3, $p89);
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $i110 := $load.i64($M.4, $p90);
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $i111 := $load.i64($M.5, $p91);
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $i112 := $load.i64($M.6, $p92);
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    call {:si_unique_call 122} $i113 := evCmpTime($i109, $i110, $i111, $i112);
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    $i114 := $slt.i32($i113, 1);
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    assume {:branchcond $i114} true;
    goto $bb17, $bb19;

  $bb17:
    assume {:sourceloc "./res_send.c", 1082, 7} true;
    assume $i114 == 1;
    goto $bb18;

  $bb18:
    assume {:sourceloc "./res_send.c", 1086, 4} true;
    call {:si_unique_call 123} __res_iclose(statp, 0);
    assume {:sourceloc "./res_send.c", 1087, 4} true;
    $i25 := 0;
    goto $bb5;

  $bb19:
    assume !($i114 == 1);
    call {:si_unique_call 124} {:cexpr "now"} boogie_si_record_ref($p0);
    call {:si_unique_call 125} {:cexpr "timeout"} boogie_si_record_ref($p1);
    call {:si_unique_call 126} {:cexpr "finish"} boogie_si_record_ref($p2);
    assume {:sourceloc "./res_send.c", 1089, 3} true;
    call {:si_unique_call 127} evSubTime($p1, $p2, $p0);
    call {:si_unique_call 128} {:cexpr "need_recompute"} boogie_si_record_i32(0);
    assume {:sourceloc "./res_send.c", 1091, 2} true;
    $i107 := $i108;
    goto $bb14;

  $bb20:
    assume $i121 == 1;
    assume {:sourceloc "./res_send.c", 1097, 8} true;
    call {:si_unique_call 129} $i123 := __poll($p43, 1, 0);
    call {:si_unique_call 130} {:cexpr "n"} boogie_si_record_i32($i123);
    assume {:sourceloc "./res_send.c", 1097, 8} true;
    $i122 := $i123;
    goto $bb22;

  $bb21:
    assume {:sourceloc "./res_send.c", 1096, 6} true;
    assume !($i121 == 1);
    goto $bb22;

  $bb22:
    assume {:sourceloc "./res_send.c", 1098, 6} true;
    $i124 := $eq.i32($i122, 0);
    assume {:sourceloc "./res_send.c", 1098, 6} true;
    $i125 := $zext.i1.i32($i124);
    assume {:sourceloc "./res_send.c", 1098, 6} true;
    call {:si_unique_call 131} $i126 := __builtinx_expect.i32.i32($i125, 0);
    assume {:sourceloc "./res_send.c", 1098, 6} true;
    $i127 := $eq.i32($i126, 0);
    assume {:sourceloc "./res_send.c", 1098, 6} true;
    $i128, $i129 := 0, $i122;
    assume {:branchcond $i127} true;
    goto $bb23, $bb25;

  $bb23:
    assume {:sourceloc "./res_send.c", 1098, 6} true;
    assume $i127 == 1;
    goto $bb24;

  $bb24:
    assume {:sourceloc "./res_send.c", 1102, 6} true;
    $i131 := $eq.i32($i129, 0);
    assume {:sourceloc "./res_send.c", 1102, 6} true;
    assume {:branchcond $i131} true;
    goto $bb26, $bb27;

  $bb25:
    assume !($i127 == 1);
    assume {:sourceloc "./res_send.c", 1099, 7} true;
    call {:si_unique_call 132} $i130 := __poll($p88, 1, $i120);
    call {:si_unique_call 133} {:cexpr "n"} boogie_si_record_i32($i130);
    call {:si_unique_call 134} {:cexpr "need_recompute"} boogie_si_record_i32(1);
    assume {:sourceloc "./res_send.c", 1101, 2} true;
    $i128, $i129 := 1, $i130;
    goto $bb24;

  $bb26:
    assume $i131 == 1;
    call {:si_unique_call 135} {:cexpr "resplen"} boogie_si_record_ref($p5);
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    $i132 := $load.i32($M.0, $p5);
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    $i133 := $sgt.i32($i132, 1);
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    assume {:branchcond $i133} true;
    goto $bb28, $bb29;

  $bb27:
    assume !($i131 == 1);
    assume {:sourceloc "./res_send.c", 1136, 6} true;
    $i147 := $slt.i32($i129, 0);
    assume {:sourceloc "./res_send.c", 1136, 6} true;
    assume {:branchcond $i147} true;
    goto $bb39, $bb40;

  $bb28:
    assume $i133 == 1;
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    $i134 := $ne.i32($i104, 0);
    $i135 := $ne.i32($i105, 0);
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    $i136 := $and.i1($i93, $i135);
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    $i137 := $or.i1($i134, $i136);
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    assume {:branchcond $i137} true;
    goto $bb31, $bb32;

  $bb29:
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    assume !($i133 == 1);
    goto $bb30;

  $bb30:
    assume {:sourceloc "./res_send.c", 1133, 3} true;
    $M.2 := $store.i32($M.2, gotsomewhere, 1);
    assume {:sourceloc "./res_send.c", 1134, 3} true;
    $i25 := 0;
    goto $bb5;

  $bb31:
    assume $i137 == 1;
    assume {:sourceloc "./res_send.c", 1113, 11} true;
    $i138 := $and.i8($i96, 1);
    assume {:sourceloc "./res_send.c", 1113, 11} true;
    $i139 := $eq.i8($i138, 0);
    assume {:sourceloc "./res_send.c", 1113, 11} true;
    assume {:branchcond $i139} true;
    goto $bb33, $bb34;

  $bb32:
    assume {:sourceloc "./res_send.c", 1104, 7} true;
    assume !($i137 == 1);
    goto $bb30;

  $bb33:
    assume $i139 == 1;
    assume {:sourceloc "./res_send.c", 1115, 4} true;
    $i140 := $load.i64($M.0, $p18);
    assume {:sourceloc "./res_send.c", 1115, 4} true;
    $i141 := $or.i64($i140, 2097152);
    assume {:sourceloc "./res_send.c", 1115, 4} true;
    $M.0 := $store.i64($M.0, $p18, $i141);
    call {:si_unique_call 136} {:cexpr "single_request"} boogie_si_record_i8(1);
    assume {:sourceloc "./res_send.c", 1117, 4} true;
    $M.2 := $store.i32($M.2, gotsomewhere, $i22);
    assume {:sourceloc "./res_send.c", 1118, 4} true;
    $i96 := 1;
    goto $bb8;

  $bb34:
    assume !($i139 == 1);
    assume {:sourceloc "./res_send.c", 1120, 16} true;
    assume {:branchcond $i94} true;
    goto $bb35, $bb36;

  $bb35:
    assume $i94 == 1;
    assume {:sourceloc "./res_send.c", 1129, 7} true;
    $M.0 := $store.i32($M.0, resplen2, 1);
    call {:si_unique_call 137} {:cexpr "resplen"} boogie_si_record_ref($p5);
    assume {:sourceloc "./res_send.c", 1130, 7} true;
    $i146 := $load.i32($M.0, $p5);
    assume {:sourceloc "./res_send.c", 1130, 7} true;
    $i25 := $i146;
    goto $bb5;

  $bb36:
    assume !($i94 == 1);
    assume {:sourceloc "./res_send.c", 1122, 4} true;
    $i142 := $load.i64($M.0, $p18);
    assume {:sourceloc "./res_send.c", 1122, 4} true;
    $i143 := $or.i64($i142, 4194304);
    assume {:sourceloc "./res_send.c", 1122, 4} true;
    $M.0 := $store.i64($M.0, $p18, $i143);
    call {:si_unique_call 138} {:cexpr "single_request_reopen"} boogie_si_record_i8(1);
    assume {:sourceloc "./res_send.c", 1124, 4} true;
    $M.2 := $store.i32($M.2, gotsomewhere, $i22);
    assume {:sourceloc "./res_send.c", 1125, 4} true;
    call {:si_unique_call 139} __res_iclose(statp, 0);
    assume {:sourceloc "./res_send.c", 1063, 11} true;
    call {:si_unique_call 140} $i144 := reopen(statp, terrno, ns);
    assume {:sourceloc "./res_send.c", 1064, 6} true;
    $i145 := $slt.i32($i144, 1);
    assume {:sourceloc "./res_send.c", 1064, 6} true;
    $i25, $i94, $i95 := $i144, 1, $i96;
    assume {:branchcond $i145} true;
    goto $bb37, $bb38;

  $bb37:
    assume {:sourceloc "./res_send.c", 1064, 6} true;
    assume $i145 == 1;
    goto $bb5;

  $bb38:
    assume {:sourceloc "./res_send.c", 1064, 6} true;
    assume !($i145 == 1);
    goto $bb7;

  $bb39:
    assume $i147 == 1;
    assume {:sourceloc "./res_send.c", 1137, 7} true;
    $i148 := $load.i32($M.0, errno);
    assume {:sourceloc "./res_send.c", 1137, 7} true;
    $i149 := $eq.i32($i148, 4);
    assume {:sourceloc "./res_send.c", 1137, 7} true;
    $i108 := $i107;
    assume {:branchcond $i149} true;
    goto $bb41, $bb42;

  $bb40:
    assume !($i147 == 1);
    assume {:sourceloc "./res_send.c", 1142, 2} true;
    $M.0 := $store.i32($M.0, errno, 0);
    call {:si_unique_call 141} {:cexpr "errno"} boogie_si_record_i32(0);
    assume {:sourceloc "./res_send.c", 1143, 6} true;
    $i150 := $load.i16($M.0, $p44);
    assume {:sourceloc "./res_send.c", 1143, 6} true;
    $i151 := $sext.i16.i32($i150);
    assume {:sourceloc "./res_send.c", 1143, 6} true;
    $i152 := $and.i32($i151, 4);
    assume {:sourceloc "./res_send.c", 1143, 6} true;
    $i153 := $eq.i32($i152, 0);
    assume {:sourceloc "./res_send.c", 1143, 6} true;
    assume {:branchcond $i153} true;
    goto $bb43, $bb44;

  $bb41:
    assume {:sourceloc "./res_send.c", 1137, 7} true;
    assume $i149 == 1;
    goto $bb16;

  $bb42:
    assume {:sourceloc "./res_send.c", 1137, 7} true;
    assume !($i149 == 1);
    goto $bb18;

  $bb43:
    assume $i153 == 1;
    assume {:sourceloc "./res_send.c", 1230, 13} true;
    $i208 := $and.i32($i151, 1);
    assume {:sourceloc "./res_send.c", 1230, 13} true;
    $i209 := $eq.i32($i208, 0);
    assume {:sourceloc "./res_send.c", 1230, 13} true;
    assume {:branchcond $i209} true;
    goto $bb83, $bb84;

  $bb44:
    assume !($i153 == 1);
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    $i154 := $M.7;
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    $i155 := $sgt.i32($i154, $sub.i32(0, 1));
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    $i156 := $and.i1($i155, $i121);
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    $i157 := $and.i1($i156, $i62);
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    $i158 := $and.i1($i157, $i101);
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    assume {:branchcond $i158} true;
    goto $bb45, $bb46;

  $bb45:
    assume $i158 == 1;
    assume true;
    assume {:sourceloc "./res_send.c", 1153, 7} true;
    call {:si_unique_call 142} llvm.lifetime.start(128, $p63);
    assume true;
    assume {:sourceloc "./res_send.c", 1154, 7} true;
    $M.0 := $store.ref($M.0, $p64, $0.ref);
    assume {:sourceloc "./res_send.c", 1155, 7} true;
    $M.0 := $store.i32($M.0, $p65, 0);
    assume {:sourceloc "./res_send.c", 1156, 7} true;
    $M.0 := $store.ref($M.0, $p67, $p66);
    assume {:sourceloc "./res_send.c", 1157, 7} true;
    $M.0 := $store.i64($M.0, $p68, 1);
    assume {:sourceloc "./res_send.c", 1158, 7} true;
    $M.0 := $store.ref($M.0, $p69, buf);
    assume {:sourceloc "./res_send.c", 1159, 7} true;
    $M.0 := $store.i64($M.0, $p71, $i70);
    assume {:sourceloc "./res_send.c", 1163, 7} true;
    $M.0 := $store.ref($M.0, $p73, $0.ref);
    assume {:sourceloc "./res_send.c", 1164, 7} true;
    $M.0 := $store.i32($M.0, $p74, 0);
    assume {:sourceloc "./res_send.c", 1165, 7} true;
    $p159 := $bitcast.ref.ref($p72);
    assume {:sourceloc "./res_send.c", 1161, 7} true;
    call {:si_unique_call 143} $M.0 := $memset.i8($M.0, $p159, 0, $int2bv.64(16), $int2bv.64($zext.i32.i64(16)), 0 == 1);
    assume {:sourceloc "./res_send.c", 1165, 7} true;
    $M.0 := $store.ref($M.0, $p76, $p75);
    assume {:sourceloc "./res_send.c", 1166, 7} true;
    $M.0 := $store.i64($M.0, $p77, 1);
    assume {:sourceloc "./res_send.c", 1167, 7} true;
    $M.0 := $store.ref($M.0, $p78, buf2);
    assume {:sourceloc "./res_send.c", 1168, 7} true;
    $M.0 := $store.i64($M.0, $p80, $i79);
    assume {:sourceloc "./res_send.c", 1172, 17} true;
    $p160 := $bitcast.ref.ref($p81);
    assume {:sourceloc "./res_send.c", 1170, 7} true;
    call {:si_unique_call 144} $M.0 := $memset.i8($M.0, $p160, 0, $int2bv.64(16), $int2bv.64($zext.i32.i64(16)), 0 == 1);
    assume {:sourceloc "./res_send.c", 1172, 17} true;
    $i161 := $load.i32($M.0, $p38);
    assume {:sourceloc "./res_send.c", 1172, 17} true;
    call {:si_unique_call 145} $i162 := __sendmmsg($i161, $p82, 2, 16384);
    call {:si_unique_call 146} {:cexpr "ndg"} boogie_si_record_i32($i162);
    assume {:sourceloc "./res_send.c", 1173, 11} true;
    $i163 := $eq.i32($i162, 2);
    assume {:sourceloc "./res_send.c", 1173, 11} true;
    $i164 := $zext.i1.i32($i163);
    assume {:sourceloc "./res_send.c", 1173, 11} true;
    call {:si_unique_call 147} $i165 := __builtinx_expect.i32.i32($i164, 1);
    assume {:sourceloc "./res_send.c", 1173, 11} true;
    $i166 := $eq.i32($i165, 0);
    assume {:sourceloc "./res_send.c", 1173, 11} true;
    assume {:branchcond $i166} true;
    goto $bb48, $bb49;

  $bb46:
    assume {:sourceloc "./res_send.c", 1149, 7} true;
    assume !($i158 == 1);
    goto $bb47;

  $bb47:
    assume {:sourceloc "./res_send.c", 1211, 11} true;
    $i190 := $ne.i32($i107, 0);
    assume {:sourceloc "./res_send.c", 1212, 14} true;
    $i191 := $load.i32($M.0, $p38);
    assume {:sourceloc "./res_send.c", 1211, 11} true;
    assume {:branchcond $i190} true;
    goto $bb72, $bb73;

  $bb48:
    assume $i166 == 1;
    assume {:sourceloc "./res_send.c", 1182, 16} true;
    $i173 := $eq.i32($i162, 1);
    assume {:sourceloc "./res_send.c", 1182, 16} true;
    assume {:branchcond $i173} true;
    goto $bb53, $bb54;

  $bb49:
    assume !($i166 == 1);
    assume {:sourceloc "./res_send.c", 1175, 8} true;
    $i167 := $load.i32($M.0, $p84);
    assume {:sourceloc "./res_send.c", 1175, 8} true;
    $i168 := $eq.i32($i167, buflen);
    $i169 := $load.i32($M.0, $p85);
    assume {:sourceloc "./res_send.c", 1175, 8} true;
    $i170 := $eq.i32($i169, buflen2);
    assume {:sourceloc "./res_send.c", 1175, 8} true;
    $i171 := $and.i1($i168, $i170);
    assume {:sourceloc "./res_send.c", 1175, 8} true;
    assume {:branchcond $i171} true;
    goto $bb50, $bb51;

  $bb50:
    assume $i171 == 1;
    assume {:sourceloc "./res_send.c", 1179, 4} true;
    $M.0 := $store.i16($M.0, $p39, 1);
    assume {:sourceloc "./res_send.c", 1180, 4} true;
    $i172 := $add.i32($i107, 2);
    call {:si_unique_call 148} {:cexpr "nwritten"} boogie_si_record_i32($i172);
    assume {:sourceloc "./res_send.c", 1204, 5} true;
    call {:si_unique_call 149} llvm.lifetime.end(128, $p63);
    $i102, $i103, $i104, $i105 := $i128, $i172, $i104, $i105;
    goto $bb12;

  $bb51:
    assume {:sourceloc "./res_send.c", 1175, 8} true;
    assume !($i171 == 1);
    goto $bb52;

  $bb52:
    assume {:sourceloc "./res_send.c", 1204, 5} true;
    call {:si_unique_call 150} llvm.lifetime.end(128, $p63);
    goto $bb18;

  $bb53:
    assume $i173 == 1;
    assume {:sourceloc "./res_send.c", 1182, 16} true;
    $i174 := $load.i32($M.0, $p83);
    assume {:sourceloc "./res_send.c", 1182, 16} true;
    $i175 := $eq.i32($i174, buflen);
    assume {:sourceloc "./res_send.c", 1182, 16} true;
    $i176 := 0;
    assume {:branchcond $i175} true;
    goto $bb55, $bb56;

  $bb54:
    assume !($i173 == 1);
    assume {:sourceloc "./res_send.c", 1184, 16} true;
    $i177 := $slt.i32($i162, 0);
    assume {:sourceloc "./res_send.c", 1184, 16} true;
    $i176 := 0;
    assume {:branchcond $i177} true;
    goto $bb58, $bb59;

  $bb55:
    assume $i175 == 1;
    assume {:sourceloc "./res_send.c", 1204, 5} true;
    call {:si_unique_call 151} llvm.lifetime.end(128, $p63);
    goto $bb71;

  $bb56:
    assume {:sourceloc "./res_send.c", 1182, 16} true;
    assume !($i175 == 1);
    goto $bb57;

  $bb57:
    assume {:sourceloc "./res_send.c", 1189, 8} true;
    $i182 := $M.7;
    assume {:sourceloc "./res_send.c", 1189, 8} true;
    $i183 := $eq.i32($i182, 0);
    assume {:sourceloc "./res_send.c", 1189, 8} true;
    $i184 := $zext.i1.i32($i183);
    assume {:sourceloc "./res_send.c", 1189, 8} true;
    call {:si_unique_call 152} $i185 := __builtinx_expect.i32.i32($i184, 0);
    assume {:sourceloc "./res_send.c", 1189, 8} true;
    $i186 := $eq.i32($i185, 0);
    assume {:sourceloc "./res_send.c", 1189, 8} true;
    assume {:branchcond $i186} true;
    goto $bb67, $bb68;

  $bb58:
    assume $i177 == 1;
    assume {:sourceloc "./res_send.c", 1184, 16} true;
    $i178 := $load.i32($M.0, errno);
    $i179 := $slt.i32($i178, 11);
    assume {:branchcond $i179} true;
    goto $bb60, $bb61;

  $bb59:
    assume {:sourceloc "./res_send.c", 1184, 16} true;
    assume !($i177 == 1);
    goto $bb57;

  $bb60:
    assume $i179 == 1;
    $i181 := $eq.i32($i178, 4);
    $i176 := 1;
    assume {:branchcond $i181} true;
    goto $bb65, $bb66;

  $bb61:
    assume !($i179 == 1);
    $i180 := $eq.i32($i178, 11);
    $i176 := 1;
    assume {:branchcond $i180} true;
    goto $bb62, $bb64;

  $bb62:
    assume $i180 == 1;
    goto $bb63;

  $bb63:
    assume {:sourceloc "./res_send.c", 1204, 5} true;
    call {:si_unique_call 153} llvm.lifetime.end(128, $p63);
    $i108 := $i107;
    goto $bb16;

  $bb64:
    assume !($i180 == 1);
    goto $bb57;

  $bb65:
    assume $i181 == 1;
    goto $bb63;

  $bb66:
    assume !($i181 == 1);
    goto $bb57;

  $bb67:
    assume {:sourceloc "./res_send.c", 1189, 8} true;
    assume $i186 == 1;
    goto $bb52;

  $bb68:
    assume !($i186 == 1);
    $i187 := $load.i32($M.0, errno);
    assume {:sourceloc "./res_send.c", 1191, 12} true;
    $i188 := $eq.i32($i187, 38);
    assume {:sourceloc "./res_send.c", 1191, 12} true;
    $i189 := $and.i1($i176, $i188);
    assume {:sourceloc "./res_send.c", 1191, 12} true;
    assume {:branchcond $i189} true;
    goto $bb69, $bb70;

  $bb69:
    assume $i189 == 1;
    assume {:sourceloc "./res_send.c", 1193, 5} true;
    $M.7 := $sub.i32(0, 1);
    call {:si_unique_call 154} {:cexpr "send_dg.have_sendmmsg"} boogie_si_record_i32($sub.i32(0, 1));
    assume {:sourceloc "./res_send.c", 1204, 5} true;
    call {:si_unique_call 155} llvm.lifetime.end(128, $p63);
    goto $bb47;

  $bb70:
    assume !($i189 == 1);
    assume {:sourceloc "./res_send.c", 1196, 8} true;
    $M.7 := 1;
    call {:si_unique_call 156} {:cexpr "send_dg.have_sendmmsg"} boogie_si_record_i32(1);
    assume {:sourceloc "./res_send.c", 1197, 6} true;
    goto $bb52;

  $bb71:
    assume {:sourceloc "./res_send.c", 1223, 11} true;
    $i202 := $ne.i32($i107, 0);
    assume {:sourceloc "./res_send.c", 1223, 11} true;
    $i203 := $or.i1($i202, $i34);
    assume {:sourceloc "./res_send.c", 1223, 11} true;
    $i204 := $xor.i1($i203, 1);
    assume {:sourceloc "./res_send.c", 1223, 11} true;
    $i205 := $and.i1($i101, $i204);
    assume {:sourceloc "./res_send.c", 1223, 11} true;
    havoc $i206;
    assume ($i205 == 1 ==> $i206 == 5) && ($i205 != 1 ==> $i206 == 1);
    assume {:sourceloc "./res_send.c", 1226, 9} true;
    $M.0 := $store.i16($M.0, $p39, $i206);
    assume {:sourceloc "./res_send.c", 1227, 7} true;
    $i207 := $add.i32($i107, 1);
    call {:si_unique_call 157} {:cexpr "nwritten"} boogie_si_record_i32($i207);
    $i102, $i103, $i104, $i105 := $i128, $i207, $i104, $i105;
    goto $bb12;

  $bb72:
    assume $i190 == 1;
    assume {:sourceloc "./res_send.c", 1212, 14} true;
    call {:si_unique_call 158} $i192 := send($i191, buf2, $i86, 16384);
    assume {:sourceloc "./res_send.c", 1212, 14} true;
    $i193 := $i192;
    goto $bb74;

  $bb73:
    assume !($i190 == 1);
    assume {:sourceloc "./res_send.c", 1214, 14} true;
    call {:si_unique_call 159} $i194 := send($i191, buf, $i87, 16384);
    $i193 := $i194;
    goto $bb74;

  $bb74:
    assume {:sourceloc "./res_send.c", 1216, 11} true;
    havoc $i195;
    assume ($i190 == 1 ==> $i195 == buflen2) && ($i190 != 1 ==> $i195 == buflen);
    assume {:sourceloc "./res_send.c", 1216, 11} true;
    $i196 := $sext.i32.i64($i195);
    assume {:sourceloc "./res_send.c", 1216, 11} true;
    $i197 := $eq.i64($i193, $i196);
    assume {:sourceloc "./res_send.c", 1216, 11} true;
    assume {:branchcond $i197} true;
    goto $bb75, $bb76;

  $bb75:
    assume {:sourceloc "./res_send.c", 1216, 11} true;
    assume $i197 == 1;
    goto $bb71;

  $bb76:
    assume !($i197 == 1);
    assume {:sourceloc "./res_send.c", 1217, 13} true;
    $i198 := $load.i32($M.0, errno);
    $i199 := $slt.i32($i198, 11);
    assume {:branchcond $i199} true;
    goto $bb77, $bb78;

  $bb77:
    assume $i199 == 1;
    $i201 := $eq.i32($i198, 4);
    $i108 := $i107;
    assume {:branchcond $i201} true;
    goto $bb81, $bb82;

  $bb78:
    assume !($i199 == 1);
    $i200 := $eq.i32($i198, 11);
    $i108 := $i107;
    assume {:branchcond $i200} true;
    goto $bb79, $bb80;

  $bb79:
    assume $i200 == 1;
    goto $bb16;

  $bb80:
    assume !($i200 == 1);
    goto $bb18;

  $bb81:
    assume $i201 == 1;
    goto $bb16;

  $bb82:
    assume !($i201 == 1);
    goto $bb18;

  $bb83:
    assume $i209 == 1;
    assume {:sourceloc "./res_send.c", 1461, 13} true;
    $i347 := $and.i32($i151, 56);
    assume {:sourceloc "./res_send.c", 1461, 13} true;
    $i348 := $eq.i32($i347, 0);
    assume {:sourceloc "./res_send.c", 1461, 13} true;
    assume {:branchcond $i348} true;
    goto $bb177, $bb178;

  $bb84:
    assume !($i209 == 1);
    assume {:sourceloc "./res_send.c", 1231, 3} true;
    call {:si_unique_call 160} __VERIFIER_assert(1);
    assume {:sourceloc "./res_send.c", 1236, 7} true;
    $i210 := $or.i32($i105, $i104);
    assume {:sourceloc "./res_send.c", 1236, 7} true;
    $i211 := $eq.i32($i210, 0);
    assume {:sourceloc "./res_send.c", 1236, 7} true;
    $i212 := $or.i1($i211, $i34);
    assume {:sourceloc "./res_send.c", 1236, 7} true;
    assume {:branchcond $i212} true;
    goto $bb85, $bb86;

  $bb85:
    assume $i212 == 1;
    call {:si_unique_call 161} {:cexpr "thisanssizp"} boogie_si_record_ref(anssizp);
    call {:si_unique_call 162} {:cexpr "thisansp"} boogie_si_record_ref($p46);
    assume {:sourceloc "./res_send.c", 1239, 4} true;
    call {:si_unique_call 163} __VERIFIER_assert($i49);
    call {:si_unique_call 164} {:cexpr "thisresplenp"} boogie_si_record_ref($p5);
    assume {:sourceloc "./res_send.c", 1241, 3} true;
    $p213, $p214, $p215 := anssizp, $p46, $p5;
    goto $bb87;

  $bb86:
    assume !($i212 == 1);
    assume {:sourceloc "./res_send.c", 1242, 8} true;
    $i216 := $load.i32($M.1, anssizp);
    assume {:sourceloc "./res_send.c", 1242, 8} true;
    $i217 := $eq.i32($i216, 65536);
    assume {:sourceloc "./res_send.c", 1242, 8} true;
    assume {:branchcond $i217} true;
    goto $bb88, $bb89;

  $bb87:
    assume {:sourceloc "./res_send.c", 1269, 7} true;
    $i226 := $load.i32($M.1, $p213);
    assume {:sourceloc "./res_send.c", 1269, 7} true;
    $i227 := $slt.i32($i226, 65536);
    assume {:sourceloc "./res_send.c", 1269, 7} true;
    $i228 := $and.i1($i227, $i50);
    assume {:sourceloc "./res_send.c", 1269, 7} true;
    assume {:branchcond $i228} true;
    goto $bb91, $bb92;

  $bb88:
    assume $i217 == 1;
    assume {:sourceloc "./res_send.c", 1260, 5} true;
    $M.1 := $store.i32($M.1, anssizp2, $i9);
    assume {:sourceloc "./res_send.c", 1261, 5} true;
    $p225 := $load.ref($M.8, ansp);
    $p224 := $p225;
    goto $bb90;

  $bb89:
    assume !($i217 == 1);
    call {:si_unique_call 165} {:cexpr "resplen"} boogie_si_record_ref($p5);
    assume {:sourceloc "./res_send.c", 1247, 5} true;
    $i218 := $load.i32($M.0, $p5);
    assume {:sourceloc "./res_send.c", 1247, 5} true;
    $i219 := $sub.i32($i9, $i218);
    assume {:sourceloc "./res_send.c", 1247, 5} true;
    $M.1 := $store.i32($M.1, anssizp2, $i219);
    assume {:sourceloc "./res_send.c", 1248, 5} true;
    $p220 := $load.ref($M.8, ansp);
    call {:si_unique_call 166} {:cexpr "resplen"} boogie_si_record_ref($p5);
    assume {:sourceloc "./res_send.c", 1248, 5} true;
    $i221 := $load.i32($M.0, $p5);
    assume {:sourceloc "./res_send.c", 1248, 5} true;
    $i222 := $sext.i32.i64($i221);
    assume {:sourceloc "./res_send.c", 1248, 5} true;
    $p223 := $add.ref($p220, $mul.ref($int2bv.64($i222), 1bv64));
    assume {:sourceloc "./res_send.c", 1256, 4} true;
    $p224 := $p223;
    goto $bb90;

  $bb90:
    assume {:sourceloc "./res_send.c", 1248, 5} true;
    $M.8 := $store.ref($M.8, ansp2, $p224);
    call {:si_unique_call 167} {:cexpr "thisanssizp"} boogie_si_record_ref(anssizp2);
    call {:si_unique_call 168} {:cexpr "thisansp"} boogie_si_record_ref(ansp2);
    call {:si_unique_call 169} {:cexpr "thisresplenp"} boogie_si_record_ref(resplen2);
    $p213, $p214, $p215 := anssizp2, ansp2, resplen2;
    goto $bb87;

  $bb91:
    assume $i228 == 1;
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    $i229 := $load.i32($M.0, $p38);
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    call {:si_unique_call 170} $i230 := ioctl.i32.i64.ref($i229, 21531, $p215);
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    $i231 := $slt.i32($i230, 0);
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    assume {:branchcond $i231} true;
    goto $bb94, $bb96;

  $bb92:
    assume {:sourceloc "./res_send.c", 1269, 7} true;
    assume !($i228 == 1);
    goto $bb93;

  $bb93:
    assume {:sourceloc "./res_send.c", 1286, 3} true;
    $p238 := $load.ref($M.8, $p214);
    call {:si_unique_call 171} {:cexpr "fromlen"} boogie_si_record_i32(28);
    assume {:sourceloc "./res_send.c", 1287, 3} true;
    $M.0 := $store.i32($M.0, $p8, 28);
    assume {:sourceloc "./res_send.c", 1288, 3} true;
    call {:si_unique_call 172} __VERIFIER_assert(1);
    assume {:sourceloc "./res_send.c", 1289, 19} true;
    $i239 := $load.i32($M.0, $p38);
    assume {:sourceloc "./res_send.c", 1289, 19} true;
    $p240 := $load.ref($M.8, $p214);
    assume {:sourceloc "./res_send.c", 1289, 19} true;
    $i241 := $load.i32($M.1, $p213);
    assume {:sourceloc "./res_send.c", 1289, 19} true;
    $i242 := $sext.i32.i64($i241);
    call {:si_unique_call 173} {:cexpr "fromlen"} boogie_si_record_ref($p8);
    assume {:sourceloc "./res_send.c", 1289, 19} true;
    call {:si_unique_call 174} $i243 := recvfrom($i239, $p240, $i242, 0, $p51, $p8);
    assume {:sourceloc "./res_send.c", 1289, 19} true;
    $i244 := $trunc.i64.i32($i243);
    assume {:sourceloc "./res_send.c", 1289, 19} true;
    $M.0 := $store.i32($M.0, $p215, $i244);
    assume {:sourceloc "./res_send.c", 1292, 7} true;
    $i245 := $slt.i32($i244, 1);
    assume {:sourceloc "./res_send.c", 1292, 7} true;
    $i246 := $zext.i1.i32($i245);
    assume {:sourceloc "./res_send.c", 1292, 7} true;
    call {:si_unique_call 175} $i247 := __builtinx_expect.i32.i32($i246, 0);
    assume {:sourceloc "./res_send.c", 1292, 7} true;
    $i248 := $eq.i32($i247, 0);
    assume {:sourceloc "./res_send.c", 1292, 7} true;
    assume {:branchcond $i248} true;
    goto $bb103, $bb104;

  $bb94:
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    assume $i231 == 1;
    goto $bb95;

  $bb95:
    assume {:sourceloc "./res_send.c", 1278, 19} true;
    call {:si_unique_call 176} $p235 := malloc(65536);
    call {:si_unique_call 177} {:cexpr "newp"} boogie_si_record_ref($p235);
    assume {:sourceloc "./res_send.c", 1279, 8} true;
    $i236 := $eq.ref($p235, $0.ref);
    assume {:sourceloc "./res_send.c", 1279, 8} true;
    assume {:branchcond $i236} true;
    goto $bb99, $bb100;

  $bb96:
    assume !($i231 == 1);
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    $i232 := $load.i32($M.1, $p213);
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    $i233 := $load.i32($M.0, $p215);
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    $i234 := $slt.i32($i232, $i233);
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    assume {:branchcond $i234} true;
    goto $bb97, $bb98;

  $bb97:
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    assume $i234 == 1;
    goto $bb95;

  $bb98:
    assume {:sourceloc "./res_send.c", 1274, 11} true;
    assume !($i234 == 1);
    goto $bb93;

  $bb99:
    assume {:sourceloc "./res_send.c", 1279, 8} true;
    assume $i236 == 1;
    goto $bb93;

  $bb100:
    assume !($i236 == 1);
    assume {:sourceloc "./res_send.c", 1280, 5} true;
    $M.1 := $store.i32($M.1, anssizp, 65536);
    call {:si_unique_call 178} {:cexpr "ans"} boogie_si_record_ref($p235);
    assume {:sourceloc "./res_send.c", 1281, 5} true;
    $M.8 := $store.ref($M.8, $p214, $p235);
    assume {:sourceloc "./res_send.c", 1282, 9} true;
    $i237 := $eq.ref($p214, ansp2);
    assume {:sourceloc "./res_send.c", 1282, 9} true;
    assume {:branchcond $i237} true;
    goto $bb101, $bb102;

  $bb101:
    assume $i237 == 1;
    assume {:sourceloc "./res_send.c", 1283, 7} true;
    $M.9 := $store.i32($M.9, ansp2_malloced, 1);
    assume {:sourceloc "./res_send.c", 1283, 7} true;
    goto $bb93;

  $bb102:
    assume {:sourceloc "./res_send.c", 1282, 9} true;
    assume !($i237 == 1);
    goto $bb93;

  $bb103:
    assume $i248 == 1;
    assume {:sourceloc "./res_send.c", 1300, 3} true;
    $M.2 := $store.i32($M.2, gotsomewhere, 1);
    assume {:sourceloc "./res_send.c", 1301, 7} true;
    $i253 := $load.i32($M.0, $p215);
    assume {:sourceloc "./res_send.c", 1301, 7} true;
    $i254 := $slt.i32($i253, 12);
    assume {:sourceloc "./res_send.c", 1301, 7} true;
    $i255 := $zext.i1.i32($i254);
    assume {:sourceloc "./res_send.c", 1301, 7} true;
    call {:si_unique_call 179} $i256 := __builtinx_expect.i32.i32($i255, 0);
    assume {:sourceloc "./res_send.c", 1301, 7} true;
    $i257 := $eq.i32($i256, 0);
    assume {:sourceloc "./res_send.c", 1301, 7} true;
    assume {:branchcond $i257} true;
    goto $bb111, $bb112;

  $bb104:
    assume !($i248 == 1);
    assume {:sourceloc "./res_send.c", 1293, 8} true;
    $i249 := $load.i32($M.0, errno);
    $i250 := $slt.i32($i249, 11);
    assume {:branchcond $i250} true;
    goto $bb105, $bb106;

  $bb105:
    assume $i250 == 1;
    $i252 := $eq.i32($i249, 4);
    $i102, $i103, $i104, $i105 := 1, $i107, $i104, $i105;
    assume {:branchcond $i252} true;
    goto $bb109, $bb110;

  $bb106:
    assume !($i250 == 1);
    $i251 := $eq.i32($i249, 11);
    $i102, $i103, $i104, $i105 := 1, $i107, $i104, $i105;
    assume {:branchcond $i251} true;
    goto $bb107, $bb108;

  $bb107:
    assume $i251 == 1;
    goto $bb12;

  $bb108:
    assume !($i251 == 1);
    goto $bb18;

  $bb109:
    assume $i252 == 1;
    goto $bb12;

  $bb110:
    assume !($i252 == 1);
    goto $bb18;

  $bb111:
    assume $i257 == 1;
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i258 := $ne.i32($i104, 0);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    assume {:branchcond $i258} true;
    goto $bb113, $bb115;

  $bb112:
    assume !($i257 == 1);
    assume {:sourceloc "./res_send.c", 1308, 4} true;
    $M.10 := $store.i32($M.10, terrno, 90);
    assume {:sourceloc "./res_send.c", 1309, 4} true;
    goto $bb18;

  $bb113:
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    assume $i258 == 1;
    goto $bb114;

  $bb114:
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i265 := $eq.i32($i105, 0);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i104, $i105;
    assume {:branchcond $i265} true;
    goto $bb119, $bb120;

  $bb115:
    assume !($i258 == 1);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i259 := $load.i96($M.0, $p61);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $p260 := $bitcast.ref.ref($p238);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i261 := $load.i96($M.0, $p260);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i262 := $xor.i96($i261, $i259);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i263 := $and.i96($i262, 65535);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i264 := $eq.i96($i263, 0);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    assume {:branchcond $i264} true;
    goto $bb116, $bb118;

  $bb116:
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    assume $i264 == 1;
    goto $bb117;

  $bb117:
    assume {:sourceloc "./res_send.c", 1326, 7} true;
    $i272 := $load.i64($M.0, $p18);
    assume {:sourceloc "./res_send.c", 1326, 7} true;
    $i273 := $and.i64($i272, 1024);
    assume {:sourceloc "./res_send.c", 1326, 7} true;
    $i274 := $eq.i64($i273, 0);
    assume {:sourceloc "./res_send.c", 1326, 7} true;
    assume {:branchcond $i274} true;
    goto $bb123, $bb124;

  $bb118:
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    assume !($i264 == 1);
    goto $bb114;

  $bb119:
    assume $i265 == 1;
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i266 := $load.i96($M.0, $p52);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $p267 := $bitcast.ref.ref($p238);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i268 := $load.i96($M.0, $p267);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i269 := $xor.i96($i268, $i266);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i270 := $and.i96($i269, 65535);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i271 := $eq.i96($i270, 0);
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i104, 0;
    assume {:branchcond $i271} true;
    goto $bb121, $bb122;

  $bb120:
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    assume !($i265 == 1);
    goto $bb12;

  $bb121:
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    assume $i271 == 1;
    goto $bb117;

  $bb122:
    assume {:sourceloc "./res_send.c", 1311, 7} true;
    assume !($i271 == 1);
    goto $bb12;

  $bb123:
    assume $i274 == 1;
    call {:si_unique_call 180} {:cexpr "from"} boogie_si_record_ref($p4);
    assume {:sourceloc "./res_send.c", 1327, 8} true;
    call {:si_unique_call 181} $i275 := res_ourserver_p(statp, $p4);
    assume {:sourceloc "./res_send.c", 1327, 8} true;
    $i276 := $eq.i32($i275, 0);
    assume {:sourceloc "./res_send.c", 1327, 8} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i104, $i105;
    assume {:branchcond $i276} true;
    goto $bb126, $bb127;

  $bb124:
    assume {:sourceloc "./res_send.c", 1326, 7} true;
    assume !($i274 == 1);
    goto $bb125;

  $bb125:
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    $p277 := $bitcast.ref.ref($p238);
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    $i278 := $load.i96($M.0, $p277);
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    $i279 := $and.i96($i278, 251658240);
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    $i280 := $eq.i96($i279, 16777216);
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    assume {:branchcond $i280} true;
    goto $bb128, $bb129;

  $bb126:
    assume {:sourceloc "./res_send.c", 1327, 8} true;
    assume $i276 == 1;
    goto $bb12;

  $bb127:
    assume {:sourceloc "./res_send.c", 1327, 8} true;
    assume !($i276 == 1);
    goto $bb125;

  $bb128:
    assume $i280 == 1;
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    $i281 := $load.i64($M.0, $p18);
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    $i282 := $and.i64($i281, 1048576);
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    $i283 := $eq.i64($i282, 0);
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    assume {:branchcond $i283} true;
    goto $bb131, $bb132;

  $bb129:
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    assume !($i280 == 1);
    goto $bb130;

  $bb130:
    assume {:sourceloc "./res_send.c", 1361, 7} true;
    $i287 := $load.i64($M.0, $p18);
    assume {:sourceloc "./res_send.c", 1361, 7} true;
    $i288 := $and.i64($i287, 2048);
    assume {:sourceloc "./res_send.c", 1361, 7} true;
    $i289 := $eq.i64($i288, 0);
    assume {:sourceloc "./res_send.c", 1361, 7} true;
    assume {:branchcond $i289} true;
    goto $bb133, $bb134;

  $bb131:
    assume {:sourceloc "./res_send.c", 1342, 7} true;
    assume $i283 == 1;
    goto $bb130;

  $bb132:
    assume !($i283 == 1);
    assume {:sourceloc "./res_send.c", 1357, 4} true;
    $p284 := $add.ref(statp, 504bv64);
    assume {:sourceloc "./res_send.c", 1357, 4} true;
    $i285 := $load.i32($M.0, $p284);
    assume {:sourceloc "./res_send.c", 1357, 4} true;
    $i286 := $or.i32($i285, 4);
    assume {:sourceloc "./res_send.c", 1357, 4} true;
    $M.0 := $store.i32($M.0, $p284, $i286);
    assume {:sourceloc "./res_send.c", 1358, 4} true;
    goto $bb18;

  $bb133:
    assume $i289 == 1;
    assume {:sourceloc "./res_send.c", 1361, 7} true;
    assume {:branchcond $i258} true;
    goto $bb136, $bb138;

  $bb134:
    assume {:sourceloc "./res_send.c", 1361, 7} true;
    assume !($i289 == 1);
    goto $bb135;

  $bb135:
    assume {:sourceloc "./res_send.c", 1383, 7} true;
    $i303 := $load.i96($M.0, $p277);
    assume {:sourceloc "./res_send.c", 1383, 7} true;
    $i304 := $lshr.i96($i303, 24);
    assume {:sourceloc "./res_send.c", 1383, 7} true;
    $i305 := $trunc.i96.i32($i304);
    assume {:sourceloc "./res_send.c", 1383, 7} true;
    $i306 := $and.i32($i305, 15);
    $i307 := $slt.i32($i306, 4);
    assume {:branchcond $i307} true;
    goto $bb145, $bb146;

  $bb136:
    assume {:sourceloc "./res_send.c", 1361, 7} true;
    assume $i258 == 1;
    goto $bb137;

  $bb137:
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $i296 := $eq.i32($i105, 0);
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i104, $i105;
    assume {:branchcond $i296} true;
    goto $bb141, $bb142;

  $bb138:
    assume !($i258 == 1);
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $p290 := $load.ref($M.8, $p214);
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $i291 := $load.i32($M.1, $p213);
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $i292 := $sext.i32.i64($i291);
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $p293 := $add.ref($p290, $mul.ref($int2bv.64($i292), 1bv64));
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    call {:si_unique_call 182} $i294 := __res_queriesmatch(buf, $p56, $p290, $p293);
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    $i295 := $eq.i32($i294, 0);
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    assume {:branchcond $i295} true;
    goto $bb139, $bb140;

  $bb139:
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    assume $i295 == 1;
    goto $bb137;

  $bb140:
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    assume !($i295 == 1);
    goto $bb135;

  $bb141:
    assume $i296 == 1;
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    $p297 := $load.ref($M.8, $p214);
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    $i298 := $load.i32($M.1, $p213);
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    $i299 := $sext.i32.i64($i298);
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    $p300 := $add.ref($p297, $mul.ref($int2bv.64($i299), 1bv64));
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    call {:si_unique_call 183} $i301 := __res_queriesmatch(buf2, $p54, $p297, $p300);
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    $i302 := $eq.i32($i301, 0);
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i104, 0;
    assume {:branchcond $i302} true;
    goto $bb143, $bb144;

  $bb142:
    assume {:sourceloc "./res_send.c", 1362, 25} true;
    assume !($i296 == 1);
    goto $bb12;

  $bb143:
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    assume $i302 == 1;
    goto $bb12;

  $bb144:
    assume {:sourceloc "./res_send.c", 1366, 25} true;
    assume !($i302 == 1);
    goto $bb135;

  $bb145:
    assume $i307 == 1;
    $i310 := $eq.i32($i306, 2);
    assume {:branchcond $i310} true;
    goto $bb151, $bb152;

  $bb146:
    assume !($i307 == 1);
    $i308 := $add.i32($i306, $sub.i32(0, 4));
    $i309 := $ule.i32($i308, 1);
    assume {:branchcond $i309} true;
    goto $bb147, $bb149;

  $bb147:
    assume $i309 == 1;
    goto $bb148;

  $bb148:
    $i311 := $ne.i32($i105, 0);
    assume {:sourceloc "./res_send.c", 1393, 8} true;
    $i312 := $and.i1($i58, $i311);
    assume {:sourceloc "./res_send.c", 1393, 8} true;
    $i313 := $or.i1($i258, $i312);
    assume {:sourceloc "./res_send.c", 1393, 8} true;
    assume {:branchcond $i313} true;
    goto $bb153, $bb154;

  $bb149:
    assume !($i309 == 1);
    goto $bb150;

  $bb150:
    assume {:sourceloc "./res_send.c", 1415, 7} true;
    $i324 := $load.i96($M.0, $p277);
    assume {:sourceloc "./res_send.c", 1415, 7} true;
    $i325 := $and.i96($i324, $sub.i96(0, 1208907373152028042461184));
    assume {:sourceloc "./res_send.c", 1415, 7} true;
    $i326 := $eq.i96($i325, 0);
    assume {:sourceloc "./res_send.c", 1415, 7} true;
    assume {:branchcond $i326} true;
    goto $bb159, $bb160;

  $bb151:
    assume $i310 == 1;
    goto $bb148;

  $bb152:
    assume !($i310 == 1);
    goto $bb150;

  $bb153:
    assume $i313 == 1;
    assume {:sourceloc "./res_send.c", 1394, 6} true;
    $M.0 := $store.i32($M.0, resplen2, 0);
    call {:si_unique_call 184} {:cexpr "resplen"} boogie_si_record_ref($p5);
    assume {:sourceloc "./res_send.c", 1395, 6} true;
    $i314 := $load.i32($M.0, $p5);
    assume {:sourceloc "./res_send.c", 1395, 6} true;
    $i25 := $i314;
    goto $bb5;

  $bb154:
    assume !($i313 == 1);
    assume {:sourceloc "./res_send.c", 1397, 8} true;
    assume {:branchcond $i58} true;
    goto $bb155, $bb156;

  $bb155:
    assume $i58 == 1;
    call {:si_unique_call 185} {:cexpr "resplen"} boogie_si_record_i32(0);
    assume {:sourceloc "./res_send.c", 1400, 8} true;
    $M.0 := $store.i32($M.0, $p5, 0);
    assume {:sourceloc "./res_send.c", 1402, 12} true;
    $i315 := $load.i96($M.0, $p59);
    assume {:sourceloc "./res_send.c", 1402, 12} true;
    $i316 := $load.i96($M.0, $p277);
    assume {:sourceloc "./res_send.c", 1402, 12} true;
    $i317 := $xor.i96($i316, $i315);
    assume {:sourceloc "./res_send.c", 1402, 12} true;
    $i318 := $and.i96($i317, 65535);
    assume {:sourceloc "./res_send.c", 1402, 12} true;
    $i319 := $eq.i96($i318, 0);
    assume {:sourceloc "./res_send.c", 1403, 10} true;
    havoc $i320;
    assume ($i319 == 1 ==> $i320 == 1) && ($i319 != 1 ==> $i320 == $i104);
    assume {:sourceloc "./res_send.c", 1403, 10} true;
    havoc $i321;
    assume ($i319 == 1 ==> $i321 == $i105) && ($i319 != 1 ==> $i321 == 1);
    assume {:sourceloc "./res_send.c", 1403, 10} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i320, $i321;
    goto $bb12;

  $bb156:
    assume !($i58 == 1);
    assume {:sourceloc "./res_send.c", 1410, 4} true;
    call {:si_unique_call 186} __res_iclose(statp, 0);
    assume {:sourceloc "./res_send.c", 1412, 8} true;
    $i322 := $load.i64($M.0, $p60);
    assume {:sourceloc "./res_send.c", 1412, 8} true;
    $i323 := $eq.i64($i322, 0);
    assume {:sourceloc "./res_send.c", 1412, 8} true;
    $i25 := 0;
    assume {:branchcond $i323} true;
    goto $bb157, $bb158;

  $bb157:
    assume {:sourceloc "./res_send.c", 1412, 8} true;
    assume $i323 == 1;
    goto $bb5;

  $bb158:
    assume {:sourceloc "./res_send.c", 1412, 8} true;
    assume !($i323 == 1);
    goto $bb150;

  $bb159:
    assume {:sourceloc "./res_send.c", 1415, 7} true;
    assume $i326 == 1;
    goto $bb148;

  $bb160:
    assume !($i326 == 1);
    assume {:sourceloc "./res_send.c", 1424, 7} true;
    $i327 := $load.i64($M.0, $p18);
    assume {:sourceloc "./res_send.c", 1424, 7} true;
    $i328 := $and.i64($i327, 32);
    assume {:sourceloc "./res_send.c", 1424, 7} true;
    $i329 := $ne.i64($i328, 0);
    $i330 := $and.i96($i324, 131072);
    assume {:sourceloc "./res_send.c", 1424, 7} true;
    $i331 := $eq.i96($i330, 0);
    assume {:sourceloc "./res_send.c", 1424, 7} true;
    $i332 := $or.i1($i329, $i331);
    assume {:sourceloc "./res_send.c", 1424, 7} true;
    assume {:branchcond $i332} true;
    goto $bb161, $bb162;

  $bb161:
    assume $i332 == 1;
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    $i333 := $eq.i32($i104, 0);
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    assume {:branchcond $i333} true;
    goto $bb163, $bb164;

  $bb162:
    assume !($i332 == 1);
    assume {:sourceloc "./res_send.c", 1431, 4} true;
    $M.11 := $store.i32($M.11, v_circuit, 1);
    assume {:sourceloc "./res_send.c", 1432, 4} true;
    call {:si_unique_call 187} __res_iclose(statp, 0);
    assume {:sourceloc "./res_send.c", 1435, 4} true;
    $i25 := 1;
    goto $bb5;

  $bb163:
    assume $i333 == 1;
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    $i334 := $load.i96($M.0, $p57);
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    $i335 := $load.i96($M.0, $p277);
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    $i336 := $xor.i96($i335, $i334);
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    $i337 := $and.i96($i336, 65535);
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    $i338 := $eq.i96($i337, 0);
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    $i339, $i340 := 1, $i105;
    assume {:branchcond $i338} true;
    goto $bb166, $bb168;

  $bb164:
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    assume !($i333 == 1);
    goto $bb165;

  $bb165:
    call {:si_unique_call 188} {:cexpr "recvresp2"} boogie_si_record_i32(1);
    $i339, $i340 := $i104, 1;
    goto $bb167;

  $bb166:
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    assume $i338 == 1;
    goto $bb167;

  $bb167:
    assume {:sourceloc "./res_send.c", 1443, 7} true;
    $i341 := $and.i32($i340, $i339);
    assume {:sourceloc "./res_send.c", 1443, 7} true;
    $i342 := $eq.i32($i341, 0);
    assume {:sourceloc "./res_send.c", 1443, 7} true;
    assume {:branchcond $i342} true;
    goto $bb169, $bb170;

  $bb168:
    assume {:sourceloc "./res_send.c", 1438, 7} true;
    assume !($i338 == 1);
    goto $bb165;

  $bb169:
    assume $i342 == 1;
    assume {:sourceloc "./res_send.c", 1444, 8} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i339, $i340;
    assume {:branchcond $i99} true;
    goto $bb171, $bb172;

  $bb170:
    assume !($i342 == 1);
    call {:si_unique_call 189} {:cexpr "resplen"} boogie_si_record_ref($p5);
    assume {:sourceloc "./res_send.c", 1460, 3} true;
    $i346 := $load.i32($M.0, $p5);
    assume {:sourceloc "./res_send.c", 1460, 3} true;
    $i25 := $i346;
    goto $bb5;

  $bb171:
    assume {:sourceloc "./res_send.c", 1444, 8} true;
    assume $i99 == 1;
    goto $bb12;

  $bb172:
    assume !($i99 == 1);
    assume {:sourceloc "./res_send.c", 1445, 5} true;
    $M.0 := $store.i16($M.0, $p39, 4);
    assume {:sourceloc "./res_send.c", 1446, 9} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i339, $i340;
    assume {:branchcond $i94} true;
    goto $bb173, $bb174;

  $bb173:
    assume $i94 == 1;
    assume {:sourceloc "./res_send.c", 1447, 6} true;
    call {:si_unique_call 190} __res_iclose(statp, 0);
    assume {:sourceloc "./res_send.c", 1448, 15} true;
    call {:si_unique_call 191} $i343 := reopen(statp, terrno, ns);
    call {:si_unique_call 192} {:cexpr "retval"} boogie_si_record_i32($i343);
    assume {:sourceloc "./res_send.c", 1449, 10} true;
    $i344 := $slt.i32($i343, 1);
    assume {:sourceloc "./res_send.c", 1449, 10} true;
    $i25 := $i343;
    assume {:branchcond $i344} true;
    goto $bb175, $bb176;

  $bb174:
    assume {:sourceloc "./res_send.c", 1446, 9} true;
    assume !($i94 == 1);
    goto $bb12;

  $bb175:
    assume {:sourceloc "./res_send.c", 1449, 10} true;
    assume $i344 == 1;
    goto $bb5;

  $bb176:
    assume !($i344 == 1);
    assume {:sourceloc "./res_send.c", 1451, 6} true;
    $i345 := $load.i32($M.0, $p37);
    assume {:sourceloc "./res_send.c", 1451, 6} true;
    $M.0 := $store.i32($M.0, $p38, $i345);
    assume {:sourceloc "./res_send.c", 1452, 5} true;
    $i102, $i103, $i104, $i105 := $i128, $i107, $i339, $i340;
    goto $bb12;

  $bb177:
    assume $i348 == 1;
    assume {:sourceloc "./res_send.c", 1467, 3} true;
    call {:si_unique_call 193} abort();
    assume {:sourceloc "./res_send.c", 1467, 3} true;
    assume false;
    goto $bb178;

  $bb178:
    assume {:sourceloc "./res_send.c", 1461, 13} true;
    assume !($i348 == 1);
    goto $bb18;
}



const evSubTime: ref;

axiom evSubTime == $sub.ref(0bv64, 304bv64);

procedure evSubTime(res: ref, minuend: ref, subtrahend: ref);
  modifies $M.5, $M.6, $exn;



implementation evSubTime(res: ref, minuend: ref, subtrahend: ref)
{
  var $p0: ref;
  var $i1: i64;
  var $p2: ref;
  var $i3: i64;
  var $i4: i64;
  var $p5: ref;
  var $p6: ref;
  var $i7: i64;
  var $p8: ref;
  var $i9: i64;
  var $i10: i1;
  var $i11: i64;
  var $p12: ref;
  var $i13: i64;
  var $i14: i64;
  var $p15: ref;
  var $i16: i64;
  var $i17: i64;

  $bb0:
    call {:si_unique_call 194} {:cexpr "res"} boogie_si_record_ref(res);
    call {:si_unique_call 195} {:cexpr "minuend"} boogie_si_record_ref(minuend);
    call {:si_unique_call 196} {:cexpr "subtrahend"} boogie_si_record_ref(subtrahend);
    assume {:sourceloc "./res_send.c", 153, 8} true;
    $p0 := minuend;
    assume {:sourceloc "./res_send.c", 153, 8} true;
    $i1 := $load.i64($M.3, $p0);
    assume {:sourceloc "./res_send.c", 153, 8} true;
    $p2 := subtrahend;
    assume {:sourceloc "./res_send.c", 153, 8} true;
    $i3 := $load.i64($M.5, $p2);
    assume {:sourceloc "./res_send.c", 153, 8} true;
    $i4 := $sub.i64($i1, $i3);
    assume {:sourceloc "./res_send.c", 153, 8} true;
    $p5 := res;
    assume {:sourceloc "./res_send.c", 153, 8} true;
    $M.5 := $store.i64($M.5, $p5, $i4);
    assume {:sourceloc "./res_send.c", 154, 6} true;
    $p6 := $add.ref(minuend, 8bv64);
    assume {:sourceloc "./res_send.c", 154, 6} true;
    $i7 := $load.i64($M.4, $p6);
    assume {:sourceloc "./res_send.c", 154, 6} true;
    $p8 := $add.ref(subtrahend, 8bv64);
    assume {:sourceloc "./res_send.c", 154, 6} true;
    $i9 := $load.i64($M.6, $p8);
    assume {:sourceloc "./res_send.c", 154, 6} true;
    $i10 := $slt.i64($i7, $i9);
    assume {:sourceloc "./res_send.c", 154, 6} true;
    assume {:branchcond $i10} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i10 == 1;
    assume {:sourceloc "./res_send.c", 157, 3} true;
    $i13 := $add.i64($i7, 1000000000);
    assume {:sourceloc "./res_send.c", 157, 3} true;
    $i14 := $sub.i64($i13, $i9);
    assume {:sourceloc "./res_send.c", 157, 3} true;
    $p15 := $add.ref(res, 8bv64);
    assume {:sourceloc "./res_send.c", 157, 3} true;
    $M.6 := $store.i64($M.6, $p15, $i14);
    assume {:sourceloc "./res_send.c", 159, 3} true;
    $i16 := $load.i64($M.5, $p5);
    assume {:sourceloc "./res_send.c", 159, 3} true;
    $i17 := $add.i64($i16, $sub.i64(0, 1));
    assume {:sourceloc "./res_send.c", 159, 3} true;
    $M.5 := $store.i64($M.5, $p5, $i17);
    goto $bb3;

  $bb2:
    assume !($i10 == 1);
    assume {:sourceloc "./res_send.c", 155, 3} true;
    $i11 := $sub.i64($i7, $i9);
    assume {:sourceloc "./res_send.c", 155, 3} true;
    $p12 := $add.ref(res, 8bv64);
    assume {:sourceloc "./res_send.c", 155, 3} true;
    $M.6 := $store.i64($M.6, $p12, $i11);
    assume {:sourceloc "./res_send.c", 155, 3} true;
    goto $bb3;

  $bb3:
    assume {:sourceloc "./res_send.c", 161, 1} true;
    $exn := false;
    return;
}



const evCmpTime: ref;

axiom evCmpTime == $sub.ref(0bv64, 312bv64);

procedure evCmpTime(a.coerce0: i64, a.coerce1: i64, b.coerce0: i64, b.coerce1: i64) returns ($r: i32);
  modifies $exn;



implementation evCmpTime(a.coerce0: i64, a.coerce1: i64, b.coerce0: i64, b.coerce1: i64) returns ($r: i32)
{
  var $i0: i64;
  var $i1: i1;
  var $i2: i64;
  var $i3: i64;
  var $i4: i1;
  var $i6: i1;
  var $i7: i32;
  var $i5: i32;

  $bb0:
    assume true;
    assume true;
    assume {:sourceloc "./res_send.c", 165, 2} true;
    $i0 := $sub.i64(a.coerce0, b.coerce0);
    call {:si_unique_call 197} {:cexpr "x"} boogie_si_record_i64($i0);
    assume {:sourceloc "./res_send.c", 167, 6} true;
    $i1 := $eq.i64(a.coerce0, b.coerce0);
    assume {:sourceloc "./res_send.c", 168, 3} true;
    $i2 := $sub.i64(a.coerce1, b.coerce1);
    call {:si_unique_call 198} {:cexpr "x"} boogie_si_record_i64($i2);
    assume {:sourceloc "./res_send.c", 167, 6} true;
    havoc $i3;
    assume ($i1 == 1 ==> $i3 == $i2) && ($i1 != 1 ==> $i3 == $i0);
    assume {:sourceloc "./res_send.c", 169, 2} true;
    $i4 := $slt.i64($i3, 0);
    assume {:sourceloc "./res_send.c", 169, 2} true;
    $i5 := $sub.i32(0, 1);
    assume {:branchcond $i4} true;
    goto $bb1, $bb3;

  $bb1:
    assume {:sourceloc "./res_send.c", 169, 2} true;
    assume $i4 == 1;
    goto $bb2;

  $bb2:
    assume {:sourceloc "./res_send.c", 169, 2} true;
    assume {:sourceloc "./res_send.c", 169, 2} true;
    $r := $i5;
    $exn := false;
    return;

  $bb3:
    assume !($i4 == 1);
    assume {:sourceloc "./res_send.c", 169, 2} true;
    $i6 := $sgt.i64($i3, 0);
    assume {:sourceloc "./res_send.c", 169, 2} true;
    $i7 := $zext.i1.i32($i6);
    assume {:sourceloc "./res_send.c", 169, 2} true;
    $i5 := $i7;
    goto $bb2;
}



const evAddTime: ref;

axiom evAddTime == $sub.ref(0bv64, 320bv64);

procedure evAddTime(res: ref, addend1: ref, addend2: ref);
  modifies $M.3, $M.4, $exn;



implementation evAddTime(res: ref, addend1: ref, addend2: ref)
{
  var $p0: ref;
  var $i1: i64;
  var $p2: ref;
  var $i3: i64;
  var $i4: i64;
  var $p5: ref;
  var $p6: ref;
  var $i7: i64;
  var $p8: ref;
  var $i9: i64;
  var $i10: i64;
  var $p11: ref;
  var $i12: i1;
  var $i13: i64;
  var $i14: i64;
  var $i15: i64;
  var $i16: i64;

  $bb0:
    call {:si_unique_call 199} {:cexpr "res"} boogie_si_record_ref(res);
    call {:si_unique_call 200} {:cexpr "addend1"} boogie_si_record_ref(addend1);
    call {:si_unique_call 201} {:cexpr "addend2"} boogie_si_record_ref(addend2);
    assume {:sourceloc "./res_send.c", 142, 2} true;
    $p0 := addend1;
    assume {:sourceloc "./res_send.c", 142, 2} true;
    $i1 := $load.i64($M.5, $p0);
    assume {:sourceloc "./res_send.c", 142, 2} true;
    $p2 := addend2;
    assume {:sourceloc "./res_send.c", 142, 2} true;
    $i3 := $load.i64($M.5, $p2);
    assume {:sourceloc "./res_send.c", 142, 2} true;
    $i4 := $add.i64($i3, $i1);
    assume {:sourceloc "./res_send.c", 142, 2} true;
    $p5 := res;
    assume {:sourceloc "./res_send.c", 142, 2} true;
    $M.3 := $store.i64($M.3, $p5, $i4);
    assume {:sourceloc "./res_send.c", 143, 2} true;
    $p6 := $add.ref(addend1, 8bv64);
    assume {:sourceloc "./res_send.c", 143, 2} true;
    $i7 := $load.i64($M.6, $p6);
    assume {:sourceloc "./res_send.c", 143, 2} true;
    $p8 := $add.ref(addend2, 8bv64);
    assume {:sourceloc "./res_send.c", 143, 2} true;
    $i9 := $load.i64($M.6, $p8);
    assume {:sourceloc "./res_send.c", 143, 2} true;
    $i10 := $add.i64($i9, $i7);
    assume {:sourceloc "./res_send.c", 143, 2} true;
    $p11 := $add.ref(res, 8bv64);
    assume {:sourceloc "./res_send.c", 143, 2} true;
    $M.4 := $store.i64($M.4, $p11, $i10);
    assume {:sourceloc "./res_send.c", 144, 6} true;
    $i12 := $sgt.i64($i10, 999999999);
    assume {:sourceloc "./res_send.c", 144, 6} true;
    assume {:branchcond $i12} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i12 == 1;
    assume {:sourceloc "./res_send.c", 145, 3} true;
    $i13 := $load.i64($M.3, $p5);
    assume {:sourceloc "./res_send.c", 145, 3} true;
    $i14 := $add.i64($i13, 1);
    assume {:sourceloc "./res_send.c", 145, 3} true;
    $M.3 := $store.i64($M.3, $p5, $i14);
    assume {:sourceloc "./res_send.c", 146, 3} true;
    $i15 := $load.i64($M.4, $p11);
    assume {:sourceloc "./res_send.c", 146, 3} true;
    $i16 := $add.i64($i15, $sub.i64(0, 1000000000));
    assume {:sourceloc "./res_send.c", 146, 3} true;
    $M.4 := $store.i64($M.4, $p11, $i16);
    assume {:sourceloc "./res_send.c", 147, 2} true;
    goto $bb3;

  $bb2:
    assume {:sourceloc "./res_send.c", 144, 6} true;
    assume !($i12 == 1);
    goto $bb3;

  $bb3:
    assume {:sourceloc "./res_send.c", 148, 1} true;
    $exn := false;
    return;
}



const evConsTime: ref;

axiom evConsTime == $sub.ref(0bv64, 328bv64);

procedure evConsTime(res: ref, sec: i64);
  modifies $M.5, $M.6, $exn;



implementation evConsTime(res: ref, sec: i64)
{
  var $p0: ref;
  var $p1: ref;

  $bb0:
    call {:si_unique_call 202} {:cexpr "nsec"} boogie_si_record_i64(0);
    assume {:sourceloc "./res_send.c", 135, 2} true;
    $p0 := res;
    assume {:sourceloc "./res_send.c", 135, 2} true;
    $M.5 := $store.i64($M.5, $p0, sec);
    assume {:sourceloc "./res_send.c", 136, 2} true;
    $p1 := $add.ref(res, 8bv64);
    assume {:sourceloc "./res_send.c", 136, 2} true;
    $M.6 := $store.i64($M.6, $p1, 0);
    assume {:sourceloc "./res_send.c", 137, 1} true;
    $exn := false;
    return;
}



const evNowTime: ref;

axiom evNowTime == $sub.ref(0bv64, 336bv64);

procedure evNowTime(res: ref);
  modifies $CurrAddr, $Alloc, $M.5, $M.6, $exn;



implementation evNowTime(res: ref)
{
  var $p0: ref;
  var $i1: i32;
  var $i2: i1;
  var $p3: ref;
  var $i4: i64;
  var $p5: ref;
  var $p6: ref;
  var $i7: i64;
  var $i8: i64;
  var $p9: ref;

  $bb0:
    call {:si_unique_call 203} $p0 := $alloc($mul.ref(16bv64, $int2bv.64(1)));
    call {:si_unique_call 204} {:cexpr "res"} boogie_si_record_ref(res);
    call {:si_unique_call 205} {:cexpr "now"} boogie_si_record_ref($p0);
    assume {:sourceloc "./res_send.c", 176, 6} true;
    call {:si_unique_call 206} $i1 := gettimeofday($p0, $0.ref);
    assume {:sourceloc "./res_send.c", 176, 6} true;
    $i2 := $slt.i32($i1, 0);
    assume {:sourceloc "./res_send.c", 176, 6} true;
    assume {:branchcond $i2} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i2 == 1;
    assume {:sourceloc "./res_send.c", 177, 3} true;
    call {:si_unique_call 207} evConsTime(res, 0);
    assume {:sourceloc "./res_send.c", 177, 3} true;
    goto $bb3;

  $bb2:
    assume !($i2 == 1);
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $p3 := $p0;
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $i4 := $load.i64($M.0, $p3);
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $p5 := res;
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $M.5 := $store.i64($M.5, $p5, $i4);
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $p6 := $add.ref($p0, 8bv64);
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $i7 := $load.i64($M.0, $p6);
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $i8 := $mul.i64($i7, 1000);
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $p9 := $add.ref(res, 8bv64);
    assume {:sourceloc "./res_send.c", 179, 3} true;
    $M.6 := $store.i64($M.6, $p9, $i8);
    goto $bb3;

  $bb3:
    assume {:sourceloc "./res_send.c", 180, 1} true;
    $exn := false;
    return;
}



const reopen: ref;

axiom reopen == $sub.ref(0bv64, 344bv64);

procedure reopen(statp: ref, terrno: ref, ns: i32) returns ($r: i32);
  modifies $exn, $M.0, $M.10;



implementation reopen(statp: ref, terrno: ref, ns: i32) returns ($r: i32)
{
  var $i0: i64;
  var $p1: ref;
  var $i2: i32;
  var $i3: i1;
  var $p5: ref;
  var $p6: ref;
  var $p7: ref;
  var $p8: ref;
  var $i9: i16;
  var $i10: i1;
  var $p12: ref;
  var $i13: i32;
  var $i14: i32;
  var $i15: i1;
  var $i16: i32;
  var $i17: i1;
  var $i18: i32;
  var $i19: i32;
  var $i20: i1;
  var $i21: i32;
  var $i23: i32;
  var $i22: i32;
  var $i24: i1;
  var $i26: i32;
  var $i27: i1;
  var $i28: i32;
  var $i29: i32;
  var $i30: i32;
  var $i31: i32;
  var $i32: i32;
  var $i33: i16;
  var $i11: i16;
  var $i34: i1;
  var $i35: i32;
  var $i36: i1;
  var $i37: i32;
  var $i38: i32;
  var $i39: i1;
  var $i40: i32;
  var $i25: i32;
  var $i43: i32;
  var $i41: i32;
  var $i42: i32;
  var $i44: i1;
  var $i45: i32;
  var $i46: i32;
  var $i47: i1;
  var $i48: i32;
  var $i49: i1;
  var $i50: i32;
  var $i51: i32;
  var $i52: i1;
  var $i53: i32;
  var $i54: i32;
  var $i55: i32;
  var $i4: i32;

  $bb0:
    call {:si_unique_call 208} {:cexpr "statp"} boogie_si_record_ref(statp);
    call {:si_unique_call 209} {:cexpr "terrno"} boogie_si_record_ref(terrno);
    call {:si_unique_call 210} {:cexpr "ns"} boogie_si_record_i32(ns);
    assume {:sourceloc "./res_send.c", 951, 6} true;
    $i0 := $sext.i32.i64(ns);
    assume {:sourceloc "./res_send.c", 951, 6} true;
    $p1 := $add.ref($add.ref($add.ref(statp, 512bv64), 8bv64), $mul.ref($int2bv.64($i0), 4bv64));
    assume {:sourceloc "./res_send.c", 951, 6} true;
    $i2 := $load.i32($M.0, $p1);
    assume {:sourceloc "./res_send.c", 951, 6} true;
    $i3 := $eq.i32($i2, $sub.i32(0, 1));
    assume {:sourceloc "./res_send.c", 951, 6} true;
    $i4 := 1;
    assume {:branchcond $i3} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i3 == 1;
    assume {:sourceloc "./res_send.c", 952, 3} true;
    $p5 := $add.ref($add.ref($add.ref(statp, 512bv64), 24bv64), $mul.ref($int2bv.64($i0), 8bv64));
    assume {:sourceloc "./res_send.c", 952, 3} true;
    $p6 := $load.ref($M.0, $p5);
    assume {:sourceloc "./res_send.c", 952, 3} true;
    $p7 := $bitcast.ref.ref($p6);
    call {:si_unique_call 211} {:cexpr "nsap"} boogie_si_record_ref($p7);
    assume {:sourceloc "./res_send.c", 957, 7} true;
    $p8 := $p6;
    assume {:sourceloc "./res_send.c", 957, 7} true;
    $i9 := $load.i16($M.0, $p8);
    assume {:sourceloc "./res_send.c", 957, 7} true;
    $i10 := $eq.i16($i9, 10);
    assume {:sourceloc "./res_send.c", 957, 7} true;
    $i11 := $i9;
    assume {:branchcond $i10} true;
    goto $bb4, $bb5;

  $bb2:
    assume {:sourceloc "./res_send.c", 951, 6} true;
    assume !($i3 == 1);
    goto $bb3;

  $bb3:
    assume {:sourceloc "./res_send.c", 1026, 1} true;
    $r := $i4;
    $exn := false;
    return;

  $bb4:
    assume $i10 == 1;
    assume {:sourceloc "./res_send.c", 957, 7} true;
    $p12 := $add.ref(statp, 392bv64);
    assume {:sourceloc "./res_send.c", 957, 7} true;
    $i13 := $load.i32($M.0, $p12);
    assume {:sourceloc "./res_send.c", 957, 7} true;
    $i14 := $and.i32($i13, 256);
    assume {:sourceloc "./res_send.c", 957, 7} true;
    $i15 := $eq.i32($i14, 0);
    assume {:sourceloc "./res_send.c", 957, 7} true;
    assume {:branchcond $i15} true;
    goto $bb7, $bb8;

  $bb5:
    assume {:sourceloc "./res_send.c", 957, 7} true;
    assume !($i10 == 1);
    goto $bb6;

  $bb6:
    assume {:sourceloc "./res_send.c", 975, 14} true;
    assume {:sourceloc "./res_send.c", 975, 14} true;
    $i34 := $eq.i16($i11, 2);
    assume {:sourceloc "./res_send.c", 975, 14} true;
    $i25 := $u0;
    assume {:branchcond $i34} true;
    goto $bb18, $bb19;

  $bb7:
    assume $i15 == 1;
    assume {:sourceloc "./res_send.c", 958, 8} true;
    call {:si_unique_call 212} $i16 := __builtinx_expect.i32.i32(1, 1);
    assume {:sourceloc "./res_send.c", 958, 8} true;
    $i17 := $eq.i32($i16, 0);
    assume {:sourceloc "./res_send.c", 958, 8} true;
    assume {:branchcond $i17} true;
    goto $bb9, $bb11;

  $bb8:
    assume !($i15 == 1);
    assume {:sourceloc "./res_send.c", 975, 14} true;
    $i33 := $load.i16($M.0, $p8);
    $i11 := $i33;
    goto $bb6;

  $bb9:
    assume {:sourceloc "./res_send.c", 958, 8} true;
    assume $i17 == 1;
    goto $bb10;

  $bb10:
    assume {:sourceloc "./res_send.c", 969, 8} true;
    call {:si_unique_call 213} $i19 := __builtinx_expect.i32.i32(0, 0);
    assume {:sourceloc "./res_send.c", 969, 8} true;
    $i20 := $eq.i32($i19, 0);
    assume {:sourceloc "./res_send.c", 969, 8} true;
    assume {:branchcond $i20} true;
    goto $bb12, $bb13;

  $bb11:
    assume !($i17 == 1);
    assume {:sourceloc "./res_send.c", 960, 7} true;
    call {:si_unique_call 214} $i18 := socket(10, 2050, 0);
    assume {:sourceloc "./res_send.c", 960, 7} true;
    $M.0 := $store.i32($M.0, $p1, $i18);
    assume {:sourceloc "./res_send.c", 968, 4} true;
    goto $bb10;

  $bb12:
    assume $i20 == 1;
    assume {:sourceloc "./res_send.c", 972, 8} true;
    $i23 := $load.i32($M.0, $p1);
    $i22 := $i23;
    goto $bb14;

  $bb13:
    assume !($i20 == 1);
    assume {:sourceloc "./res_send.c", 971, 7} true;
    call {:si_unique_call 215} $i21 := socket(10, 2, 0);
    assume {:sourceloc "./res_send.c", 971, 7} true;
    $M.0 := $store.i32($M.0, $p1, $i21);
    assume {:sourceloc "./res_send.c", 971, 7} true;
    $i22 := $i21;
    goto $bb14;

  $bb14:
    assume {:sourceloc "./res_send.c", 972, 8} true;
    assume {:sourceloc "./res_send.c", 972, 8} true;
    $i24 := $slt.i32($i22, 0);
    assume {:sourceloc "./res_send.c", 972, 8} true;
    $i25 := 28;
    assume {:branchcond $i24} true;
    goto $bb15, $bb16;

  $bb15:
    assume $i24 == 1;
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $i26 := $load.i32($M.0, errno);
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $i27 := $eq.i32($i26, 97);
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $i28 := $zext.i1.i32($i27);
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $i29 := $load.i32($M.0, $p12);
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $i30 := $shl.i32($i28, 8);
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $i31 := $and.i32($i29, $sub.i32(0, 257));
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $i32 := $or.i32($i30, $i31);
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $M.0 := $store.i32($M.0, $p12, $i32);
    assume {:sourceloc "./res_send.c", 973, 8} true;
    $i25 := 28;
    goto $bb17;

  $bb16:
    assume {:sourceloc "./res_send.c", 972, 8} true;
    assume !($i24 == 1);
    goto $bb17;

  $bb17:
    assume {:sourceloc "./res_send.c", 992, 7} true;
    $i43 := $load.i32($M.0, $p1);
    $i41, $i42 := $i43, $i25;
    goto $bb25;

  $bb18:
    assume $i34 == 1;
    assume {:sourceloc "./res_send.c", 976, 8} true;
    call {:si_unique_call 216} $i35 := __builtinx_expect.i32.i32(1, 1);
    assume {:sourceloc "./res_send.c", 976, 8} true;
    $i36 := $eq.i32($i35, 0);
    assume {:sourceloc "./res_send.c", 976, 8} true;
    assume {:branchcond $i36} true;
    goto $bb20, $bb22;

  $bb19:
    assume {:sourceloc "./res_send.c", 975, 14} true;
    assume !($i34 == 1);
    goto $bb17;

  $bb20:
    assume {:sourceloc "./res_send.c", 976, 8} true;
    assume $i36 == 1;
    goto $bb21;

  $bb21:
    assume {:sourceloc "./res_send.c", 987, 8} true;
    call {:si_unique_call 217} $i38 := __builtinx_expect.i32.i32(0, 0);
    assume {:sourceloc "./res_send.c", 987, 8} true;
    $i39 := $eq.i32($i38, 0);
    assume {:sourceloc "./res_send.c", 987, 8} true;
    $i25 := 16;
    assume {:branchcond $i39} true;
    goto $bb23, $bb24;

  $bb22:
    assume !($i36 == 1);
    assume {:sourceloc "./res_send.c", 978, 9} true;
    call {:si_unique_call 218} $i37 := socket(2, 2050, 0);
    assume {:sourceloc "./res_send.c", 978, 9} true;
    $M.0 := $store.i32($M.0, $p1, $i37);
    assume {:sourceloc "./res_send.c", 986, 4} true;
    goto $bb21;

  $bb23:
    assume {:sourceloc "./res_send.c", 987, 8} true;
    assume $i39 == 1;
    goto $bb17;

  $bb24:
    assume !($i39 == 1);
    assume {:sourceloc "./res_send.c", 989, 9} true;
    call {:si_unique_call 219} $i40 := socket(2, 2, 0);
    assume {:sourceloc "./res_send.c", 989, 9} true;
    $M.0 := $store.i32($M.0, $p1, $i40);
    assume {:sourceloc "./res_send.c", 989, 9} true;
    $i41, $i42 := $i40, 16;
    goto $bb25;

  $bb25:
    assume {:sourceloc "./res_send.c", 992, 7} true;
    assume {:sourceloc "./res_send.c", 992, 7} true;
    $i44 := $slt.i32($i41, 0);
    assume {:sourceloc "./res_send.c", 992, 7} true;
    assume {:branchcond $i44} true;
    goto $bb26, $bb27;

  $bb26:
    assume $i44 == 1;
    assume {:sourceloc "./res_send.c", 993, 4} true;
    $i45 := $load.i32($M.0, errno);
    assume {:sourceloc "./res_send.c", 993, 4} true;
    $M.10 := $store.i32($M.10, terrno, $i45);
    assume {:sourceloc "./res_send.c", 995, 4} true;
    $i4 := $sub.i32(0, 1);
    goto $bb3;

  $bb27:
    assume !($i44 == 1);
    assume {:sourceloc "./res_send.c", 1009, 7} true;
    call {:si_unique_call 220} $i46 := connect($i41, $p7, $i42);
    assume {:sourceloc "./res_send.c", 1009, 7} true;
    $i47 := $slt.i32($i46, 0);
    assume {:sourceloc "./res_send.c", 1009, 7} true;
    assume {:branchcond $i47} true;
    goto $bb28, $bb29;

  $bb28:
    assume $i47 == 1;
    assume {:sourceloc "./res_send.c", 1011, 4} true;
    call {:si_unique_call 221} __res_iclose(statp, 0);
    assume {:sourceloc "./res_send.c", 1012, 4} true;
    $i4 := 0;
    goto $bb3;

  $bb29:
    assume !($i47 == 1);
    assume {:sourceloc "./res_send.c", 1014, 7} true;
    call {:si_unique_call 222} $i48 := __builtinx_expect.i32.i32(0, 0);
    assume {:sourceloc "./res_send.c", 1014, 7} true;
    $i49 := $eq.i32($i48, 0);
    assume {:sourceloc "./res_send.c", 1014, 7} true;
    $i4 := 1;
    assume {:branchcond $i49} true;
    goto $bb30, $bb31;

  $bb30:
    assume {:sourceloc "./res_send.c", 1014, 7} true;
    assume $i49 == 1;
    goto $bb3;

  $bb31:
    assume !($i49 == 1);
    assume {:sourceloc "./res_send.c", 1016, 13} true;
    $i50 := $load.i32($M.0, $p1);
    assume {:sourceloc "./res_send.c", 1016, 13} true;
    call {:si_unique_call 223} $i51 := __fcntl.i32.i32($i50, 3);
    call {:si_unique_call 224} {:cexpr "fl"} boogie_si_record_i32($i51);
    assume {:sourceloc "./res_send.c", 1017, 9} true;
    $i52 := $eq.i32($i51, $sub.i32(0, 1));
    assume {:sourceloc "./res_send.c", 1017, 9} true;
    $i4 := 1;
    assume {:branchcond $i52} true;
    goto $bb32, $bb33;

  $bb32:
    assume {:sourceloc "./res_send.c", 1017, 9} true;
    assume $i52 == 1;
    goto $bb3;

  $bb33:
    assume !($i52 == 1);
    assume {:sourceloc "./res_send.c", 1018, 5} true;
    $i53 := $load.i32($M.0, $p1);
    assume {:sourceloc "./res_send.c", 1018, 5} true;
    $i54 := $or.i32($i51, 2048);
    assume {:sourceloc "./res_send.c", 1018, 5} true;
    call {:si_unique_call 225} $i55 := __fcntl.i32.i32.i32($i53, 4, $i54);
    assume {:sourceloc "./res_send.c", 1018, 5} true;
    $i4 := 1;
    goto $bb3;
}



const __SMACK_static_init: ref;

axiom __SMACK_static_init == $sub.ref(0bv64, 352bv64);

procedure __SMACK_static_init();
  modifies $M.7, $exn;



implementation __SMACK_static_init()
{

  $bb0:
    $M.7 := 0;
    call {:si_unique_call 226} {:cexpr "send_dg.have_sendmmsg"} boogie_si_record_i32(0);
    $exn := false;
    return;
}



const devirtbounce: ref;

axiom devirtbounce == $sub.ref(0bv64, 360bv64);

procedure devirtbounce(funcPtr: ref, arg: i16) returns ($r: i16);
  modifies $exn;



implementation devirtbounce(funcPtr: ref, arg: i16) returns ($r: i16)
{
  var $p0: ref;

  $bb0:
    $p0 := $bitcast.ref.ref(funcPtr);
    goto $bb1;

  $bb1:
    $exn := false;
    return;
}



procedure $memset.i8(M: [ref]i8, dst: ref, val: i8, len: ref, align: ref, isvolatile: bool) returns (M.ret: [ref]i8);



implementation {:ForceInline} $memset.i8(M: [ref]i8, dst: ref, val: i8, len: ref, align: ref, isvolatile: bool) returns (M.ret: [ref]i8)
{

  anon0:
    assume (forall x: ref :: $sle.ref.bool(dst, x) && $slt.ref.bool(x, $add.ref(dst, len)) ==> M.ret[x] == val);
    assume (forall x: ref :: $slt.ref.bool(x, dst) ==> M.ret[x] == M[x]);
    assume (forall x: ref :: $sle.ref.bool($add.ref(dst, len), x) ==> M.ret[x] == M[x]);
    return;
}



const $u0: i32;

procedure $initialize();
  modifies $M.7, $exn, $CurrAddr;



implementation $initialize()
{

  anon0:
    call {:si_unique_call 227} __SMACK_static_init();
    call {:si_unique_call 228} __SMACK_init_func_memory_model();
    return;
}


