var $M.0: [ref]bv8;

var $M.1: [ref]bv32;

var $M.2: [ref]bv32;

var $M.3: [ref]bv64;

var $M.4: [ref]bv64;

var $M.5: [ref]bv64;

var $M.6: [ref]bv64;

var $M.7: bv32;

var $M.8: [ref]bv8;

var $M.9: [ref]bv32;

var $M.10: [ref]ref;

var $M.11: [ref]bv32;

var $M.12: [ref]bv32;

var $M.13: [ref]bv64;

var $M.14: [ref]bv64;

var $M.15: [ref]bv64;

var $M.16: [ref]bv64;

var $M.17: [ref]ref;

var $CurrAddr: ref;

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

type float = bv32;

const $0: bv32;

axiom $0 == 0bv32;

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

axiom $GLOBALS_BOTTOM == $sub.ref(0bv64, 344bv64);

axiom $EXTERNS_BOTTOM == $sub.ref(0bv64, 32784bv64);

axiom $MALLOC_TOP == 2136997887bv64;

function {:builtin "bv2int"} $bv2int.64(i: bv64) : i64;

function {:builtin "(_ int2bv 64)"} $int2bv.64(i: i64) : bv64;

function {:inline} $load.bytes.ref(M: [ref]bv8, p: ref) : ref
{
  $i2p.bv64.ref($load.bytes.bv64(M, p))
}

function {:inline} $store.bytes.ref(M: [ref]bv8, p: ref, v: ref) : [ref]bv8
{
  $store.bytes.bv64(M, p, $p2i.ref.bv64(v))
}

function {:inline} $p2i.ref.bv8(p: ref) : bv8
{
  $trunc.bv64.bv8(p)
}

function {:inline} $i2p.bv8.ref(i: bv8) : ref
{
  $zext.bv8.bv64(i)
}

function {:inline} $p2i.ref.bv16(p: ref) : bv16
{
  $trunc.bv64.bv16(p)
}

function {:inline} $i2p.bv16.ref(i: bv16) : ref
{
  $zext.bv16.bv64(i)
}

function {:inline} $p2i.ref.bv32(p: ref) : bv32
{
  $trunc.bv64.bv32(p)
}

function {:inline} $i2p.bv32.ref(i: bv32) : ref
{
  $zext.bv32.bv64(i)
}

function {:inline} $p2i.ref.bv64(p: ref) : bv64
{
  p
}

function {:inline} $i2p.bv64.ref(i: bv64) : ref
{
  i
}

function {:inline} $eq.ref(p1: ref, p2: ref) : bv1
{
  (if $eq.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $eq.ref.bool(p1: ref, p2: ref) : bool
{
  $eq.bv64.bool(p1, p2)
}

function {:inline} $ne.ref(p1: ref, p2: ref) : bv1
{
  (if $ne.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $ne.ref.bool(p1: ref, p2: ref) : bool
{
  $ne.bv64.bool(p1, p2)
}

function {:inline} $ugt.ref(p1: ref, p2: ref) : bv1
{
  (if $ugt.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $ugt.ref.bool(p1: ref, p2: ref) : bool
{
  $ugt.bv64.bool(p1, p2)
}

function {:inline} $uge.ref(p1: ref, p2: ref) : bv1
{
  (if $uge.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $uge.ref.bool(p1: ref, p2: ref) : bool
{
  $uge.bv64.bool(p1, p2)
}

function {:inline} $ult.ref(p1: ref, p2: ref) : bv1
{
  (if $ult.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $ult.ref.bool(p1: ref, p2: ref) : bool
{
  $ult.bv64.bool(p1, p2)
}

function {:inline} $ule.ref(p1: ref, p2: ref) : bv1
{
  (if $ule.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $ule.ref.bool(p1: ref, p2: ref) : bool
{
  $ule.bv64.bool(p1, p2)
}

function {:inline} $sgt.ref(p1: ref, p2: ref) : bv1
{
  (if $sgt.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $sgt.ref.bool(p1: ref, p2: ref) : bool
{
  $sgt.bv64.bool(p1, p2)
}

function {:inline} $sge.ref(p1: ref, p2: ref) : bv1
{
  (if $sge.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $sge.ref.bool(p1: ref, p2: ref) : bool
{
  $sge.bv64.bool(p1, p2)
}

function {:inline} $slt.ref(p1: ref, p2: ref) : bv1
{
  (if $slt.bv64.bool(p1, p2) then 1bv1 else 0bv1)
}

function {:inline} $slt.ref.bool(p1: ref, p2: ref) : bool
{
  $slt.bv64.bool(p1, p2)
}

function {:inline} $sle.ref(p1: ref, p2: ref) : bv1
{
  (if $sle.bv64.bool(p1, p2) then 1bv1 else 0bv1)
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

const llvm.dbg.declare: ref;

axiom llvm.dbg.declare == $sub.ref(0bv64, 56bv64);

procedure llvm.dbg.declare($p0: ref, $p1: ref);



const __SMACK_dummy: ref;

axiom __SMACK_dummy == $sub.ref(0bv64, 64bv64);

procedure __SMACK_dummy(v: bv32);



const __SMACK_code: ref;

axiom __SMACK_code == $sub.ref(0bv64, 72bv64);

procedure __SMACK_code.ref($p0: ref);



procedure __SMACK_code.ref.bv32($p0: ref, p.1: bv32);



const __VERIFIER_assert: ref;

axiom __VERIFIER_assert == $sub.ref(0bv64, 80bv64);

procedure __VERIFIER_assert(x: bv32);
  free requires assertsPassed;
  modifies assertsPassed;



implementation {:ForceInline} __VERIFIER_assert(x: bv32)
{

  $bb0:
    call {:si_unique_call 0} {:cexpr "x"} boogie_si_record_bv32(x);
    call {:si_unique_call 1} {:cexpr "v"} boogie_si_record_bv32(x);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    goto assert_rewrite_dummy_block_0, assert_rewrite_dummy_block_1;

  assert_rewrite_dummy_block_0:
    assume {:corral_assert_pt} false;
    assume true;
    goto SeqInstr_1, SeqInstr_2;

  SeqInstr_1:
    assume !assertsPassed;
    return;

  SeqInstr_2:
    assume assertsPassed;
    goto SeqInstr_3;

  SeqInstr_3:
    goto assert_rewrite_dummy_block_2;

  assert_rewrite_dummy_block_1:
    assume x != $0;
    goto assert_rewrite_dummy_block_2;

  assert_rewrite_dummy_block_2:
    goto corral_source_split_3;

  corral_source_split_3:
    return;
}



const malloc: ref;

axiom malloc == $sub.ref(0bv64, 88bv64);

procedure malloc($i0: bv64) returns ($r: ref);
  free requires assertsPassed;
  modifies $CurrAddr;



implementation malloc($i0: bv64) returns ($r: ref)
{

  anon0:
    call {:si_unique_call 2} $r := $alloc($i0);
    return;
}



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



procedure $alloc(n: ref) returns (p: ref);
  free requires assertsPassed;
  modifies $CurrAddr;



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
    return;
}



procedure $free(p: ref);



function $extractvalue(p: int, i: int) : int;

const __SMACK_top_decl: ref;

axiom __SMACK_top_decl == $sub.ref(0bv64, 104bv64);

procedure __SMACK_top_decl.ref($p0: ref);



const __SMACK_init_func_memory_model: ref;

axiom __SMACK_init_func_memory_model == $sub.ref(0bv64, 112bv64);

procedure __SMACK_init_func_memory_model();
  free requires assertsPassed;
  modifies $CurrAddr;



implementation __SMACK_init_func_memory_model()
{

  $bb0:
    $CurrAddr := $1024.ref;
    goto corral_source_split_5;

  corral_source_split_5:
    return;
}



const res_ourserver_p: ref;

axiom res_ourserver_p == $sub.ref(0bv64, 120bv64);

procedure res_ourserver_p(statp: ref, inp: ref) returns ($r: bv32);
  free requires assertsPassed;



implementation res_ourserver_p(statp: ref, inp: ref) returns ($r: bv32)
{
  var $p0: ref;
  var $i1: bv16;
  var $i2: bv32;
  var $i3: bv1;
  var $p4: ref;
  var $p5: ref;
  var $i6: bv16;
  var $p8: ref;
  var $i9: bv32;
  var $i10: bv32;
  var $i11: bv1;
  var $i12: bv64;
  var $p13: ref;
  var $p14: ref;
  var $p16: ref;
  var $p17: ref;
  var $p18: ref;
  var $i19: bv1;
  var $p20: ref;
  var $i21: bv16;
  var $i22: bv32;
  var $i23: bv1;
  var $p24: ref;
  var $i25: bv16;
  var $i26: bv32;
  var $i27: bv32;
  var $i28: bv1;
  var $p30: ref;
  var $i31: bv32;
  var $i32: bv1;
  var $p34: ref;
  var $i35: bv32;
  var $i36: bv1;
  var $i38: bv32;
  var $p39: ref;
  var $i40: bv16;
  var $i41: bv32;
  var $i42: bv1;
  var $i43: bv32;
  var $i44: bv1;
  var $i45: bv64;
  var $p46: ref;
  var $p47: ref;
  var $p49: ref;
  var $p50: ref;
  var $i51: bv1;
  var $p52: ref;
  var $i53: bv16;
  var $i54: bv32;
  var $i55: bv1;
  var $p56: ref;
  var $i57: bv16;
  var $i58: bv32;
  var $p59: ref;
  var $i60: bv16;
  var $i61: bv32;
  var $i62: bv1;
  var $p63: ref;
  var $p64: ref;
  var $i65: bv32;
  var $i66: bv1;
  var $p67: ref;
  var $p68: ref;
  var $p69: ref;
  var $p70: ref;
  var $i71: bv32;
  var $i72: bv1;
  var $i73: bv32;
  var $i37: bv32;

  $bb0:
    call {:si_unique_call 3} {:cexpr "statp"} boogie_si_record_ref(statp);
    call {:si_unique_call 4} {:cexpr "inp"} boogie_si_record_ref(inp);
    goto corral_source_split_7;

  corral_source_split_7:
    $p0 := inp;
    goto corral_source_split_8;

  corral_source_split_8:
    $i1 := $load.bytes.bv16($M.0, $p0);
    goto corral_source_split_9;

  corral_source_split_9:
    $i2 := $zext.bv16.bv32($i1);
    goto corral_source_split_10;

  corral_source_split_10:
    $i3 := $eq.bv32($i2, 2bv32);
    goto corral_source_split_11;

  corral_source_split_11:
    assume {:branchcond $i3} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i3 == 1bv1;
    goto corral_source_split_13;

  corral_source_split_13:
    $p4 := $bitcast.ref.ref(inp);
    call {:si_unique_call 5} {:cexpr "in4p"} boogie_si_record_ref($p4);
    goto corral_source_split_14;

  corral_source_split_14:
    $p5 := $add.ref($p4, 2bv64);
    goto corral_source_split_15;

  corral_source_split_15:
    $i6 := $load.bytes.bv16($M.0, $p5);
    call {:si_unique_call 6} {:cexpr "port"} boogie_si_record_bv16($i6);
    goto corral_source_split_16;

  corral_source_split_16:
    $p8 := $add.ref($p4, 4bv64);
    goto corral_source_split_17;

  corral_source_split_17:
    $i9 := $load.bytes.bv32($M.0, $p8);
    call {:si_unique_call 7} {:cexpr "addr"} boogie_si_record_bv32($i9);
    call {:si_unique_call 8} {:cexpr "ns"} boogie_si_record_bv32(0bv32);
    goto corral_source_split_18;

  corral_source_split_18:
    $i10 := 0bv32;
    goto $bb3;

  $bb2:
    assume !($i3 == 1bv1);
    goto corral_source_split_20;

  corral_source_split_20:
    $p39 := inp;
    goto corral_source_split_21;

  corral_source_split_21:
    $i40 := $load.bytes.bv16($M.0, $p39);
    goto corral_source_split_22;

  corral_source_split_22:
    $i41 := $zext.bv16.bv32($i40);
    goto corral_source_split_23;

  corral_source_split_23:
    $i42 := $eq.bv32($i41, 10bv32);
    goto corral_source_split_24;

  corral_source_split_24:
    assume {:branchcond $i42} true;
    goto $bb20, $bb21;

  $bb3:
    $i11 := $slt.bv32($i10, 3bv32);
    goto corral_source_split_26;

  corral_source_split_26:
    assume {:branchcond $i11} true;
    goto $bb4, $bb5;

  $bb4:
    assume $i11 == 1bv1;
    goto corral_source_split_28;

  corral_source_split_28:
    $i12 := $sext.bv32.bv64($i10);
    goto corral_source_split_29;

  corral_source_split_29:
    $p13 := $add.ref(statp, 512bv64);
    goto corral_source_split_30;

  corral_source_split_30:
    $p14 := $bitcast.ref.ref($p13);
    goto corral_source_split_31;

  corral_source_split_31:
    $p16 := $add.ref($add.ref($p14, 24bv64), $mul.ref($i12, 8bv64));
    goto corral_source_split_32;

  corral_source_split_32:
    $p17 := $load.bytes.ref($M.0, $p16);
    goto corral_source_split_33;

  corral_source_split_33:
    $p18 := $bitcast.ref.ref($p17);
    call {:si_unique_call 9} {:cexpr "srv"} boogie_si_record_ref($p18);
    goto corral_source_split_34;

  corral_source_split_34:
    $i19 := $ne.ref($p18, $0.ref);
    goto corral_source_split_35;

  corral_source_split_35:
    assume {:branchcond $i19} true;
    goto $bb7, $bb8;

  $bb5:
    assume !($i11 == 1bv1);
    goto $bb6;

  $bb6:
    $i37 := 0bv32;
    goto $bb19;

  $bb7:
    assume $i19 == 1bv1;
    goto corral_source_split_37;

  corral_source_split_37:
    $p20 := $p18;
    goto corral_source_split_38;

  corral_source_split_38:
    $i21 := $load.bytes.bv16($M.0, $p20);
    goto corral_source_split_39;

  corral_source_split_39:
    $i22 := $zext.bv16.bv32($i21);
    goto corral_source_split_40;

  corral_source_split_40:
    $i23 := $eq.bv32($i22, 2bv32);
    goto corral_source_split_41;

  corral_source_split_41:
    assume {:branchcond $i23} true;
    goto $bb10, $bb11;

  $bb8:
    assume !($i19 == 1bv1);
    goto $bb9;

  $bb9:
    $i38 := $add.bv32($i10, 1bv32);
    call {:si_unique_call 10} {:cexpr "ns"} boogie_si_record_bv32($i38);
    goto corral_source_split_43;

  corral_source_split_43:
    $i10 := $i38;
    goto $bb3;

  $bb10:
    assume $i23 == 1bv1;
    goto corral_source_split_45;

  corral_source_split_45:
    $p24 := $add.ref($p18, 2bv64);
    goto corral_source_split_46;

  corral_source_split_46:
    $i25 := $load.bytes.bv16($M.0, $p24);
    goto corral_source_split_47;

  corral_source_split_47:
    $i26 := $zext.bv16.bv32($i25);
    goto corral_source_split_48;

  corral_source_split_48:
    $i27 := $zext.bv16.bv32($i6);
    goto corral_source_split_49;

  corral_source_split_49:
    $i28 := $eq.bv32($i26, $i27);
    goto corral_source_split_50;

  corral_source_split_50:
    assume {:branchcond $i28} true;
    goto $bb12, $bb13;

  $bb11:
    assume !($i23 == 1bv1);
    goto $bb9;

  $bb12:
    assume $i28 == 1bv1;
    goto corral_source_split_52;

  corral_source_split_52:
    $p30 := $add.ref($p18, 4bv64);
    goto corral_source_split_53;

  corral_source_split_53:
    $i31 := $load.bytes.bv32($M.0, $p30);
    goto corral_source_split_54;

  corral_source_split_54:
    $i32 := $eq.bv32($i31, 0bv32);
    goto corral_source_split_55;

  corral_source_split_55:
    assume {:branchcond $i32} true;
    goto $bb14, $bb16;

  $bb13:
    assume !($i28 == 1bv1);
    goto $bb9;

  $bb14:
    assume $i32 == 1bv1;
    goto $bb15;

  $bb15:
    $i37 := 1bv32;
    goto $bb19;

  $bb16:
    assume !($i32 == 1bv1);
    goto corral_source_split_57;

  corral_source_split_57:
    $p34 := $add.ref($p18, 4bv64);
    goto corral_source_split_58;

  corral_source_split_58:
    $i35 := $load.bytes.bv32($M.0, $p34);
    goto corral_source_split_59;

  corral_source_split_59:
    $i36 := $eq.bv32($i35, $i9);
    goto corral_source_split_60;

  corral_source_split_60:
    assume {:branchcond $i36} true;
    goto $bb17, $bb18;

  $bb17:
    assume $i36 == 1bv1;
    goto $bb15;

  $bb18:
    assume !($i36 == 1bv1);
    goto $bb9;

  $bb19:
    $r := $i37;
    return;

  $bb20:
    assume $i42 == 1bv1;
    call {:si_unique_call 11} {:cexpr "ns"} boogie_si_record_bv32(0bv32);
    goto corral_source_split_62;

  corral_source_split_62:
    $i43 := 0bv32;
    goto $bb22;

  $bb21:
    assume !($i42 == 1bv1);
    goto $bb6;

  $bb22:
    $i44 := $slt.bv32($i43, 3bv32);
    goto corral_source_split_64;

  corral_source_split_64:
    assume {:branchcond $i44} true;
    goto $bb23, $bb24;

  $bb23:
    assume $i44 == 1bv1;
    goto corral_source_split_66;

  corral_source_split_66:
    $i45 := $sext.bv32.bv64($i43);
    goto corral_source_split_67;

  corral_source_split_67:
    $p46 := $add.ref(statp, 512bv64);
    goto corral_source_split_68;

  corral_source_split_68:
    $p47 := $bitcast.ref.ref($p46);
    goto corral_source_split_69;

  corral_source_split_69:
    $p49 := $add.ref($add.ref($p47, 24bv64), $mul.ref($i45, 8bv64));
    goto corral_source_split_70;

  corral_source_split_70:
    $p50 := $load.bytes.ref($M.0, $p49);
    call {:si_unique_call 12} {:cexpr "srv"} boogie_si_record_ref($p50);
    goto corral_source_split_71;

  corral_source_split_71:
    $i51 := $ne.ref($p50, $0.ref);
    goto corral_source_split_72;

  corral_source_split_72:
    assume {:branchcond $i51} true;
    goto $bb25, $bb26;

  $bb24:
    assume !($i44 == 1bv1);
    goto $bb6;

  $bb25:
    assume $i51 == 1bv1;
    goto corral_source_split_74;

  corral_source_split_74:
    $p52 := $p50;
    goto corral_source_split_75;

  corral_source_split_75:
    $i53 := $load.bytes.bv16($M.0, $p52);
    goto corral_source_split_76;

  corral_source_split_76:
    $i54 := $zext.bv16.bv32($i53);
    goto corral_source_split_77;

  corral_source_split_77:
    $i55 := $eq.bv32($i54, 10bv32);
    goto corral_source_split_78;

  corral_source_split_78:
    assume {:branchcond $i55} true;
    goto $bb28, $bb29;

  $bb26:
    assume !($i51 == 1bv1);
    goto $bb27;

  $bb27:
    $i73 := $add.bv32($i43, 1bv32);
    call {:si_unique_call 13} {:cexpr "ns"} boogie_si_record_bv32($i73);
    goto corral_source_split_80;

  corral_source_split_80:
    $i43 := $i73;
    goto $bb22;

  $bb28:
    assume $i55 == 1bv1;
    goto corral_source_split_82;

  corral_source_split_82:
    $p56 := $add.ref($p50, 2bv64);
    goto corral_source_split_83;

  corral_source_split_83:
    $i57 := $load.bytes.bv16($M.0, $p56);
    goto corral_source_split_84;

  corral_source_split_84:
    $i58 := $zext.bv16.bv32($i57);
    goto corral_source_split_85;

  corral_source_split_85:
    $p59 := $add.ref(inp, 2bv64);
    goto corral_source_split_86;

  corral_source_split_86:
    $i60 := $load.bytes.bv16($M.0, $p59);
    goto corral_source_split_87;

  corral_source_split_87:
    $i61 := $zext.bv16.bv32($i60);
    goto corral_source_split_88;

  corral_source_split_88:
    $i62 := $eq.bv32($i58, $i61);
    goto corral_source_split_89;

  corral_source_split_89:
    assume {:branchcond $i62} true;
    goto $bb30, $bb31;

  $bb29:
    assume !($i55 == 1bv1);
    goto $bb27;

  $bb30:
    assume $i62 == 1bv1;
    goto corral_source_split_91;

  corral_source_split_91:
    $p63 := $add.ref($p50, 8bv64);
    goto corral_source_split_92;

  corral_source_split_92:
    $p64 := $bitcast.ref.ref($p63);
    goto corral_source_split_93;

  corral_source_split_93:
    call {:si_unique_call 14} $i65 := memcmp($p64, $bitcast.ref.ref(in6addr_any), 16bv64);
    goto corral_source_split_94;

  corral_source_split_94:
    $i66 := $ne.bv32($i65, 0bv32);
    goto corral_source_split_95;

  corral_source_split_95:
    assume {:branchcond $i66} true;
    goto $bb32, $bb33;

  $bb31:
    assume !($i62 == 1bv1);
    goto $bb27;

  $bb32:
    assume $i66 == 1bv1;
    goto corral_source_split_97;

  corral_source_split_97:
    $p67 := $add.ref($p50, 8bv64);
    goto corral_source_split_98;

  corral_source_split_98:
    $p68 := $bitcast.ref.ref($p67);
    goto corral_source_split_99;

  corral_source_split_99:
    $p69 := $add.ref(inp, 8bv64);
    goto corral_source_split_100;

  corral_source_split_100:
    $p70 := $bitcast.ref.ref($p69);
    goto corral_source_split_101;

  corral_source_split_101:
    call {:si_unique_call 15} $i71 := memcmp($p68, $p70, 16bv64);
    goto corral_source_split_102;

  corral_source_split_102:
    $i72 := $ne.bv32($i71, 0bv32);
    goto corral_source_split_103;

  corral_source_split_103:
    assume {:branchcond $i72} true;
    goto $bb35, $bb36;

  $bb33:
    assume !($i66 == 1bv1);
    goto $bb34;

  $bb34:
    $i37 := 1bv32;
    goto $bb19;

  $bb35:
    assume $i72 == 1bv1;
    goto $bb27;

  $bb36:
    assume !($i72 == 1bv1);
    goto $bb34;
}



const memcmp: ref;

axiom memcmp == $sub.ref(0bv64, 128bv64);

procedure memcmp($p0: ref, $p1: ref, $i2: bv64) returns ($r: bv32);



const __res_nameinquery: ref;

axiom __res_nameinquery == $sub.ref(0bv64, 136bv64);

procedure __res_nameinquery(name: ref, type_: bv32, class: bv32, buf: ref, eom: ref) returns ($r: bv32);
  free requires assertsPassed;
  modifies $CurrAddr;



implementation __res_nameinquery(name: ref, type_: bv32, class: bv32, buf: ref, eom: ref) returns ($r: bv32)
{
  var $p0: ref;
  var $p1: ref;
  var $p2: ref;
  var $p3: ref;
  var $i4: bv96;
  var $i5: bv96;
  var $i6: bv96;
  var $i7: bv32;
  var $i8: bv16;
  var $i9: bv16;
  var $i10: bv32;
  var $p11: ref;
  var $i12: bv32;
  var $i13: bv32;
  var $i14: bv1;
  var $p15: ref;
  var $i16: bv32;
  var $i17: bv1;
  var $i19: bv64;
  var $p20: ref;
  var $i21: bv64;
  var $p22: ref;
  var $i23: bv1;
  var $p24: ref;
  var $i25: bv8;
  var $i26: bv16;
  var $i27: bv32;
  var $i28: bv32;
  var $i29: bv64;
  var $p30: ref;
  var $i31: bv8;
  var $i32: bv16;
  var $i33: bv32;
  var $i34: bv32;
  var $i35: bv64;
  var $p36: ref;
  var $p37: ref;
  var $i38: bv8;
  var $i39: bv16;
  var $i40: bv32;
  var $i41: bv32;
  var $i42: bv64;
  var $p43: ref;
  var $i44: bv8;
  var $i45: bv16;
  var $i46: bv32;
  var $i47: bv32;
  var $i48: bv64;
  var $p49: ref;
  var $i50: bv1;
  var $i51: bv1;
  var $p52: ref;
  var $i53: bv32;
  var $i54: bv1;
  var $i18: bv32;

  $bb0:
    call {:si_unique_call 16} $p0 := $alloc($mul.ref(1026bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 17} {:cexpr "name"} boogie_si_record_ref(name);
    call {:si_unique_call 18} {:cexpr "type"} boogie_si_record_bv32(type_);
    call {:si_unique_call 19} {:cexpr "class"} boogie_si_record_bv32(class);
    call {:si_unique_call 20} {:cexpr "buf"} boogie_si_record_ref(buf);
    call {:si_unique_call 21} {:cexpr "eom"} boogie_si_record_ref(eom);
    goto corral_source_split_105;

  corral_source_split_105:
    $p1 := $add.ref(buf, 12bv64);
    call {:si_unique_call 22} {:cexpr "cp"} boogie_si_record_ref($p1);
    goto corral_source_split_106;

  corral_source_split_106:
    $p2 := $bitcast.ref.ref(buf);
    goto corral_source_split_107;

  corral_source_split_107:
    $p3 := $bitcast.ref.ref($p2);
    goto corral_source_split_108;

  corral_source_split_108:
    $i4 := $load.bytes.bv96($M.0, $p3);
    goto corral_source_split_109;

  corral_source_split_109:
    $i5 := $lshr.bv96($i4, 32bv96);
    goto corral_source_split_110;

  corral_source_split_110:
    $i6 := $and.bv96($i5, 65535bv96);
    goto corral_source_split_111;

  corral_source_split_111:
    $i7 := $trunc.bv96.bv32($i6);
    goto corral_source_split_112;

  corral_source_split_112:
    $i8 := $trunc.bv32.bv16($i7);
    goto corral_source_split_113;

  corral_source_split_113:
    call {:si_unique_call 23} $i9 := ntohs($i8);
    goto corral_source_split_114;

  corral_source_split_114:
    $i10 := $zext.bv16.bv32($i9);
    call {:si_unique_call 24} {:cexpr "qdcount"} boogie_si_record_bv32($i10);
    goto corral_source_split_115;

  corral_source_split_115:
    $p11, $i12 := $p1, $i10;
    goto $bb1;

  $bb1:
    $i13 := $add.bv32($i12, $sub.bv32(0bv32, 1bv32));
    call {:si_unique_call 25} {:cexpr "qdcount"} boogie_si_record_bv32($i13);
    goto corral_source_split_117;

  corral_source_split_117:
    $i14 := $sgt.bv32($i12, 0bv32);
    goto corral_source_split_118;

  corral_source_split_118:
    assume {:branchcond $i14} true;
    goto $bb2, $bb3;

  $bb2:
    assume $i14 == 1bv1;
    goto corral_source_split_120;

  corral_source_split_120:
    $p15 := $p0;
    goto corral_source_split_121;

  corral_source_split_121:
    call {:si_unique_call 26} $i16 := __dn_expand(buf, eom, $p11, $p15, 1026bv32);
    call {:si_unique_call 27} {:cexpr "n"} boogie_si_record_bv32($i16);
    goto corral_source_split_122;

  corral_source_split_122:
    $i17 := $slt.bv32($i16, 0bv32);
    goto corral_source_split_123;

  corral_source_split_123:
    assume {:branchcond $i17} true;
    goto $bb4, $bb5;

  $bb3:
    assume !($i14 == 1bv1);
    goto corral_source_split_125;

  corral_source_split_125:
    $i18 := 0bv32;
    goto $bb6;

  $bb4:
    assume $i17 == 1bv1;
    goto corral_source_split_127;

  corral_source_split_127:
    $i18 := $sub.bv32(0bv32, 1bv32);
    goto $bb6;

  $bb5:
    assume !($i17 == 1bv1);
    goto corral_source_split_129;

  corral_source_split_129:
    $i19 := $sext.bv32.bv64($i16);
    goto corral_source_split_130;

  corral_source_split_130:
    $p20 := $add.ref($p11, $mul.ref($i19, 1bv64));
    call {:si_unique_call 28} {:cexpr "cp"} boogie_si_record_ref($p20);
    $i21 := $add.bv64($i19, 4bv64);
    goto corral_source_split_131;

  corral_source_split_131:
    $p22 := $add.ref($p11, $mul.ref($i21, 1bv64));
    goto corral_source_split_132;

  corral_source_split_132:
    $i23 := $ugt.ref($p22, eom);
    goto corral_source_split_133;

  corral_source_split_133:
    assume {:branchcond $i23} true;
    goto $bb7, $bb8;

  $bb6:
    $r := $i18;
    return;

  $bb7:
    assume $i23 == 1bv1;
    goto corral_source_split_135;

  corral_source_split_135:
    $i18 := $sub.bv32(0bv32, 1bv32);
    goto $bb6;

  $bb8:
    assume !($i23 == 1bv1);
    call {:si_unique_call 29} {:cexpr "t_cp"} boogie_si_record_ref($p20);
    goto corral_source_split_137;

  corral_source_split_137:
    $p24 := $add.ref($p11, $mul.ref($i19, 1bv64));
    goto corral_source_split_138;

  corral_source_split_138:
    $i25 := $load.bytes.bv8($M.0, $p24);
    goto corral_source_split_139;

  corral_source_split_139:
    $i26 := $zext.bv8.bv16($i25);
    goto corral_source_split_140;

  corral_source_split_140:
    $i27 := $zext.bv16.bv32($i26);
    goto corral_source_split_141;

  corral_source_split_141:
    $i28 := $shl.bv32($i27, 8bv32);
    $i29 := $add.bv64($i19, 1bv64);
    goto corral_source_split_142;

  corral_source_split_142:
    $p30 := $add.ref($p11, $mul.ref($i29, 1bv64));
    goto corral_source_split_143;

  corral_source_split_143:
    $i31 := $load.bytes.bv8($M.0, $p30);
    goto corral_source_split_144;

  corral_source_split_144:
    $i32 := $zext.bv8.bv16($i31);
    goto corral_source_split_145;

  corral_source_split_145:
    $i33 := $zext.bv16.bv32($i32);
    goto corral_source_split_146;

  corral_source_split_146:
    $i34 := $or.bv32($i28, $i33);
    call {:si_unique_call 30} {:cexpr "ttype"} boogie_si_record_bv32($i34);
    $i35 := $add.bv64($i19, 2bv64);
    goto corral_source_split_147;

  corral_source_split_147:
    $p36 := $add.ref($p11, $mul.ref($i35, 1bv64));
    call {:si_unique_call 31} {:cexpr "cp"} boogie_si_record_ref($p36);
    call {:si_unique_call 32} {:cexpr "t_cp"} boogie_si_record_ref($p36);
    goto corral_source_split_148;

  corral_source_split_148:
    $p37 := $add.ref($p11, $mul.ref($i35, 1bv64));
    goto corral_source_split_149;

  corral_source_split_149:
    $i38 := $load.bytes.bv8($M.0, $p37);
    goto corral_source_split_150;

  corral_source_split_150:
    $i39 := $zext.bv8.bv16($i38);
    goto corral_source_split_151;

  corral_source_split_151:
    $i40 := $zext.bv16.bv32($i39);
    goto corral_source_split_152;

  corral_source_split_152:
    $i41 := $shl.bv32($i40, 8bv32);
    $i42 := $add.bv64($i35, 1bv64);
    goto corral_source_split_153;

  corral_source_split_153:
    $p43 := $add.ref($p11, $mul.ref($i42, 1bv64));
    goto corral_source_split_154;

  corral_source_split_154:
    $i44 := $load.bytes.bv8($M.0, $p43);
    goto corral_source_split_155;

  corral_source_split_155:
    $i45 := $zext.bv8.bv16($i44);
    goto corral_source_split_156;

  corral_source_split_156:
    $i46 := $zext.bv16.bv32($i45);
    goto corral_source_split_157;

  corral_source_split_157:
    $i47 := $or.bv32($i41, $i46);
    call {:si_unique_call 33} {:cexpr "tclass"} boogie_si_record_bv32($i47);
    $i48 := $add.bv64($i35, 2bv64);
    goto corral_source_split_158;

  corral_source_split_158:
    $p49 := $add.ref($p11, $mul.ref($i48, 1bv64));
    call {:si_unique_call 34} {:cexpr "cp"} boogie_si_record_ref($p49);
    goto corral_source_split_159;

  corral_source_split_159:
    $i50 := $eq.bv32($i34, type_);
    goto corral_source_split_160;

  corral_source_split_160:
    $p11, $i12 := $p49, $i13;
    assume {:branchcond $i50} true;
    goto $bb9, $bb10;

  $bb9:
    assume $i50 == 1bv1;
    goto corral_source_split_162;

  corral_source_split_162:
    $i51 := $eq.bv32($i47, class);
    goto corral_source_split_163;

  corral_source_split_163:
    $p11, $i12 := $p49, $i13;
    assume {:branchcond $i51} true;
    goto $bb11, $bb12;

  $bb10:
    assume !($i50 == 1bv1);
    goto $bb1;

  $bb11:
    assume $i51 == 1bv1;
    goto corral_source_split_165;

  corral_source_split_165:
    $p52 := $p0;
    goto corral_source_split_166;

  corral_source_split_166:
    call {:si_unique_call 35} $i53 := ns_samename($p52, name);
    goto corral_source_split_167;

  corral_source_split_167:
    $i54 := $eq.bv32($i53, 1bv32);
    goto corral_source_split_168;

  corral_source_split_168:
    $p11, $i12 := $p49, $i13;
    assume {:branchcond $i54} true;
    goto $bb13, $bb14;

  $bb12:
    assume !($i51 == 1bv1);
    goto $bb1;

  $bb13:
    assume $i54 == 1bv1;
    goto corral_source_split_170;

  corral_source_split_170:
    $i18 := 1bv32;
    goto $bb6;

  $bb14:
    assume !($i54 == 1bv1);
    goto $bb1;
}



const ntohs: ref;

axiom ntohs == $sub.ref(0bv64, 144bv64);

procedure ntohs($i0: bv16) returns ($r: bv16);



const __dn_expand: ref;

axiom __dn_expand == $sub.ref(0bv64, 152bv64);

procedure __dn_expand($p0: ref, $p1: ref, $p2: ref, $p3: ref, $i4: bv32) returns ($r: bv32);



const ns_samename: ref;

axiom ns_samename == $sub.ref(0bv64, 160bv64);

procedure ns_samename($p0: ref, $p1: ref) returns ($r: bv32);



const __res_queriesmatch: ref;

axiom __res_queriesmatch == $sub.ref(0bv64, 168bv64);

procedure __res_queriesmatch(buf1: ref, eom1: ref, buf2: ref, eom2: ref) returns ($r: bv32);
  free requires assertsPassed;
  modifies $CurrAddr;



implementation __res_queriesmatch(buf1: ref, eom1: ref, buf2: ref, eom2: ref) returns ($r: bv32)
{
  var $p0: ref;
  var $p1: ref;
  var $i2: bv1;
  var $p3: ref;
  var $i4: bv1;
  var $p6: ref;
  var $p7: ref;
  var $i8: bv96;
  var $i9: bv96;
  var $i10: bv96;
  var $i11: bv32;
  var $i12: bv1;
  var $p13: ref;
  var $p14: ref;
  var $i15: bv96;
  var $i16: bv96;
  var $i17: bv96;
  var $i18: bv32;
  var $i19: bv1;
  var $p20: ref;
  var $p21: ref;
  var $i22: bv96;
  var $i23: bv96;
  var $i24: bv96;
  var $i25: bv32;
  var $p26: ref;
  var $p27: ref;
  var $i28: bv96;
  var $i29: bv96;
  var $i30: bv96;
  var $i31: bv32;
  var $i32: bv1;
  var $i33: bv16;
  var $i34: bv16;
  var $i35: bv32;
  var $p36: ref;
  var $i37: bv32;
  var $p38: ref;
  var $i39: bv32;
  var $i40: bv1;
  var $p41: ref;
  var $i42: bv32;
  var $i43: bv1;
  var $i44: bv64;
  var $p45: ref;
  var $i46: bv64;
  var $p47: ref;
  var $i48: bv1;
  var $p49: ref;
  var $i50: bv8;
  var $i51: bv16;
  var $i52: bv32;
  var $i53: bv32;
  var $i54: bv64;
  var $p55: ref;
  var $i56: bv8;
  var $i57: bv16;
  var $i58: bv32;
  var $i59: bv32;
  var $i60: bv64;
  var $p61: ref;
  var $p62: ref;
  var $i63: bv8;
  var $i64: bv16;
  var $i65: bv32;
  var $i66: bv32;
  var $i67: bv64;
  var $p68: ref;
  var $i69: bv8;
  var $i70: bv16;
  var $i71: bv32;
  var $i72: bv32;
  var $i73: bv64;
  var $p74: ref;
  var $p75: ref;
  var $i76: bv32;
  var $i77: bv1;
  var $i5: bv32;

  $bb0:
    call {:si_unique_call 36} $p0 := $alloc($mul.ref(1026bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 37} {:cexpr "buf1"} boogie_si_record_ref(buf1);
    call {:si_unique_call 38} {:cexpr "eom1"} boogie_si_record_ref(eom1);
    call {:si_unique_call 39} {:cexpr "buf2"} boogie_si_record_ref(buf2);
    call {:si_unique_call 40} {:cexpr "eom2"} boogie_si_record_ref(eom2);
    goto corral_source_split_172;

  corral_source_split_172:
    $p1 := $add.ref(buf1, 12bv64);
    goto corral_source_split_173;

  corral_source_split_173:
    $i2 := $ugt.ref($p1, eom1);
    goto corral_source_split_174;

  corral_source_split_174:
    assume {:branchcond $i2} true;
    goto $bb1, $bb3;

  $bb1:
    assume $i2 == 1bv1;
    goto $bb2;

  $bb2:
    $i5 := $sub.bv32(0bv32, 1bv32);
    goto $bb6;

  $bb3:
    assume !($i2 == 1bv1);
    goto corral_source_split_176;

  corral_source_split_176:
    $p3 := $add.ref(buf2, 12bv64);
    goto corral_source_split_177;

  corral_source_split_177:
    $i4 := $ugt.ref($p3, eom2);
    goto corral_source_split_178;

  corral_source_split_178:
    assume {:branchcond $i4} true;
    goto $bb4, $bb5;

  $bb4:
    assume $i4 == 1bv1;
    goto $bb2;

  $bb5:
    assume !($i4 == 1bv1);
    goto corral_source_split_180;

  corral_source_split_180:
    $p6 := $bitcast.ref.ref(buf1);
    goto corral_source_split_181;

  corral_source_split_181:
    $p7 := $bitcast.ref.ref($p6);
    goto corral_source_split_182;

  corral_source_split_182:
    $i8 := $load.bytes.bv96($M.0, $p7);
    goto corral_source_split_183;

  corral_source_split_183:
    $i9 := $lshr.bv96($i8, 19bv96);
    goto corral_source_split_184;

  corral_source_split_184:
    $i10 := $and.bv96($i9, 15bv96);
    goto corral_source_split_185;

  corral_source_split_185:
    $i11 := $trunc.bv96.bv32($i10);
    goto corral_source_split_186;

  corral_source_split_186:
    $i12 := $eq.bv32($i11, 5bv32);
    goto corral_source_split_187;

  corral_source_split_187:
    assume {:branchcond $i12} true;
    goto $bb7, $bb8;

  $bb6:
    $r := $i5;
    return;

  $bb7:
    assume $i12 == 1bv1;
    goto corral_source_split_189;

  corral_source_split_189:
    $p13 := $bitcast.ref.ref(buf2);
    goto corral_source_split_190;

  corral_source_split_190:
    $p14 := $bitcast.ref.ref($p13);
    goto corral_source_split_191;

  corral_source_split_191:
    $i15 := $load.bytes.bv96($M.0, $p14);
    goto corral_source_split_192;

  corral_source_split_192:
    $i16 := $lshr.bv96($i15, 19bv96);
    goto corral_source_split_193;

  corral_source_split_193:
    $i17 := $and.bv96($i16, 15bv96);
    goto corral_source_split_194;

  corral_source_split_194:
    $i18 := $trunc.bv96.bv32($i17);
    goto corral_source_split_195;

  corral_source_split_195:
    $i19 := $eq.bv32($i18, 5bv32);
    goto corral_source_split_196;

  corral_source_split_196:
    assume {:branchcond $i19} true;
    goto $bb10, $bb11;

  $bb8:
    assume !($i12 == 1bv1);
    goto $bb9;

  $bb9:
    $p20 := $bitcast.ref.ref(buf1);
    goto corral_source_split_198;

  corral_source_split_198:
    $p21 := $bitcast.ref.ref($p20);
    goto corral_source_split_199;

  corral_source_split_199:
    $i22 := $load.bytes.bv96($M.0, $p21);
    goto corral_source_split_200;

  corral_source_split_200:
    $i23 := $lshr.bv96($i22, 32bv96);
    goto corral_source_split_201;

  corral_source_split_201:
    $i24 := $and.bv96($i23, 65535bv96);
    goto corral_source_split_202;

  corral_source_split_202:
    $i25 := $trunc.bv96.bv32($i24);
    call {:si_unique_call 41} {:cexpr "qdcount"} boogie_si_record_bv32($i25);
    goto corral_source_split_203;

  corral_source_split_203:
    $p26 := $bitcast.ref.ref(buf2);
    goto corral_source_split_204;

  corral_source_split_204:
    $p27 := $bitcast.ref.ref($p26);
    goto corral_source_split_205;

  corral_source_split_205:
    $i28 := $load.bytes.bv96($M.0, $p27);
    goto corral_source_split_206;

  corral_source_split_206:
    $i29 := $lshr.bv96($i28, 32bv96);
    goto corral_source_split_207;

  corral_source_split_207:
    $i30 := $and.bv96($i29, 65535bv96);
    goto corral_source_split_208;

  corral_source_split_208:
    $i31 := $trunc.bv96.bv32($i30);
    goto corral_source_split_209;

  corral_source_split_209:
    $i32 := $ne.bv32($i25, $i31);
    goto corral_source_split_210;

  corral_source_split_210:
    assume {:branchcond $i32} true;
    goto $bb12, $bb13;

  $bb10:
    assume $i19 == 1bv1;
    goto corral_source_split_212;

  corral_source_split_212:
    $i5 := 1bv32;
    goto $bb6;

  $bb11:
    assume !($i19 == 1bv1);
    goto $bb9;

  $bb12:
    assume $i32 == 1bv1;
    goto corral_source_split_214;

  corral_source_split_214:
    $i5 := 0bv32;
    goto $bb6;

  $bb13:
    assume !($i32 == 1bv1);
    goto corral_source_split_216;

  corral_source_split_216:
    $i33 := $trunc.bv32.bv16($i25);
    goto corral_source_split_217;

  corral_source_split_217:
    call {:si_unique_call 42} $i34 := htons($i33);
    goto corral_source_split_218;

  corral_source_split_218:
    $i35 := $zext.bv16.bv32($i34);
    call {:si_unique_call 43} {:cexpr "qdcount"} boogie_si_record_bv32($i35);
    goto corral_source_split_219;

  corral_source_split_219:
    $p36 := $add.ref(buf1, 12bv64);
    call {:si_unique_call 44} {:cexpr "cp"} boogie_si_record_ref($p36);
    goto corral_source_split_220;

  corral_source_split_220:
    $i37, $p38 := $i35, $p36;
    goto $bb14;

  $bb14:
    $i39 := $add.bv32($i37, $sub.bv32(0bv32, 1bv32));
    call {:si_unique_call 45} {:cexpr "qdcount"} boogie_si_record_bv32($i39);
    goto corral_source_split_222;

  corral_source_split_222:
    $i40 := $sgt.bv32($i37, 0bv32);
    goto corral_source_split_223;

  corral_source_split_223:
    assume {:branchcond $i40} true;
    goto $bb15, $bb16;

  $bb15:
    assume $i40 == 1bv1;
    goto corral_source_split_225;

  corral_source_split_225:
    $p41 := $p0;
    goto corral_source_split_226;

  corral_source_split_226:
    call {:si_unique_call 46} $i42 := __dn_expand(buf1, eom1, $p38, $p41, 1026bv32);
    call {:si_unique_call 47} {:cexpr "n"} boogie_si_record_bv32($i42);
    goto corral_source_split_227;

  corral_source_split_227:
    $i43 := $slt.bv32($i42, 0bv32);
    goto corral_source_split_228;

  corral_source_split_228:
    assume {:branchcond $i43} true;
    goto $bb17, $bb18;

  $bb16:
    assume !($i40 == 1bv1);
    goto corral_source_split_230;

  corral_source_split_230:
    $i5 := 1bv32;
    goto $bb6;

  $bb17:
    assume $i43 == 1bv1;
    goto corral_source_split_232;

  corral_source_split_232:
    $i5 := $sub.bv32(0bv32, 1bv32);
    goto $bb6;

  $bb18:
    assume !($i43 == 1bv1);
    goto corral_source_split_234;

  corral_source_split_234:
    $i44 := $sext.bv32.bv64($i42);
    goto corral_source_split_235;

  corral_source_split_235:
    $p45 := $add.ref($p38, $mul.ref($i44, 1bv64));
    call {:si_unique_call 48} {:cexpr "cp"} boogie_si_record_ref($p45);
    $i46 := $add.bv64($i44, 4bv64);
    goto corral_source_split_236;

  corral_source_split_236:
    $p47 := $add.ref($p38, $mul.ref($i46, 1bv64));
    goto corral_source_split_237;

  corral_source_split_237:
    $i48 := $ugt.ref($p47, eom1);
    goto corral_source_split_238;

  corral_source_split_238:
    assume {:branchcond $i48} true;
    goto $bb19, $bb20;

  $bb19:
    assume $i48 == 1bv1;
    goto corral_source_split_240;

  corral_source_split_240:
    $i5 := $sub.bv32(0bv32, 1bv32);
    goto $bb6;

  $bb20:
    assume !($i48 == 1bv1);
    call {:si_unique_call 49} {:cexpr "t_cp"} boogie_si_record_ref($p45);
    goto corral_source_split_242;

  corral_source_split_242:
    $p49 := $add.ref($p38, $mul.ref($i44, 1bv64));
    goto corral_source_split_243;

  corral_source_split_243:
    $i50 := $load.bytes.bv8($M.0, $p49);
    goto corral_source_split_244;

  corral_source_split_244:
    $i51 := $zext.bv8.bv16($i50);
    goto corral_source_split_245;

  corral_source_split_245:
    $i52 := $zext.bv16.bv32($i51);
    goto corral_source_split_246;

  corral_source_split_246:
    $i53 := $shl.bv32($i52, 8bv32);
    $i54 := $add.bv64($i44, 1bv64);
    goto corral_source_split_247;

  corral_source_split_247:
    $p55 := $add.ref($p38, $mul.ref($i54, 1bv64));
    goto corral_source_split_248;

  corral_source_split_248:
    $i56 := $load.bytes.bv8($M.0, $p55);
    goto corral_source_split_249;

  corral_source_split_249:
    $i57 := $zext.bv8.bv16($i56);
    goto corral_source_split_250;

  corral_source_split_250:
    $i58 := $zext.bv16.bv32($i57);
    goto corral_source_split_251;

  corral_source_split_251:
    $i59 := $or.bv32($i53, $i58);
    call {:si_unique_call 50} {:cexpr "ttype"} boogie_si_record_bv32($i59);
    $i60 := $add.bv64($i44, 2bv64);
    goto corral_source_split_252;

  corral_source_split_252:
    $p61 := $add.ref($p38, $mul.ref($i60, 1bv64));
    call {:si_unique_call 51} {:cexpr "cp"} boogie_si_record_ref($p61);
    call {:si_unique_call 52} {:cexpr "t_cp"} boogie_si_record_ref($p61);
    goto corral_source_split_253;

  corral_source_split_253:
    $p62 := $add.ref($p38, $mul.ref($i60, 1bv64));
    goto corral_source_split_254;

  corral_source_split_254:
    $i63 := $load.bytes.bv8($M.0, $p62);
    goto corral_source_split_255;

  corral_source_split_255:
    $i64 := $zext.bv8.bv16($i63);
    goto corral_source_split_256;

  corral_source_split_256:
    $i65 := $zext.bv16.bv32($i64);
    goto corral_source_split_257;

  corral_source_split_257:
    $i66 := $shl.bv32($i65, 8bv32);
    $i67 := $add.bv64($i60, 1bv64);
    goto corral_source_split_258;

  corral_source_split_258:
    $p68 := $add.ref($p38, $mul.ref($i67, 1bv64));
    goto corral_source_split_259;

  corral_source_split_259:
    $i69 := $load.bytes.bv8($M.0, $p68);
    goto corral_source_split_260;

  corral_source_split_260:
    $i70 := $zext.bv8.bv16($i69);
    goto corral_source_split_261;

  corral_source_split_261:
    $i71 := $zext.bv16.bv32($i70);
    goto corral_source_split_262;

  corral_source_split_262:
    $i72 := $or.bv32($i66, $i71);
    call {:si_unique_call 53} {:cexpr "tclass"} boogie_si_record_bv32($i72);
    $i73 := $add.bv64($i60, 2bv64);
    goto corral_source_split_263;

  corral_source_split_263:
    $p74 := $add.ref($p38, $mul.ref($i73, 1bv64));
    call {:si_unique_call 54} {:cexpr "cp"} boogie_si_record_ref($p74);
    goto corral_source_split_264;

  corral_source_split_264:
    $p75 := $p0;
    goto corral_source_split_265;

  corral_source_split_265:
    call {:si_unique_call 55} $i76 := __res_nameinquery($p75, $i59, $i72, buf2, eom2);
    goto corral_source_split_266;

  corral_source_split_266:
    $i77 := $ne.bv32($i76, 0bv32);
    goto corral_source_split_267;

  corral_source_split_267:
    $i37, $p38 := $i39, $p74;
    assume {:branchcond $i77} true;
    goto $bb21, $bb22;

  $bb21:
    assume $i77 == 1bv1;
    goto $bb14;

  $bb22:
    assume !($i77 == 1bv1);
    goto corral_source_split_269;

  corral_source_split_269:
    $i5 := 0bv32;
    goto $bb6;
}



const htons: ref;

axiom htons == $sub.ref(0bv64, 176bv64);

procedure htons($i0: bv16) returns ($r: bv16);



const __res_iclose: ref;

axiom __res_iclose == $sub.ref(0bv64, 184bv64);

procedure __res_iclose($p0: ref, $i1: bv1);



const __builtinx_expect: ref;

axiom __builtinx_expect == $sub.ref(0bv64, 192bv64);

procedure __builtinx_expect.bv32.bv32(p.0: bv32, p.1: bv32) returns ($r: bv32);



const __poll: ref;

axiom __poll == $sub.ref(0bv64, 200bv64);

procedure __poll($p0: ref, $i1: bv64, $i2: bv32) returns ($r: bv32);



const __sendmmsg: ref;

axiom __sendmmsg == $sub.ref(0bv64, 208bv64);

procedure __sendmmsg($i0: bv32, $p1: ref, $i2: bv32, $i3: bv32) returns ($r: bv32);



const send: ref;

axiom send == $sub.ref(0bv64, 216bv64);

procedure send($i0: bv32, $p1: ref, $i2: bv64, $i3: bv32) returns ($r: bv64);



const ioctl: ref;

axiom ioctl == $sub.ref(0bv64, 224bv64);

procedure ioctl.bv32.bv64.ref($i0: bv32, $i1: bv64, p.2: ref) returns ($r: bv32);



const recvfrom: ref;

axiom recvfrom == $sub.ref(0bv64, 232bv64);

procedure recvfrom($i0: bv32, $p1: ref, $i2: bv64, $i3: bv32, $p4: ref, $p5: ref) returns ($r: bv64);



const abort: ref;

axiom abort == $sub.ref(0bv64, 240bv64);

procedure abort();



const gettimeofday: ref;

axiom gettimeofday == $sub.ref(0bv64, 248bv64);

procedure gettimeofday($p0: ref, $p1: ref) returns ($r: bv32);



const socket: ref;

axiom socket == $sub.ref(0bv64, 256bv64);

procedure socket($i0: bv32, $i1: bv32, $i2: bv32) returns ($r: bv32);



const connect: ref;

axiom connect == $sub.ref(0bv64, 264bv64);

procedure connect($i0: bv32, $p1: ref, $i2: bv32) returns ($r: bv32);



const __fcntl: ref;

axiom __fcntl == $sub.ref(0bv64, 272bv64);

procedure __fcntl.bv32.bv32.bv32($i0: bv32, $i1: bv32, p.2: bv32) returns ($r: bv32);



procedure __fcntl.bv32.bv32($i0: bv32, $i1: bv32) returns ($r: bv32);



const send_dg: ref;

axiom send_dg == $sub.ref(0bv64, 280bv64);

procedure send_dg(statp: ref, buf: ref, buflen: bv32, buf2: ref, buflen2: bv32, ansp: ref, anssizp: ref, terrno: ref, ns: bv32, v_circuit: ref, gotsomewhere: ref, anscp: ref, ansp2: ref, anssizp2: ref, resplen2: ref, ansp2_malloced: ref) returns ($r: bv32);
  free requires assertsPassed;
  modifies $CurrAddr, assertsPassed, $M.0, $M.2, $M.7, $M.1, $M.8, $M.10, $M.9, $M.11, $M.12, $M.17, $M.5, $M.6, $M.3, $M.4, $M.13, $M.14, $M.15, $M.16;



implementation send_dg(statp: ref, buf: ref, buflen: bv32, buf2: ref, buflen2: bv32, ansp: ref, anssizp: ref, terrno: ref, ns: bv32, v_circuit: ref, gotsomewhere: ref, anscp: ref, ansp2: ref, anssizp2: ref, resplen2: ref, ansp2_malloced: ref) returns ($r: bv32)
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
  var $p9: ref;
  var $p10: ref;
  var $p11: ref;
  var $i12: bv32;
  var $p13: ref;
  var $i14: bv32;
  var $i15: bv32;
  var $i16: bv1;
  var $p18: ref;
  var $i19: bv32;
  var $i20: bv32;
  var $i17: bv32;
  var $i21: bv1;
  var $i22: bv32;
  var $p23: ref;
  var $i24: bv64;
  var $i25: bv64;
  var $i26: bv1;
  var $i27: bv8;
  var $p28: ref;
  var $i29: bv64;
  var $i30: bv64;
  var $i31: bv1;
  var $i32: bv32;
  var $i33: bv1;
  var $i34: bv32;
  var $i35: bv32;
  var $i36: bv1;
  var $i37: bv8;
  var $i38: bv32;
  var $i39: bv8;
  var $i40: bv8;
  var $i41: bv32;
  var $i42: bv1;
  var $i43: bv8;
  var $i45: bv64;
  var $i46: bv1;
  var $i47: bv32;
  var $i48: bv64;
  var $p49: ref;
  var $p50: ref;
  var $p52: ref;
  var $i53: bv32;
  var $p55: ref;
  var $p57: ref;
  var $i58: bv1;
  var $i59: bv32;
  var $i60: bv32;
  var $i61: bv32;
  var $i62: bv32;
  var $i63: bv1;
  var $p65: ref;
  var $p66: ref;
  var $i67: bv64;
  var $p68: ref;
  var $i69: bv64;
  var $p70: ref;
  var $p71: ref;
  var $i72: bv64;
  var $p73: ref;
  var $i74: bv64;
  var $i75: bv32;
  var $i76: bv1;
  var $i64: bv32;
  var $p77: ref;
  var $i78: bv64;
  var $i79: bv64;
  var $p80: ref;
  var $i81: bv64;
  var $i82: bv64;
  var $i83: bv64;
  var $i84: bv32;
  var $i85: bv1;
  var $p87: ref;
  var $i88: bv32;
  var $i86: bv32;
  var $i89: bv1;
  var $i90: bv32;
  var $i91: bv32;
  var $i92: bv1;
  var $p95: ref;
  var $i96: bv32;
  var $i93: bv32;
  var $i94: bv32;
  var $i97: bv1;
  var $i98: bv32;
  var $i99: bv1;
  var $i100: bv1;
  var $i101: bv1;
  var $i102: bv1;
  var $i103: bv1;
  var $i104: bv1;
  var $p105: ref;
  var $i106: bv64;
  var $i107: bv64;
  var $i108: bv1;
  var $p109: ref;
  var $i110: bv64;
  var $i111: bv64;
  var $i112: bv32;
  var $i113: bv1;
  var $i114: bv32;
  var $i115: bv1;
  var $p117: ref;
  var $i118: bv16;
  var $i119: bv32;
  var $i120: bv32;
  var $i121: bv1;
  var $i122: bv32;
  var $i123: bv1;
  var $i124: bv1;
  var $i125: bv1;
  var $i126: bv1;
  var $i127: bv1;
  var $i128: bv1;
  var $p131: ref;
  var $p134: ref;
  var $p135: ref;
  var $p138: ref;
  var $p141: ref;
  var $p143: ref;
  var $i144: bv64;
  var $p146: ref;
  var $p149: ref;
  var $p152: ref;
  var $p155: ref;
  var $p158: ref;
  var $p159: ref;
  var $p162: ref;
  var $p165: ref;
  var $p167: ref;
  var $i168: bv64;
  var $p170: ref;
  var $p173: ref;
  var $p176: ref;
  var $p178: ref;
  var $i179: bv32;
  var $p180: ref;
  var $i181: bv32;
  var $i182: bv1;
  var $i183: bv32;
  var $i184: bv32;
  var $i185: bv1;
  var $p187: ref;
  var $i188: bv32;
  var $i189: bv1;
  var $p191: ref;
  var $i192: bv32;
  var $i193: bv1;
  var $p195: ref;
  var $i196: bv32;
  var $i197: bv1;
  var $p199: ref;
  var $i200: bv32;
  var $i201: bv1;
  var $i202: bv1;
  var $i203: bv32;
  var $i204: bv1;
  var $i205: bv32;
  var $i206: bv1;
  var $i207: bv1;
  var $i208: bv32;
  var $i209: bv1;
  var $i210: bv32;
  var $i211: bv32;
  var $i212: bv1;
  var $i213: bv1;
  var $i214: bv32;
  var $i215: bv1;
  var $i216: bv1;
  var $i217: bv1;
  var $p219: ref;
  var $i220: bv32;
  var $i221: bv64;
  var $i222: bv64;
  var $i224: bv64;
  var $i225: bv64;
  var $i223: bv64;
  var $i226: bv1;
  var $i227: bv32;
  var $i228: bv64;
  var $i229: bv1;
  var $i230: bv32;
  var $i231: bv1;
  var $i232: bv32;
  var $i233: bv1;
  var $i234: bv1;
  var $i235: bv1;
  var $i236: bv1;
  var $i237: bv1;
  var $i238: bv1;
  var $p240: ref;
  var $p242: ref;
  var $i243: bv32;
  var $p245: ref;
  var $i246: bv16;
  var $i247: bv32;
  var $i248: bv32;
  var $i249: bv1;
  var $i250: bv32;
  var $i251: bv1;
  var $i252: bv1;
  var $i253: bv1;
  var $i254: bv1;
  var $p255: ref;
  var $i256: bv1;
  var $i258: bv1;
  var $i257: bv1;
  var $i259: bv32;
  var $i263: bv32;
  var $i264: bv1;
  var $i265: bv32;
  var $i266: bv64;
  var $i267: bv64;
  var $i268: bv64;
  var $i269: bv64;
  var $i270: bv32;
  var $i271: bv32;
  var $p272: ref;
  var $i273: bv64;
  var $p274: ref;
  var $p275: ref;
  var $p260: ref;
  var $p261: ref;
  var $p262: ref;
  var $i276: bv32;
  var $i277: bv1;
  var $i278: bv1;
  var $i279: bv1;
  var $p281: ref;
  var $i282: bv32;
  var $i283: bv32;
  var $i284: bv1;
  var $i285: bv32;
  var $i286: bv32;
  var $i287: bv1;
  var $p288: ref;
  var $i289: bv1;
  var $i290: bv1;
  var $p291: ref;
  var $p292: ref;
  var $i293: bv32;
  var $i294: bv64;
  var $i295: bv1;
  var $i296: bv32;
  var $p298: ref;
  var $i299: bv32;
  var $p300: ref;
  var $i301: bv32;
  var $i302: bv64;
  var $p303: ref;
  var $p304: ref;
  var $p305: ref;
  var $p306: ref;
  var $i307: bv64;
  var $i308: bv32;
  var $i309: bv32;
  var $i310: bv1;
  var $i311: bv32;
  var $i312: bv32;
  var $i313: bv1;
  var $i314: bv32;
  var $i315: bv1;
  var $i316: bv32;
  var $i317: bv1;
  var $i318: bv1;
  var $i319: bv32;
  var $i320: bv1;
  var $i321: bv32;
  var $i322: bv32;
  var $i323: bv1;
  var $i324: bv1;
  var $p325: ref;
  var $i326: bv96;
  var $i327: bv96;
  var $i328: bv32;
  var $p329: ref;
  var $i330: bv96;
  var $i331: bv96;
  var $i332: bv32;
  var $i333: bv1;
  var $i334: bv1;
  var $p335: ref;
  var $i336: bv96;
  var $i337: bv96;
  var $i338: bv32;
  var $p339: ref;
  var $i340: bv96;
  var $i341: bv96;
  var $i342: bv32;
  var $i343: bv1;
  var $p344: ref;
  var $i345: bv64;
  var $i346: bv64;
  var $i347: bv1;
  var $i348: bv32;
  var $i349: bv1;
  var $p350: ref;
  var $i351: bv96;
  var $i352: bv96;
  var $i353: bv96;
  var $i354: bv32;
  var $i355: bv1;
  var $p356: ref;
  var $i357: bv64;
  var $i358: bv64;
  var $i359: bv1;
  var $p360: ref;
  var $i361: bv32;
  var $i362: bv32;
  var $p363: ref;
  var $i364: bv64;
  var $i365: bv64;
  var $i366: bv1;
  var $i367: bv1;
  var $i368: bv64;
  var $p369: ref;
  var $p370: ref;
  var $p371: ref;
  var $i372: bv32;
  var $i373: bv64;
  var $p374: ref;
  var $i375: bv32;
  var $i376: bv1;
  var $i377: bv1;
  var $i378: bv64;
  var $p379: ref;
  var $p380: ref;
  var $p381: ref;
  var $i382: bv32;
  var $i383: bv64;
  var $p384: ref;
  var $i385: bv32;
  var $i386: bv1;
  var $p387: ref;
  var $i388: bv96;
  var $i389: bv96;
  var $i390: bv96;
  var $i391: bv32;
  var $i392: bv1;
  var $p393: ref;
  var $i394: bv96;
  var $i395: bv96;
  var $i396: bv96;
  var $i397: bv32;
  var $i398: bv1;
  var $p399: ref;
  var $i400: bv96;
  var $i401: bv96;
  var $i402: bv96;
  var $i403: bv32;
  var $i404: bv1;
  var $i405: bv1;
  var $i406: bv1;
  var $i407: bv1;
  var $i408: bv1;
  var $i409: bv32;
  var $i410: bv1;
  var $p411: ref;
  var $i412: bv96;
  var $i413: bv96;
  var $i414: bv32;
  var $p415: ref;
  var $i416: bv96;
  var $i417: bv96;
  var $i418: bv32;
  var $i419: bv1;
  var $p420: ref;
  var $i421: bv64;
  var $i422: bv1;
  var $p423: ref;
  var $i424: bv96;
  var $i425: bv96;
  var $i426: bv96;
  var $i427: bv32;
  var $i428: bv1;
  var $p429: ref;
  var $i430: bv96;
  var $i431: bv96;
  var $i432: bv96;
  var $i433: bv32;
  var $i434: bv1;
  var $p435: ref;
  var $i436: bv96;
  var $i437: bv96;
  var $i438: bv96;
  var $i439: bv32;
  var $i440: bv1;
  var $p441: ref;
  var $i442: bv96;
  var $i443: bv96;
  var $i444: bv96;
  var $i445: bv32;
  var $i446: bv1;
  var $p447: ref;
  var $i448: bv96;
  var $i449: bv96;
  var $i450: bv32;
  var $i451: bv1;
  var $p452: ref;
  var $i453: bv64;
  var $i454: bv64;
  var $i455: bv1;
  var $p456: ref;
  var $i457: bv96;
  var $i458: bv96;
  var $i459: bv96;
  var $i460: bv32;
  var $i461: bv1;
  var $i462: bv1;
  var $p463: ref;
  var $i464: bv96;
  var $i465: bv96;
  var $i466: bv32;
  var $p467: ref;
  var $i468: bv96;
  var $i469: bv96;
  var $i470: bv32;
  var $i471: bv1;
  var $i472: bv32;
  var $i473: bv32;
  var $i474: bv32;
  var $i475: bv1;
  var $i476: bv1;
  var $p478: ref;
  var $i479: bv1;
  var $i480: bv32;
  var $i481: bv1;
  var $i482: bv64;
  var $p483: ref;
  var $p484: ref;
  var $p486: ref;
  var $i487: bv32;
  var $p489: ref;
  var $i490: bv32;
  var $p492: ref;
  var $i493: bv16;
  var $i494: bv32;
  var $i495: bv32;
  var $i496: bv1;
  var $i44: bv32;

  $bb0:
    call {:si_unique_call 56} $initialize();
    call {:si_unique_call 57} $p0 := $alloc($mul.ref(16bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 58} $p1 := $alloc($mul.ref(16bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 59} $p2 := $alloc($mul.ref(16bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 60} $p3 := $alloc($mul.ref(8bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 61} $p4 := $alloc($mul.ref(28bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 62} $p5 := $alloc($mul.ref(4bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 63} $p6 := $alloc($mul.ref(32bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 64} $p7 := $alloc($mul.ref(128bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 65} $p8 := $alloc($mul.ref(4bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 66} $p9 := $alloc($mul.ref(8bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 67} {:cexpr "statp"} boogie_si_record_ref(statp);
    call {:si_unique_call 68} {:cexpr "buf"} boogie_si_record_ref(buf);
    call {:si_unique_call 69} {:cexpr "buflen"} boogie_si_record_bv32(buflen);
    call {:si_unique_call 70} {:cexpr "buf2"} boogie_si_record_ref(buf2);
    call {:si_unique_call 71} {:cexpr "buflen2"} boogie_si_record_bv32(buflen2);
    call {:si_unique_call 72} {:cexpr "ansp"} boogie_si_record_ref(ansp);
    call {:si_unique_call 73} {:cexpr "anssizp"} boogie_si_record_ref(anssizp);
    call {:si_unique_call 74} {:cexpr "terrno"} boogie_si_record_ref(terrno);
    call {:si_unique_call 75} {:cexpr "ns"} boogie_si_record_bv32(ns);
    call {:si_unique_call 76} {:cexpr "v_circuit"} boogie_si_record_ref(v_circuit);
    call {:si_unique_call 77} {:cexpr "gotsomewhere"} boogie_si_record_ref(gotsomewhere);
    call {:si_unique_call 78} {:cexpr "anscp"} boogie_si_record_ref(anscp);
    call {:si_unique_call 79} {:cexpr "ansp2"} boogie_si_record_ref(ansp2);
    call {:si_unique_call 80} {:cexpr "anssizp2"} boogie_si_record_ref(anssizp2);
    call {:si_unique_call 81} {:cexpr "resplen2"} boogie_si_record_ref(resplen2);
    call {:si_unique_call 82} {:cexpr "ansp2_malloced"} boogie_si_record_ref(ansp2_malloced);
    goto corral_source_split_271;

  corral_source_split_271:
    call {:si_unique_call 83} __VERIFIER_assert(0bv32);
    goto SeqInstr_4, SeqInstr_5;

  SeqInstr_4:
    assume !assertsPassed;
    return;

  SeqInstr_5:
    assume assertsPassed;
    goto SeqInstr_6;

  SeqInstr_6:
    goto corral_source_split_272;

  corral_source_split_272:
    $p10 := $bitcast.ref.ref(buf);
    call {:si_unique_call 84} {:cexpr "hp"} boogie_si_record_ref($p10);
    goto corral_source_split_273;

  corral_source_split_273:
    $p11 := $bitcast.ref.ref(buf2);
    call {:si_unique_call 85} {:cexpr "hp2"} boogie_si_record_ref($p11);
    goto corral_source_split_274;

  corral_source_split_274:
    $i12 := $load.bv32($M.1, anssizp);
    call {:si_unique_call 86} {:cexpr "orig_anssizp"} boogie_si_record_bv32($i12);
    goto corral_source_split_275;

  corral_source_split_275:
    $M.0 := $store.bytes.bv32($M.0, $p5, 0bv32);
    goto corral_source_split_276;

  corral_source_split_276:
    $p13 := statp;
    goto corral_source_split_277;

  corral_source_split_277:
    $i14 := $load.bytes.bv32($M.0, $p13);
    goto corral_source_split_278;

  corral_source_split_278:
    $i15 := $shl.bv32($i14, ns);
    call {:si_unique_call 87} {:cexpr "seconds"} boogie_si_record_bv32($i15);
    goto corral_source_split_279;

  corral_source_split_279:
    $i16 := $sgt.bv32(ns, 0bv32);
    goto corral_source_split_280;

  corral_source_split_280:
    $i17 := $i15;
    assume {:branchcond $i16} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i16 == 1bv1;
    goto corral_source_split_282;

  corral_source_split_282:
    $p18 := $add.ref(statp, 16bv64);
    goto corral_source_split_283;

  corral_source_split_283:
    $i19 := $load.bytes.bv32($M.0, $p18);
    goto corral_source_split_284;

  corral_source_split_284:
    $i20 := $sdiv.bv32($i15, $i19);
    call {:si_unique_call 88} {:cexpr "seconds"} boogie_si_record_bv32($i20);
    goto corral_source_split_285;

  corral_source_split_285:
    $i17 := $i20;
    goto $bb3;

  $bb2:
    assume !($i16 == 1bv1);
    goto $bb3;

  $bb3:
    $i21 := $sle.bv32($i17, 0bv32);
    goto corral_source_split_287;

  corral_source_split_287:
    $i22 := $i17;
    assume {:branchcond $i21} true;
    goto $bb4, $bb5;

  $bb4:
    assume $i21 == 1bv1;
    call {:si_unique_call 89} {:cexpr "seconds"} boogie_si_record_bv32(1bv32);
    goto corral_source_split_289;

  corral_source_split_289:
    $i22 := 1bv32;
    goto $bb6;

  $bb5:
    assume !($i21 == 1bv1);
    goto $bb6;

  $bb6:
    $p23 := $add.ref(statp, 8bv64);
    goto corral_source_split_291;

  corral_source_split_291:
    $i24 := $load.bytes.bv64($M.0, $p23);
    goto corral_source_split_292;

  corral_source_split_292:
    $i25 := $and.bv64($i24, 4194304bv64);
    goto corral_source_split_293;

  corral_source_split_293:
    $i26 := $ne.bv64($i25, 0bv64);
    goto corral_source_split_294;

  corral_source_split_294:
    $i27 := $zext.bv1.bv8($i26);
    call {:si_unique_call 90} {:cexpr "single_request_reopen"} boogie_si_record_bv8($i27);
    goto corral_source_split_295;

  corral_source_split_295:
    $p28 := $add.ref(statp, 8bv64);
    goto corral_source_split_296;

  corral_source_split_296:
    $i29 := $load.bytes.bv64($M.0, $p28);
    goto corral_source_split_297;

  corral_source_split_297:
    $i30 := $and.bv64($i29, 2097152bv64);
    goto corral_source_split_298;

  corral_source_split_298:
    $i31 := $ne.bv64($i30, 0bv64);
    goto corral_source_split_299;

  corral_source_split_299:
    $i32 := $zext.bv1.bv32($i31);
    goto corral_source_split_300;

  corral_source_split_300:
    $i33 := $trunc.bv8.bv1($i27);
    goto corral_source_split_301;

  corral_source_split_301:
    $i34 := $zext.bv1.bv32($i33);
    goto corral_source_split_302;

  corral_source_split_302:
    $i35 := $or.bv32($i32, $i34);
    goto corral_source_split_303;

  corral_source_split_303:
    $i36 := $ne.bv32($i35, 0bv32);
    goto corral_source_split_304;

  corral_source_split_304:
    $i37 := $zext.bv1.bv8($i36);
    call {:si_unique_call 91} {:cexpr "single_request"} boogie_si_record_bv8($i37);
    goto corral_source_split_305;

  corral_source_split_305:
    $i38 := $load.bv32($M.2, gotsomewhere);
    call {:si_unique_call 92} {:cexpr "save_gotsomewhere"} boogie_si_record_bv32($i38);
    goto corral_source_split_306;

  corral_source_split_306:
    $i39, $i40 := $i27, $i37;
    goto $bb7;

  $bb7:
    call {:si_unique_call 93} $i41 := reopen(statp, terrno, ns);
    call {:si_unique_call 94} {:cexpr "retval"} boogie_si_record_bv32($i41);
    goto corral_source_split_308;

  corral_source_split_308:
    $i42 := $sle.bv32($i41, 0bv32);
    goto corral_source_split_309;

  corral_source_split_309:
    $i43 := $i40;
    assume {:branchcond $i42} true;
    goto $bb8, $bb9;

  $bb8:
    assume $i42 == 1bv1;
    goto corral_source_split_311;

  corral_source_split_311:
    $i44 := $i41;
    goto $bb11;

  $bb9:
    assume !($i42 == 1bv1);
    goto $bb10;

  $bb10:
    call {:si_unique_call 95} evNowTime($p0);
    goto corral_source_split_313;

  corral_source_split_313:
    $i45 := $sext.bv32.bv64($i22);
    goto corral_source_split_314;

  corral_source_split_314:
    call {:si_unique_call 96} evConsTime($p1, $i45, 0bv64);
    goto corral_source_split_315;

  corral_source_split_315:
    call {:si_unique_call 97} evAddTime($p2, $p0, $p1);
    call {:si_unique_call 98} {:cexpr "need_recompute"} boogie_si_record_bv32(0bv32);
    call {:si_unique_call 99} {:cexpr "nwritten"} boogie_si_record_bv32(0bv32);
    call {:si_unique_call 100} {:cexpr "recvresp1"} boogie_si_record_bv32(0bv32);
    goto corral_source_split_316;

  corral_source_split_316:
    $i46 := $eq.ref(buf2, $0.ref);
    goto corral_source_split_317;

  corral_source_split_317:
    $i47 := $zext.bv1.bv32($i46);
    call {:si_unique_call 101} {:cexpr "recvresp2"} boogie_si_record_bv32($i47);
    goto corral_source_split_318;

  corral_source_split_318:
    $i48 := $sext.bv32.bv64(ns);
    goto corral_source_split_319;

  corral_source_split_319:
    $p49 := $add.ref(statp, 512bv64);
    goto corral_source_split_320;

  corral_source_split_320:
    $p50 := $bitcast.ref.ref($p49);
    goto corral_source_split_321;

  corral_source_split_321:
    $p52 := $add.ref($add.ref($p50, 8bv64), $mul.ref($i48, 4bv64));
    goto corral_source_split_322;

  corral_source_split_322:
    $i53 := $load.bytes.bv32($M.0, $p52);
    goto corral_source_split_323;

  corral_source_split_323:
    $p55 := $p3;
    goto corral_source_split_324;

  corral_source_split_324:
    $M.0 := $store.bytes.bv32($M.0, $p55, $i53);
    goto corral_source_split_325;

  corral_source_split_325:
    $p57 := $add.ref($p3, 4bv64);
    goto corral_source_split_326;

  corral_source_split_326:
    $M.0 := $store.bytes.bv16($M.0, $p57, 4bv16);
    goto corral_source_split_327;

  corral_source_split_327:
    $i58 := $ne.ref(resplen2, $0.ref);
    goto corral_source_split_328;

  corral_source_split_328:
    $i59, $i60, $i61, $i62 := 0bv32, 0bv32, 0bv32, $i47;
    assume {:branchcond $i58} true;
    goto $bb12, $bb13;

  $bb11:
    $r := $i44;
    return;

  $bb12:
    assume $i58 == 1bv1;
    goto corral_source_split_330;

  corral_source_split_330:
    $M.0 := $store.bytes.bv32($M.0, resplen2, 0bv32);
    goto corral_source_split_331;

  corral_source_split_331:
    $i59, $i60, $i61, $i62 := 0bv32, 0bv32, 0bv32, $i47;
    goto $bb14;

  $bb13:
    assume !($i58 == 1bv1);
    goto $bb14;

  $bb14:
    $i63 := $ne.bv32($i59, 0bv32);
    goto corral_source_split_333;

  corral_source_split_333:
    $i64 := $i59;
    assume {:branchcond $i63} true;
    goto $bb15, $bb17;

  $bb15:
    assume $i63 == 1bv1;
    goto $bb16;

  $bb16:
    call {:si_unique_call 102} evNowTime($p0);
    goto corral_source_split_335;

  corral_source_split_335:
    $p65 := $bitcast.ref.ref($p2);
    goto corral_source_split_336;

  corral_source_split_336:
    $p66 := $p65;
    goto corral_source_split_337;

  corral_source_split_337:
    $i67 := $load.bv64($M.3, $p66);
    goto corral_source_split_338;

  corral_source_split_338:
    $p68 := $add.ref($p65, 8bv64);
    goto corral_source_split_339;

  corral_source_split_339:
    $i69 := $load.bv64($M.4, $p68);
    goto corral_source_split_340;

  corral_source_split_340:
    $p70 := $bitcast.ref.ref($p0);
    goto corral_source_split_341;

  corral_source_split_341:
    $p71 := $p70;
    goto corral_source_split_342;

  corral_source_split_342:
    $i72 := $load.bv64($M.5, $p71);
    goto corral_source_split_343;

  corral_source_split_343:
    $p73 := $add.ref($p70, 8bv64);
    goto corral_source_split_344;

  corral_source_split_344:
    $i74 := $load.bv64($M.6, $p73);
    goto corral_source_split_345;

  corral_source_split_345:
    call {:si_unique_call 103} $i75 := evCmpTime($i67, $i69, $i72, $i74);
    goto corral_source_split_346;

  corral_source_split_346:
    $i76 := $sle.bv32($i75, 0bv32);
    goto corral_source_split_347;

  corral_source_split_347:
    assume {:branchcond $i76} true;
    goto $bb19, $bb21;

  $bb17:
    assume !($i63 == 1bv1);
    goto $bb18;

  $bb18:
    $p77 := $p1;
    goto corral_source_split_349;

  corral_source_split_349:
    $i78 := $load.bv64($M.5, $p77);
    goto corral_source_split_350;

  corral_source_split_350:
    $i79 := $mul.bv64($i78, 1000bv64);
    goto corral_source_split_351;

  corral_source_split_351:
    $p80 := $add.ref($p1, 8bv64);
    goto corral_source_split_352;

  corral_source_split_352:
    $i81 := $load.bv64($M.6, $p80);
    goto corral_source_split_353;

  corral_source_split_353:
    $i82 := $sdiv.bv64($i81, 1000000bv64);
    goto corral_source_split_354;

  corral_source_split_354:
    $i83 := $add.bv64($i79, $i82);
    goto corral_source_split_355;

  corral_source_split_355:
    $i84 := $trunc.bv64.bv32($i83);
    call {:si_unique_call 104} {:cexpr "ptimeout"} boogie_si_record_bv32($i84);
    call {:si_unique_call 105} {:cexpr "n"} boogie_si_record_bv32(0bv32);
    goto corral_source_split_356;

  corral_source_split_356:
    $i85 := $eq.bv32($i60, 0bv32);
    goto corral_source_split_357;

  corral_source_split_357:
    $i86 := 0bv32;
    assume {:branchcond $i85} true;
    goto $bb22, $bb23;

  $bb19:
    assume $i76 == 1bv1;
    goto $bb20;

  $bb20:
    call {:si_unique_call 106} __res_iclose(statp, 0bv1);
    goto corral_source_split_359;

  corral_source_split_359:
    $i44 := 0bv32;
    goto $bb11;

  $bb21:
    assume !($i76 == 1bv1);
    goto corral_source_split_361;

  corral_source_split_361:
    call {:si_unique_call 107} evSubTime($p1, $p2, $p0);
    call {:si_unique_call 108} {:cexpr "need_recompute"} boogie_si_record_bv32(0bv32);
    goto corral_source_split_362;

  corral_source_split_362:
    $i64 := 0bv32;
    goto $bb18;

  $bb22:
    assume $i85 == 1bv1;
    goto corral_source_split_364;

  corral_source_split_364:
    $p87 := $p3;
    goto corral_source_split_365;

  corral_source_split_365:
    call {:si_unique_call 109} $i88 := __poll($p87, 1bv64, 0bv32);
    call {:si_unique_call 110} {:cexpr "n"} boogie_si_record_bv32($i88);
    goto corral_source_split_366;

  corral_source_split_366:
    $i86 := $i88;
    goto $bb24;

  $bb23:
    assume !($i85 == 1bv1);
    goto $bb24;

  $bb24:
    $i89 := $eq.bv32($i86, 0bv32);
    goto corral_source_split_368;

  corral_source_split_368:
    $i90 := $zext.bv1.bv32($i89);
    goto corral_source_split_369;

  corral_source_split_369:
    call {:si_unique_call 111} $i91 := __builtinx_expect.bv32.bv32($i90, 0bv32);
    goto corral_source_split_370;

  corral_source_split_370:
    $i92 := $ne.bv32($i91, 0bv32);
    goto corral_source_split_371;

  corral_source_split_371:
    $i93, $i94 := $i86, $i64;
    assume {:branchcond $i92} true;
    goto $bb25, $bb26;

  $bb25:
    assume $i92 == 1bv1;
    goto corral_source_split_373;

  corral_source_split_373:
    $p95 := $p3;
    goto corral_source_split_374;

  corral_source_split_374:
    call {:si_unique_call 112} $i96 := __poll($p95, 1bv64, $i84);
    call {:si_unique_call 113} {:cexpr "n"} boogie_si_record_bv32($i96);
    call {:si_unique_call 114} {:cexpr "need_recompute"} boogie_si_record_bv32(1bv32);
    goto corral_source_split_375;

  corral_source_split_375:
    $i93, $i94 := $i96, 1bv32;
    goto $bb27;

  $bb26:
    assume !($i92 == 1bv1);
    goto $bb27;

  $bb27:
    $i97 := $eq.bv32($i93, 0bv32);
    goto corral_source_split_377;

  corral_source_split_377:
    assume {:branchcond $i97} true;
    goto $bb28, $bb29;

  $bb28:
    assume $i97 == 1bv1;
    goto corral_source_split_379;

  corral_source_split_379:
    $i98 := $load.bytes.bv32($M.0, $p5);
    goto corral_source_split_380;

  corral_source_split_380:
    $i99 := $sgt.bv32($i98, 1bv32);
    goto corral_source_split_381;

  corral_source_split_381:
    assume {:branchcond $i99} true;
    goto $bb30, $bb31;

  $bb29:
    assume !($i97 == 1bv1);
    goto corral_source_split_383;

  corral_source_split_383:
    $i113 := $slt.bv32($i93, 0bv32);
    goto corral_source_split_384;

  corral_source_split_384:
    assume {:branchcond $i113} true;
    goto $bb42, $bb43;

  $bb30:
    assume $i99 == 1bv1;
    goto corral_source_split_386;

  corral_source_split_386:
    $i100 := $ne.bv32($i61, 0bv32);
    goto corral_source_split_387;

  corral_source_split_387:
    assume {:branchcond $i100} true;
    goto $bb33, $bb35;

  $bb31:
    assume !($i99 == 1bv1);
    goto $bb32;

  $bb32:
    $M.2 := $store.bv32($M.2, gotsomewhere, 1bv32);
    goto corral_source_split_389;

  corral_source_split_389:
    $i44 := 0bv32;
    goto $bb11;

  $bb33:
    assume $i100 == 1bv1;
    goto $bb34;

  $bb34:
    $i104 := $trunc.bv8.bv1($i43);
    goto corral_source_split_391;

  corral_source_split_391:
    assume {:branchcond $i104} true;
    goto $bb38, $bb39;

  $bb35:
    assume !($i100 == 1bv1);
    goto corral_source_split_393;

  corral_source_split_393:
    $i101 := $ne.ref(buf2, $0.ref);
    goto corral_source_split_394;

  corral_source_split_394:
    $i102 := $ne.bv32($i62, 0bv32);
    goto corral_source_split_395;

  corral_source_split_395:
    $i103 := $and.bv1($i101, $i102);
    goto corral_source_split_396;

  corral_source_split_396:
    assume {:branchcond $i103} true;
    goto $bb36, $bb37;

  $bb36:
    assume $i103 == 1bv1;
    goto $bb34;

  $bb37:
    assume !($i103 == 1bv1);
    goto $bb32;

  $bb38:
    assume $i104 == 1bv1;
    goto corral_source_split_398;

  corral_source_split_398:
    $i108 := $trunc.bv8.bv1($i39);
    goto corral_source_split_399;

  corral_source_split_399:
    assume {:branchcond $i108} true;
    goto $bb40, $bb41;

  $bb39:
    assume !($i104 == 1bv1);
    goto corral_source_split_401;

  corral_source_split_401:
    $p105 := $add.ref(statp, 8bv64);
    goto corral_source_split_402;

  corral_source_split_402:
    $i106 := $load.bytes.bv64($M.0, $p105);
    goto corral_source_split_403;

  corral_source_split_403:
    $i107 := $or.bv64($i106, 2097152bv64);
    goto corral_source_split_404;

  corral_source_split_404:
    $M.0 := $store.bytes.bv64($M.0, $p105, $i107);
    call {:si_unique_call 115} {:cexpr "single_request"} boogie_si_record_bv8(1bv8);
    goto corral_source_split_405;

  corral_source_split_405:
    $M.2 := $store.bv32($M.2, gotsomewhere, $i38);
    goto corral_source_split_406;

  corral_source_split_406:
    $i43 := 1bv8;
    goto $bb10;

  $bb40:
    assume $i108 == 1bv1;
    goto corral_source_split_408;

  corral_source_split_408:
    $M.0 := $store.bytes.bv32($M.0, resplen2, 1bv32);
    goto corral_source_split_409;

  corral_source_split_409:
    $i112 := $load.bytes.bv32($M.0, $p5);
    goto corral_source_split_410;

  corral_source_split_410:
    $i44 := $i112;
    goto $bb11;

  $bb41:
    assume !($i108 == 1bv1);
    goto corral_source_split_412;

  corral_source_split_412:
    $p109 := $add.ref(statp, 8bv64);
    goto corral_source_split_413;

  corral_source_split_413:
    $i110 := $load.bytes.bv64($M.0, $p109);
    goto corral_source_split_414;

  corral_source_split_414:
    $i111 := $or.bv64($i110, 4194304bv64);
    goto corral_source_split_415;

  corral_source_split_415:
    $M.0 := $store.bytes.bv64($M.0, $p109, $i111);
    call {:si_unique_call 116} {:cexpr "single_request_reopen"} boogie_si_record_bv8(1bv8);
    goto corral_source_split_416;

  corral_source_split_416:
    $M.2 := $store.bv32($M.2, gotsomewhere, $i38);
    goto corral_source_split_417;

  corral_source_split_417:
    call {:si_unique_call 117} __res_iclose(statp, 0bv1);
    goto corral_source_split_418;

  corral_source_split_418:
    $i39, $i40 := 1bv8, $i43;
    goto $bb7;

  $bb42:
    assume $i113 == 1bv1;
    goto corral_source_split_420;

  corral_source_split_420:
    $i114 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_421;

  corral_source_split_421:
    $i115 := $eq.bv32($i114, 4bv32);
    goto corral_source_split_422;

  corral_source_split_422:
    assume {:branchcond $i115} true;
    goto $bb44, $bb45;

  $bb43:
    assume !($i113 == 1bv1);
    goto corral_source_split_424;

  corral_source_split_424:
    $M.0 := $store.bytes.bv32($M.0, errno, 0bv32);
    call {:si_unique_call 118} {:cexpr "errno"} boogie_si_record_bv32(0bv32);
    goto corral_source_split_425;

  corral_source_split_425:
    $p117 := $add.ref($p3, 6bv64);
    goto corral_source_split_426;

  corral_source_split_426:
    $i118 := $load.bytes.bv16($M.0, $p117);
    goto corral_source_split_427;

  corral_source_split_427:
    $i119 := $sext.bv16.bv32($i118);
    goto corral_source_split_428;

  corral_source_split_428:
    $i120 := $and.bv32($i119, 4bv32);
    goto corral_source_split_429;

  corral_source_split_429:
    $i121 := $ne.bv32($i120, 0bv32);
    goto corral_source_split_430;

  corral_source_split_430:
    assume {:branchcond $i121} true;
    goto $bb46, $bb47;

  $bb44:
    assume $i115 == 1bv1;
    goto $bb16;

  $bb45:
    assume !($i115 == 1bv1);
    goto $bb20;

  $bb46:
    assume $i121 == 1bv1;
    goto corral_source_split_432;

  corral_source_split_432:
    $i122 := $M.7;
    goto corral_source_split_433;

  corral_source_split_433:
    $i123 := $sge.bv32($i122, 0bv32);
    goto corral_source_split_434;

  corral_source_split_434:
    $i124 := $eq.bv32($i60, 0bv32);
    goto corral_source_split_435;

  corral_source_split_435:
    $i125 := $and.bv1($i123, $i124);
    goto corral_source_split_436;

  corral_source_split_436:
    $i126 := $ne.ref(buf2, $0.ref);
    goto corral_source_split_437;

  corral_source_split_437:
    $i127 := $and.bv1($i125, $i126);
    goto corral_source_split_438;

  corral_source_split_438:
    assume {:branchcond $i127} true;
    goto $bb48, $bb49;

  $bb47:
    assume !($i121 == 1bv1);
    goto corral_source_split_440;

  corral_source_split_440:
    $p245 := $add.ref($p3, 6bv64);
    goto corral_source_split_441;

  corral_source_split_441:
    $i246 := $load.bytes.bv16($M.0, $p245);
    goto corral_source_split_442;

  corral_source_split_442:
    $i247 := $sext.bv16.bv32($i246);
    goto corral_source_split_443;

  corral_source_split_443:
    $i248 := $and.bv32($i247, 1bv32);
    goto corral_source_split_444;

  corral_source_split_444:
    $i249 := $ne.bv32($i248, 0bv32);
    goto corral_source_split_445;

  corral_source_split_445:
    assume {:branchcond $i249} true;
    goto $bb87, $bb88;

  $bb48:
    assume $i127 == 1bv1;
    goto corral_source_split_447;

  corral_source_split_447:
    $i128 := $trunc.bv8.bv1($i43);
    goto corral_source_split_448;

  corral_source_split_448:
    assume {:branchcond $i128} true;
    goto $bb51, $bb52;

  $bb49:
    assume !($i127 == 1bv1);
    goto $bb50;

  $bb50:
    $i217 := $ne.bv32($i60, 0bv32);
    goto corral_source_split_450;

  corral_source_split_450:
    $p219 := $p3;
    goto corral_source_split_451;

  corral_source_split_451:
    $i220 := $load.bytes.bv32($M.0, $p219);
    goto corral_source_split_452;

  corral_source_split_452:
    assume {:branchcond $i217} true;
    goto $bb74, $bb75;

  $bb51:
    assume $i128 == 1bv1;
    goto $bb50;

  $bb52:
    assume !($i128 == 1bv1);
    goto corral_source_split_454;

  corral_source_split_454:
    $p131 := $p7;
    goto corral_source_split_455;

  corral_source_split_455:
    $M.0 := $store.bytes.ref($M.0, $p131, $0.ref);
    goto corral_source_split_456;

  corral_source_split_456:
    $p134 := $add.ref($p7, 8bv64);
    goto corral_source_split_457;

  corral_source_split_457:
    $M.0 := $store.bytes.bv32($M.0, $p134, 0bv32);
    goto corral_source_split_458;

  corral_source_split_458:
    $p135 := $p6;
    goto corral_source_split_459;

  corral_source_split_459:
    $p138 := $add.ref($p7, 16bv64);
    goto corral_source_split_460;

  corral_source_split_460:
    $M.0 := $store.bytes.ref($M.0, $p138, $p135);
    goto corral_source_split_461;

  corral_source_split_461:
    $p141 := $add.ref($p7, 24bv64);
    goto corral_source_split_462;

  corral_source_split_462:
    $M.0 := $store.bytes.bv64($M.0, $p141, 1bv64);
    goto corral_source_split_463;

  corral_source_split_463:
    $p143 := $p6;
    goto corral_source_split_464;

  corral_source_split_464:
    $M.0 := $store.bytes.ref($M.0, $p143, buf);
    goto corral_source_split_465;

  corral_source_split_465:
    $i144 := $sext.bv32.bv64(buflen);
    goto corral_source_split_466;

  corral_source_split_466:
    $p146 := $add.ref($p6, 8bv64);
    goto corral_source_split_467;

  corral_source_split_467:
    $M.0 := $store.bytes.bv64($M.0, $p146, $i144);
    goto corral_source_split_468;

  corral_source_split_468:
    $p149 := $add.ref($p7, 32bv64);
    goto corral_source_split_469;

  corral_source_split_469:
    $M.0 := $store.bytes.ref($M.0, $p149, $0.ref);
    goto corral_source_split_470;

  corral_source_split_470:
    $p152 := $add.ref($p7, 40bv64);
    goto corral_source_split_471;

  corral_source_split_471:
    $M.0 := $store.bytes.bv64($M.0, $p152, 0bv64);
    goto corral_source_split_472;

  corral_source_split_472:
    $p155 := $add.ref($p7, 64bv64);
    goto corral_source_split_473;

  corral_source_split_473:
    $M.0 := $store.bytes.ref($M.0, $p155, $0.ref);
    goto corral_source_split_474;

  corral_source_split_474:
    $p158 := $add.ref($add.ref($p7, 64bv64), 8bv64);
    goto corral_source_split_475;

  corral_source_split_475:
    $M.0 := $store.bytes.bv32($M.0, $p158, 0bv32);
    goto corral_source_split_476;

  corral_source_split_476:
    $p159 := $add.ref($p6, 16bv64);
    goto corral_source_split_477;

  corral_source_split_477:
    $p162 := $add.ref($add.ref($p7, 64bv64), 16bv64);
    goto corral_source_split_478;

  corral_source_split_478:
    $M.0 := $store.bytes.ref($M.0, $p162, $p159);
    goto corral_source_split_479;

  corral_source_split_479:
    $p165 := $add.ref($add.ref($p7, 64bv64), 24bv64);
    goto corral_source_split_480;

  corral_source_split_480:
    $M.0 := $store.bytes.bv64($M.0, $p165, 1bv64);
    goto corral_source_split_481;

  corral_source_split_481:
    $p167 := $add.ref($p6, 16bv64);
    goto corral_source_split_482;

  corral_source_split_482:
    $M.0 := $store.bytes.ref($M.0, $p167, buf2);
    goto corral_source_split_483;

  corral_source_split_483:
    $i168 := $sext.bv32.bv64(buflen2);
    goto corral_source_split_484;

  corral_source_split_484:
    $p170 := $add.ref($add.ref($p6, 16bv64), 8bv64);
    goto corral_source_split_485;

  corral_source_split_485:
    $M.0 := $store.bytes.bv64($M.0, $p170, $i168);
    goto corral_source_split_486;

  corral_source_split_486:
    $p173 := $add.ref($add.ref($p7, 64bv64), 32bv64);
    goto corral_source_split_487;

  corral_source_split_487:
    $M.0 := $store.bytes.ref($M.0, $p173, $0.ref);
    goto corral_source_split_488;

  corral_source_split_488:
    $p176 := $add.ref($add.ref($p7, 64bv64), 40bv64);
    goto corral_source_split_489;

  corral_source_split_489:
    $M.0 := $store.bytes.bv64($M.0, $p176, 0bv64);
    goto corral_source_split_490;

  corral_source_split_490:
    $p178 := $p3;
    goto corral_source_split_491;

  corral_source_split_491:
    $i179 := $load.bytes.bv32($M.0, $p178);
    goto corral_source_split_492;

  corral_source_split_492:
    $p180 := $p7;
    goto corral_source_split_493;

  corral_source_split_493:
    call {:si_unique_call 119} $i181 := __sendmmsg($i179, $p180, 2bv32, 16384bv32);
    call {:si_unique_call 120} {:cexpr "ndg"} boogie_si_record_bv32($i181);
    goto corral_source_split_494;

  corral_source_split_494:
    $i182 := $eq.bv32($i181, 2bv32);
    goto corral_source_split_495;

  corral_source_split_495:
    $i183 := $zext.bv1.bv32($i182);
    goto corral_source_split_496;

  corral_source_split_496:
    call {:si_unique_call 121} $i184 := __builtinx_expect.bv32.bv32($i183, 1bv32);
    goto corral_source_split_497;

  corral_source_split_497:
    $i185 := $ne.bv32($i184, 0bv32);
    goto corral_source_split_498;

  corral_source_split_498:
    assume {:branchcond $i185} true;
    goto $bb53, $bb54;

  $bb53:
    assume $i185 == 1bv1;
    goto corral_source_split_500;

  corral_source_split_500:
    $p187 := $add.ref($p7, 56bv64);
    goto corral_source_split_501;

  corral_source_split_501:
    $i188 := $load.bytes.bv32($M.0, $p187);
    goto corral_source_split_502;

  corral_source_split_502:
    $i189 := $ne.bv32($i188, buflen);
    goto corral_source_split_503;

  corral_source_split_503:
    assume {:branchcond $i189} true;
    goto $bb55, $bb56;

  $bb54:
    assume !($i185 == 1bv1);
    goto corral_source_split_505;

  corral_source_split_505:
    $i197 := $eq.bv32($i181, 1bv32);
    goto corral_source_split_506;

  corral_source_split_506:
    assume {:branchcond $i197} true;
    goto $bb59, $bb60;

  $bb55:
    assume $i189 == 1bv1;
    goto $bb20;

  $bb56:
    assume !($i189 == 1bv1);
    goto corral_source_split_508;

  corral_source_split_508:
    $p191 := $add.ref($add.ref($p7, 64bv64), 56bv64);
    goto corral_source_split_509;

  corral_source_split_509:
    $i192 := $load.bytes.bv32($M.0, $p191);
    goto corral_source_split_510;

  corral_source_split_510:
    $i193 := $ne.bv32($i192, buflen2);
    goto corral_source_split_511;

  corral_source_split_511:
    assume {:branchcond $i193} true;
    goto $bb57, $bb58;

  $bb57:
    assume $i193 == 1bv1;
    goto $bb20;

  $bb58:
    assume !($i193 == 1bv1);
    goto corral_source_split_513;

  corral_source_split_513:
    $p195 := $add.ref($p3, 4bv64);
    goto corral_source_split_514;

  corral_source_split_514:
    $M.0 := $store.bytes.bv16($M.0, $p195, 1bv16);
    goto corral_source_split_515;

  corral_source_split_515:
    $i196 := $add.bv32($i60, 2bv32);
    call {:si_unique_call 122} {:cexpr "nwritten"} boogie_si_record_bv32($i196);
    goto corral_source_split_516;

  corral_source_split_516:
    $i59, $i60, $i61, $i62 := $i94, $i196, $i61, $i62;
    goto $bb14;

  $bb59:
    assume $i197 == 1bv1;
    goto corral_source_split_518;

  corral_source_split_518:
    $p199 := $add.ref($p7, 56bv64);
    goto corral_source_split_519;

  corral_source_split_519:
    $i200 := $load.bytes.bv32($M.0, $p199);
    goto corral_source_split_520;

  corral_source_split_520:
    $i201 := $eq.bv32($i200, buflen);
    goto corral_source_split_521;

  corral_source_split_521:
    assume {:branchcond $i201} true;
    goto $bb62, $bb64;

  $bb60:
    assume !($i197 == 1bv1);
    goto $bb61;

  $bb61:
    $i202 := $slt.bv32($i181, 0bv32);
    goto corral_source_split_523;

  corral_source_split_523:
    assume {:branchcond $i202} true;
    goto $bb65, $bb66;

  $bb62:
    assume $i201 == 1bv1;
    goto $bb63;

  $bb63:
    $i235 := $ne.bv32($i60, 0bv32);
    goto corral_source_split_525;

  corral_source_split_525:
    $i236 := $eq.ref(buf2, $0.ref);
    goto corral_source_split_526;

  corral_source_split_526:
    $i237 := $or.bv1($i235, $i236);
    goto corral_source_split_527;

  corral_source_split_527:
    assume {:branchcond $i237} true;
    goto $bb81, $bb83;

  $bb64:
    assume !($i201 == 1bv1);
    goto $bb61;

  $bb65:
    assume $i202 == 1bv1;
    goto corral_source_split_529;

  corral_source_split_529:
    $i203 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_530;

  corral_source_split_530:
    $i204 := $eq.bv32($i203, 4bv32);
    $i205 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_531;

  corral_source_split_531:
    $i206 := $eq.bv32($i205, 11bv32);
    goto corral_source_split_532;

  corral_source_split_532:
    $i207 := $or.bv1($i204, $i206);
    goto corral_source_split_533;

  corral_source_split_533:
    assume {:branchcond $i207} true;
    goto $bb68, $bb69;

  $bb66:
    assume !($i202 == 1bv1);
    goto $bb67;

  $bb67:
    $i208 := $M.7;
    goto corral_source_split_535;

  corral_source_split_535:
    $i209 := $eq.bv32($i208, 0bv32);
    goto corral_source_split_536;

  corral_source_split_536:
    $i210 := $zext.bv1.bv32($i209);
    goto corral_source_split_537;

  corral_source_split_537:
    call {:si_unique_call 123} $i211 := __builtinx_expect.bv32.bv32($i210, 0bv32);
    goto corral_source_split_538;

  corral_source_split_538:
    $i212 := $ne.bv32($i211, 0bv32);
    goto corral_source_split_539;

  corral_source_split_539:
    assume {:branchcond $i212} true;
    goto $bb70, $bb71;

  $bb68:
    assume $i207 == 1bv1;
    goto $bb16;

  $bb69:
    assume !($i207 == 1bv1);
    goto $bb67;

  $bb70:
    assume $i212 == 1bv1;
    goto corral_source_split_541;

  corral_source_split_541:
    $i213 := $slt.bv32($i181, 0bv32);
    $i214 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_542;

  corral_source_split_542:
    $i215 := $eq.bv32($i214, 38bv32);
    goto corral_source_split_543;

  corral_source_split_543:
    $i216 := $and.bv1($i213, $i215);
    goto corral_source_split_544;

  corral_source_split_544:
    assume {:branchcond $i216} true;
    goto $bb72, $bb73;

  $bb71:
    assume !($i212 == 1bv1);
    goto $bb20;

  $bb72:
    assume $i216 == 1bv1;
    goto corral_source_split_546;

  corral_source_split_546:
    $M.7 := $sub.bv32(0bv32, 1bv32);
    call {:si_unique_call 124} {:cexpr "send_dg.have_sendmmsg"} boogie_si_record_bv32($sub.bv32(0bv32, 1bv32));
    goto corral_source_split_547;

  corral_source_split_547:
    goto $bb50;

  $bb73:
    assume !($i216 == 1bv1);
    goto corral_source_split_549;

  corral_source_split_549:
    $M.7 := 1bv32;
    call {:si_unique_call 125} {:cexpr "send_dg.have_sendmmsg"} boogie_si_record_bv32(1bv32);
    goto corral_source_split_550;

  corral_source_split_550:
    goto $bb20;

  $bb74:
    assume $i217 == 1bv1;
    goto corral_source_split_552;

  corral_source_split_552:
    $i221 := $sext.bv32.bv64(buflen2);
    goto corral_source_split_553;

  corral_source_split_553:
    call {:si_unique_call 126} $i222 := send($i220, buf2, $i221, 16384bv32);
    goto corral_source_split_554;

  corral_source_split_554:
    $i223 := $i222;
    goto $bb76;

  $bb75:
    assume !($i217 == 1bv1);
    goto corral_source_split_556;

  corral_source_split_556:
    $i224 := $sext.bv32.bv64(buflen);
    goto corral_source_split_557;

  corral_source_split_557:
    call {:si_unique_call 127} $i225 := send($i220, buf, $i224, 16384bv32);
    $i223 := $i225;
    goto $bb76;

  $bb76:
    $i226 := $ne.bv32($i60, 0bv32);
    goto corral_source_split_559;

  corral_source_split_559:
    havoc $i227;
    assume ($i226 == 1bv1 ==> $i227 == buflen2) && ($i226 != 1bv1 ==> $i227 == buflen);
    goto corral_source_split_560;

  corral_source_split_560:
    $i228 := $sext.bv32.bv64($i227);
    goto corral_source_split_561;

  corral_source_split_561:
    $i229 := $ne.bv64($i223, $i228);
    goto corral_source_split_562;

  corral_source_split_562:
    assume {:branchcond $i229} true;
    goto $bb77, $bb78;

  $bb77:
    assume $i229 == 1bv1;
    goto corral_source_split_564;

  corral_source_split_564:
    $i230 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_565;

  corral_source_split_565:
    $i231 := $eq.bv32($i230, 4bv32);
    $i232 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_566;

  corral_source_split_566:
    $i233 := $eq.bv32($i232, 11bv32);
    goto corral_source_split_567;

  corral_source_split_567:
    $i234 := $or.bv1($i231, $i233);
    goto corral_source_split_568;

  corral_source_split_568:
    assume {:branchcond $i234} true;
    goto $bb79, $bb80;

  $bb78:
    assume !($i229 == 1bv1);
    goto $bb63;

  $bb79:
    assume $i234 == 1bv1;
    goto $bb16;

  $bb80:
    assume !($i234 == 1bv1);
    goto $bb20;

  $bb81:
    assume $i237 == 1bv1;
    goto $bb82;

  $bb82:
    $p240 := $add.ref($p3, 4bv64);
    goto corral_source_split_570;

  corral_source_split_570:
    $M.0 := $store.bytes.bv16($M.0, $p240, 1bv16);
    goto corral_source_split_571;

  corral_source_split_571:
    goto $bb86;

  $bb83:
    assume !($i237 == 1bv1);
    goto corral_source_split_573;

  corral_source_split_573:
    $i238 := $trunc.bv8.bv1($i43);
    goto corral_source_split_574;

  corral_source_split_574:
    assume {:branchcond $i238} true;
    goto $bb84, $bb85;

  $bb84:
    assume $i238 == 1bv1;
    goto $bb82;

  $bb85:
    assume !($i238 == 1bv1);
    goto corral_source_split_576;

  corral_source_split_576:
    $p242 := $add.ref($p3, 4bv64);
    goto corral_source_split_577;

  corral_source_split_577:
    $M.0 := $store.bytes.bv16($M.0, $p242, 5bv16);
    goto $bb86;

  $bb86:
    $i243 := $add.bv32($i60, 1bv32);
    call {:si_unique_call 128} {:cexpr "nwritten"} boogie_si_record_bv32($i243);
    $i59, $i60, $i61, $i62 := $i94, $i243, $i61, $i62;
    goto $bb14;

  $bb87:
    assume $i249 == 1bv1;
    goto corral_source_split_579;

  corral_source_split_579:
    $i250 := $or.bv32($i61, $i62);
    goto corral_source_split_580;

  corral_source_split_580:
    $i251 := $eq.bv32($i250, 0bv32);
    goto corral_source_split_581;

  corral_source_split_581:
    $i252 := $eq.ref(buf2, $0.ref);
    goto corral_source_split_582;

  corral_source_split_582:
    $i253 := $or.bv1($i251, $i252);
    goto corral_source_split_583;

  corral_source_split_583:
    assume {:branchcond $i253} true;
    goto $bb89, $bb90;

  $bb88:
    assume !($i249 == 1bv1);
    goto corral_source_split_585;

  corral_source_split_585:
    $p492 := $add.ref($p3, 6bv64);
    goto corral_source_split_586;

  corral_source_split_586:
    $i493 := $load.bytes.bv16($M.0, $p492);
    goto corral_source_split_587;

  corral_source_split_587:
    $i494 := $sext.bv16.bv32($i493);
    goto corral_source_split_588;

  corral_source_split_588:
    $i495 := $and.bv32($i494, 56bv32);
    goto corral_source_split_589;

  corral_source_split_589:
    $i496 := $ne.bv32($i495, 0bv32);
    goto corral_source_split_590;

  corral_source_split_590:
    assume {:branchcond $i496} true;
    goto $bb197, $bb198;

  $bb89:
    assume $i253 == 1bv1;
    call {:si_unique_call 129} {:cexpr "thisanssizp"} boogie_si_record_ref(anssizp);
    goto corral_source_split_592;

  corral_source_split_592:
    $i254 := $ne.ref(anscp, $0.ref);
    goto corral_source_split_593;

  corral_source_split_593:
    havoc $p255;
    assume ($i254 == 1bv1 ==> $p255 == anscp) && ($i254 != 1bv1 ==> $p255 == ansp);
    call {:si_unique_call 130} {:cexpr "thisansp"} boogie_si_record_ref($p255);
    goto corral_source_split_594;

  corral_source_split_594:
    $i256 := $ne.ref(anscp, $0.ref);
    goto corral_source_split_595;

  corral_source_split_595:
    $i257 := 1bv1;
    assume {:branchcond $i256} true;
    goto $bb91, $bb93;

  $bb90:
    assume !($i253 == 1bv1);
    goto corral_source_split_597;

  corral_source_split_597:
    $i263 := $load.bv32($M.1, anssizp);
    goto corral_source_split_598;

  corral_source_split_598:
    $i264 := $ne.bv32($i263, 65536bv32);
    goto corral_source_split_599;

  corral_source_split_599:
    assume {:branchcond $i264} true;
    goto $bb95, $bb96;

  $bb91:
    assume $i256 == 1bv1;
    goto $bb92;

  $bb92:
    $i259 := $zext.bv1.bv32($i257);
    goto corral_source_split_601;

  corral_source_split_601:
    call {:si_unique_call 131} __VERIFIER_assert($i259);
    goto SeqInstr_7, SeqInstr_8;

  SeqInstr_7:
    assume !assertsPassed;
    return;

  SeqInstr_8:
    assume assertsPassed;
    goto SeqInstr_9;

  SeqInstr_9:
    call {:si_unique_call 132} {:cexpr "thisresplenp"} boogie_si_record_ref($p5);
    goto corral_source_split_602;

  corral_source_split_602:
    $p260, $p261, $p262 := anssizp, $p255, $p5;
    goto $bb94;

  $bb93:
    assume !($i256 == 1bv1);
    goto corral_source_split_604;

  corral_source_split_604:
    $i258 := $eq.ref(ansp2, $0.ref);
    goto corral_source_split_605;

  corral_source_split_605:
    $i257 := $i258;
    goto $bb92;

  $bb94:
    $i276 := $load.bv32($M.1, $p260);
    goto corral_source_split_607;

  corral_source_split_607:
    $i277 := $slt.bv32($i276, 65536bv32);
    goto corral_source_split_608;

  corral_source_split_608:
    $i278 := $ne.ref(anscp, $0.ref);
    goto corral_source_split_609;

  corral_source_split_609:
    $i279 := $and.bv1($i277, $i278);
    goto corral_source_split_610;

  corral_source_split_610:
    assume {:branchcond $i279} true;
    goto $bb98, $bb99;

  $bb95:
    assume $i264 == 1bv1;
    goto corral_source_split_612;

  corral_source_split_612:
    $i265 := $load.bytes.bv32($M.0, $p5);
    goto corral_source_split_613;

  corral_source_split_613:
    $i266 := $sext.bv32.bv64($i265);
    goto corral_source_split_614;

  corral_source_split_614:
    $i267 := $add.bv64($i266, 4bv64);
    goto corral_source_split_615;

  corral_source_split_615:
    $i268 := $sub.bv64($i267, 1bv64);
    goto corral_source_split_616;

  corral_source_split_616:
    $i269 := $and.bv64($i268, $sub.bv64(0bv64, 4bv64));
    goto corral_source_split_617;

  corral_source_split_617:
    $i270 := $trunc.bv64.bv32($i269);
    call {:si_unique_call 133} {:cexpr "aligned_resplen"} boogie_si_record_bv32($i270);
    goto corral_source_split_618;

  corral_source_split_618:
    $i271 := $sub.bv32($i12, $i270);
    goto corral_source_split_619;

  corral_source_split_619:
    $M.1 := $store.bv32($M.1, anssizp2, $i271);
    goto corral_source_split_620;

  corral_source_split_620:
    $p272 := $load.bytes.ref($M.8, ansp);
    goto corral_source_split_621;

  corral_source_split_621:
    $i273 := $sext.bv32.bv64($i270);
    goto corral_source_split_622;

  corral_source_split_622:
    $p274 := $add.ref($p272, $mul.ref($i273, 1bv64));
    goto corral_source_split_623;

  corral_source_split_623:
    $M.8 := $store.bytes.ref($M.8, ansp2, $p274);
    goto corral_source_split_624;

  corral_source_split_624:
    goto $bb97;

  $bb96:
    assume !($i264 == 1bv1);
    goto corral_source_split_626;

  corral_source_split_626:
    $M.1 := $store.bv32($M.1, anssizp2, $i12);
    goto corral_source_split_627;

  corral_source_split_627:
    $p275 := $load.bytes.ref($M.8, ansp);
    goto corral_source_split_628;

  corral_source_split_628:
    $M.8 := $store.bytes.ref($M.8, ansp2, $p275);
    goto $bb97;

  $bb97:
    call {:si_unique_call 134} {:cexpr "thisanssizp"} boogie_si_record_ref(anssizp2);
    call {:si_unique_call 135} {:cexpr "thisansp"} boogie_si_record_ref(ansp2);
    call {:si_unique_call 136} {:cexpr "thisresplenp"} boogie_si_record_ref(resplen2);
    $p260, $p261, $p262 := anssizp2, ansp2, resplen2;
    goto $bb94;

  $bb98:
    assume $i279 == 1bv1;
    goto corral_source_split_630;

  corral_source_split_630:
    $p281 := $p3;
    goto corral_source_split_631;

  corral_source_split_631:
    $i282 := $load.bytes.bv32($M.0, $p281);
    goto corral_source_split_632;

  corral_source_split_632:
    call {:si_unique_call 137} $i283 := ioctl.bv32.bv64.ref($i282, 21531bv64, $p262);
    goto corral_source_split_633;

  corral_source_split_633:
    $i284 := $slt.bv32($i283, 0bv32);
    goto corral_source_split_634;

  corral_source_split_634:
    assume {:branchcond $i284} true;
    goto $bb101, $bb103;

  $bb99:
    assume !($i279 == 1bv1);
    goto $bb100;

  $bb100:
    $p291 := $load.bytes.ref($M.8, $p261);
    goto corral_source_split_636;

  corral_source_split_636:
    $p292 := $bitcast.ref.ref($p291);
    call {:si_unique_call 138} {:cexpr "anhp"} boogie_si_record_ref($p292);
    goto corral_source_split_637;

  corral_source_split_637:
    $M.0 := $store.bytes.bv32($M.0, $p8, 28bv32);
    goto corral_source_split_638;

  corral_source_split_638:
    $i293 := $load.bytes.bv32($M.0, $p8);
    goto corral_source_split_639;

  corral_source_split_639:
    $i294 := $zext.bv32.bv64($i293);
    goto corral_source_split_640;

  corral_source_split_640:
    $i295 := $ule.bv64(28bv64, $i294);
    goto corral_source_split_641;

  corral_source_split_641:
    $i296 := $zext.bv1.bv32($i295);
    goto corral_source_split_642;

  corral_source_split_642:
    call {:si_unique_call 139} __VERIFIER_assert($i296);
    goto SeqInstr_10, SeqInstr_11;

  SeqInstr_10:
    assume !assertsPassed;
    return;

  SeqInstr_11:
    assume assertsPassed;
    goto SeqInstr_12;

  SeqInstr_12:
    goto corral_source_split_643;

  corral_source_split_643:
    $p298 := $p3;
    goto corral_source_split_644;

  corral_source_split_644:
    $i299 := $load.bytes.bv32($M.0, $p298);
    goto corral_source_split_645;

  corral_source_split_645:
    $p300 := $load.bytes.ref($M.8, $p261);
    goto corral_source_split_646;

  corral_source_split_646:
    $i301 := $load.bv32($M.1, $p260);
    goto corral_source_split_647;

  corral_source_split_647:
    $i302 := $sext.bv32.bv64($i301);
    goto corral_source_split_648;

  corral_source_split_648:
    $p303 := $bitcast.ref.ref($p9);
    goto corral_source_split_649;

  corral_source_split_649:
    $p304 := $bitcast.ref.ref($p4);
    goto corral_source_split_650;

  corral_source_split_650:
    $M.10 := $store.ref($M.10, $p303, $p304);
    goto corral_source_split_651;

  corral_source_split_651:
    $p305 := $p9;
    goto corral_source_split_652;

  corral_source_split_652:
    $p306 := $load.ref($M.10, $p305);
    goto corral_source_split_653;

  corral_source_split_653:
    call {:si_unique_call 140} $i307 := recvfrom($i299, $p300, $i302, 0bv32, $p306, $p8);
    goto corral_source_split_654;

  corral_source_split_654:
    $i308 := $trunc.bv64.bv32($i307);
    goto corral_source_split_655;

  corral_source_split_655:
    $M.0 := $store.bytes.bv32($M.0, $p262, $i308);
    goto corral_source_split_656;

  corral_source_split_656:
    $i309 := $load.bytes.bv32($M.0, $p262);
    goto corral_source_split_657;

  corral_source_split_657:
    $i310 := $sle.bv32($i309, 0bv32);
    goto corral_source_split_658;

  corral_source_split_658:
    $i311 := $zext.bv1.bv32($i310);
    goto corral_source_split_659;

  corral_source_split_659:
    call {:si_unique_call 141} $i312 := __builtinx_expect.bv32.bv32($i311, 0bv32);
    goto corral_source_split_660;

  corral_source_split_660:
    $i313 := $ne.bv32($i312, 0bv32);
    goto corral_source_split_661;

  corral_source_split_661:
    assume {:branchcond $i313} true;
    goto $bb110, $bb111;

  $bb101:
    assume $i284 == 1bv1;
    goto $bb102;

  $bb102:
    call {:si_unique_call 142} $p288 := malloc(65536bv64);
    call {:si_unique_call 143} {:cexpr "newp"} boogie_si_record_ref($p288);
    goto corral_source_split_663;

  corral_source_split_663:
    $i289 := $ne.ref($p288, $0.ref);
    goto corral_source_split_664;

  corral_source_split_664:
    assume {:branchcond $i289} true;
    goto $bb106, $bb107;

  $bb103:
    assume !($i284 == 1bv1);
    goto corral_source_split_666;

  corral_source_split_666:
    $i285 := $load.bv32($M.1, $p260);
    goto corral_source_split_667;

  corral_source_split_667:
    $i286 := $load.bytes.bv32($M.0, $p262);
    goto corral_source_split_668;

  corral_source_split_668:
    $i287 := $slt.bv32($i285, $i286);
    goto corral_source_split_669;

  corral_source_split_669:
    assume {:branchcond $i287} true;
    goto $bb104, $bb105;

  $bb104:
    assume $i287 == 1bv1;
    goto $bb102;

  $bb105:
    assume !($i287 == 1bv1);
    goto $bb100;

  $bb106:
    assume $i289 == 1bv1;
    goto corral_source_split_671;

  corral_source_split_671:
    $M.1 := $store.bv32($M.1, anssizp, 65536bv32);
    call {:si_unique_call 144} {:cexpr "ans"} boogie_si_record_ref($p288);
    goto corral_source_split_672;

  corral_source_split_672:
    $M.8 := $store.bytes.ref($M.8, $p261, $p288);
    goto corral_source_split_673;

  corral_source_split_673:
    $i290 := $eq.ref($p261, ansp2);
    goto corral_source_split_674;

  corral_source_split_674:
    assume {:branchcond $i290} true;
    goto $bb108, $bb109;

  $bb107:
    assume !($i289 == 1bv1);
    goto $bb100;

  $bb108:
    assume $i290 == 1bv1;
    goto corral_source_split_676;

  corral_source_split_676:
    $M.9 := $store.bv32($M.9, ansp2_malloced, 1bv32);
    goto corral_source_split_677;

  corral_source_split_677:
    goto $bb100;

  $bb109:
    assume !($i290 == 1bv1);
    goto $bb100;

  $bb110:
    assume $i313 == 1bv1;
    goto corral_source_split_679;

  corral_source_split_679:
    $i314 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_680;

  corral_source_split_680:
    $i315 := $eq.bv32($i314, 4bv32);
    $i316 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_681;

  corral_source_split_681:
    $i317 := $eq.bv32($i316, 11bv32);
    goto corral_source_split_682;

  corral_source_split_682:
    $i318 := $or.bv1($i315, $i317);
    goto corral_source_split_683;

  corral_source_split_683:
    assume {:branchcond $i318} true;
    goto $bb112, $bb113;

  $bb111:
    assume !($i313 == 1bv1);
    goto corral_source_split_685;

  corral_source_split_685:
    $M.2 := $store.bv32($M.2, gotsomewhere, 1bv32);
    goto corral_source_split_686;

  corral_source_split_686:
    $i319 := $load.bytes.bv32($M.0, $p262);
    goto corral_source_split_687;

  corral_source_split_687:
    $i320 := $slt.bv32($i319, 12bv32);
    goto corral_source_split_688;

  corral_source_split_688:
    $i321 := $zext.bv1.bv32($i320);
    goto corral_source_split_689;

  corral_source_split_689:
    call {:si_unique_call 145} $i322 := __builtinx_expect.bv32.bv32($i321, 0bv32);
    goto corral_source_split_690;

  corral_source_split_690:
    $i323 := $ne.bv32($i322, 0bv32);
    goto corral_source_split_691;

  corral_source_split_691:
    assume {:branchcond $i323} true;
    goto $bb114, $bb115;

  $bb112:
    assume $i318 == 1bv1;
    call {:si_unique_call 146} {:cexpr "need_recompute"} boogie_si_record_bv32(1bv32);
    goto corral_source_split_693;

  corral_source_split_693:
    $i59, $i60, $i61, $i62 := 1bv32, $i60, $i61, $i62;
    goto $bb14;

  $bb113:
    assume !($i318 == 1bv1);
    goto $bb20;

  $bb114:
    assume $i323 == 1bv1;
    goto corral_source_split_695;

  corral_source_split_695:
    $M.11 := $store.bv32($M.11, terrno, 90bv32);
    goto corral_source_split_696;

  corral_source_split_696:
    goto $bb20;

  $bb115:
    assume !($i323 == 1bv1);
    goto corral_source_split_698;

  corral_source_split_698:
    $i324 := $ne.bv32($i61, 0bv32);
    goto corral_source_split_699;

  corral_source_split_699:
    assume {:branchcond $i324} true;
    goto $bb116, $bb118;

  $bb116:
    assume $i324 == 1bv1;
    goto $bb117;

  $bb117:
    $i334 := $ne.bv32($i62, 0bv32);
    goto corral_source_split_701;

  corral_source_split_701:
    $i59, $i60, $i61, $i62 := $i94, $i60, $i61, $i62;
    assume {:branchcond $i334} true;
    goto $bb122, $bb123;

  $bb118:
    assume !($i324 == 1bv1);
    goto corral_source_split_703;

  corral_source_split_703:
    $p325 := $bitcast.ref.ref($p10);
    goto corral_source_split_704;

  corral_source_split_704:
    $i326 := $load.bytes.bv96($M.0, $p325);
    goto corral_source_split_705;

  corral_source_split_705:
    $i327 := $and.bv96($i326, 65535bv96);
    goto corral_source_split_706;

  corral_source_split_706:
    $i328 := $trunc.bv96.bv32($i327);
    goto corral_source_split_707;

  corral_source_split_707:
    $p329 := $bitcast.ref.ref($p292);
    goto corral_source_split_708;

  corral_source_split_708:
    $i330 := $load.bytes.bv96($M.0, $p329);
    goto corral_source_split_709;

  corral_source_split_709:
    $i331 := $and.bv96($i330, 65535bv96);
    goto corral_source_split_710;

  corral_source_split_710:
    $i332 := $trunc.bv96.bv32($i331);
    goto corral_source_split_711;

  corral_source_split_711:
    $i333 := $ne.bv32($i328, $i332);
    goto corral_source_split_712;

  corral_source_split_712:
    assume {:branchcond $i333} true;
    goto $bb119, $bb120;

  $bb119:
    assume $i333 == 1bv1;
    goto $bb117;

  $bb120:
    assume !($i333 == 1bv1);
    goto $bb121;

  $bb121:
    $p344 := $add.ref(statp, 8bv64);
    goto corral_source_split_714;

  corral_source_split_714:
    $i345 := $load.bytes.bv64($M.0, $p344);
    goto corral_source_split_715;

  corral_source_split_715:
    $i346 := $and.bv64($i345, 1024bv64);
    goto corral_source_split_716;

  corral_source_split_716:
    $i347 := $ne.bv64($i346, 0bv64);
    goto corral_source_split_717;

  corral_source_split_717:
    assume {:branchcond $i347} true;
    goto $bb126, $bb128;

  $bb122:
    assume $i334 == 1bv1;
    goto $bb14;

  $bb123:
    assume !($i334 == 1bv1);
    goto corral_source_split_719;

  corral_source_split_719:
    $p335 := $bitcast.ref.ref($p11);
    goto corral_source_split_720;

  corral_source_split_720:
    $i336 := $load.bytes.bv96($M.0, $p335);
    goto corral_source_split_721;

  corral_source_split_721:
    $i337 := $and.bv96($i336, 65535bv96);
    goto corral_source_split_722;

  corral_source_split_722:
    $i338 := $trunc.bv96.bv32($i337);
    goto corral_source_split_723;

  corral_source_split_723:
    $p339 := $bitcast.ref.ref($p292);
    goto corral_source_split_724;

  corral_source_split_724:
    $i340 := $load.bytes.bv96($M.0, $p339);
    goto corral_source_split_725;

  corral_source_split_725:
    $i341 := $and.bv96($i340, 65535bv96);
    goto corral_source_split_726;

  corral_source_split_726:
    $i342 := $trunc.bv96.bv32($i341);
    goto corral_source_split_727;

  corral_source_split_727:
    $i343 := $ne.bv32($i338, $i342);
    goto corral_source_split_728;

  corral_source_split_728:
    $i59, $i60, $i61, $i62 := $i94, $i60, $i61, $i62;
    assume {:branchcond $i343} true;
    goto $bb124, $bb125;

  $bb124:
    assume $i343 == 1bv1;
    goto $bb14;

  $bb125:
    assume !($i343 == 1bv1);
    goto $bb121;

  $bb126:
    assume $i347 == 1bv1;
    goto $bb127;

  $bb127:
    $p350 := $bitcast.ref.ref($p292);
    goto corral_source_split_730;

  corral_source_split_730:
    $i351 := $load.bytes.bv96($M.0, $p350);
    goto corral_source_split_731;

  corral_source_split_731:
    $i352 := $lshr.bv96($i351, 24bv96);
    goto corral_source_split_732;

  corral_source_split_732:
    $i353 := $and.bv96($i352, 15bv96);
    goto corral_source_split_733;

  corral_source_split_733:
    $i354 := $trunc.bv96.bv32($i353);
    goto corral_source_split_734;

  corral_source_split_734:
    $i355 := $eq.bv32($i354, 1bv32);
    goto corral_source_split_735;

  corral_source_split_735:
    assume {:branchcond $i355} true;
    goto $bb131, $bb132;

  $bb128:
    assume !($i347 == 1bv1);
    goto corral_source_split_737;

  corral_source_split_737:
    call {:si_unique_call 147} $i348 := res_ourserver_p(statp, $p4);
    goto corral_source_split_738;

  corral_source_split_738:
    $i349 := $ne.bv32($i348, 0bv32);
    goto corral_source_split_739;

  corral_source_split_739:
    $i59, $i60, $i61, $i62 := $i94, $i60, $i61, $i62;
    assume {:branchcond $i349} true;
    goto $bb129, $bb130;

  $bb129:
    assume $i349 == 1bv1;
    goto $bb127;

  $bb130:
    assume !($i349 == 1bv1);
    goto $bb14;

  $bb131:
    assume $i355 == 1bv1;
    goto corral_source_split_741;

  corral_source_split_741:
    $p356 := $add.ref(statp, 8bv64);
    goto corral_source_split_742;

  corral_source_split_742:
    $i357 := $load.bytes.bv64($M.0, $p356);
    goto corral_source_split_743;

  corral_source_split_743:
    $i358 := $and.bv64($i357, 1048576bv64);
    goto corral_source_split_744;

  corral_source_split_744:
    $i359 := $ne.bv64($i358, 0bv64);
    goto corral_source_split_745;

  corral_source_split_745:
    assume {:branchcond $i359} true;
    goto $bb134, $bb135;

  $bb132:
    assume !($i355 == 1bv1);
    goto $bb133;

  $bb133:
    $p363 := $add.ref(statp, 8bv64);
    goto corral_source_split_747;

  corral_source_split_747:
    $i364 := $load.bytes.bv64($M.0, $p363);
    goto corral_source_split_748;

  corral_source_split_748:
    $i365 := $and.bv64($i364, 2048bv64);
    goto corral_source_split_749;

  corral_source_split_749:
    $i366 := $ne.bv64($i365, 0bv64);
    goto corral_source_split_750;

  corral_source_split_750:
    assume {:branchcond $i366} true;
    goto $bb136, $bb138;

  $bb134:
    assume $i359 == 1bv1;
    goto corral_source_split_752;

  corral_source_split_752:
    $p360 := $add.ref(statp, 504bv64);
    goto corral_source_split_753;

  corral_source_split_753:
    $i361 := $load.bytes.bv32($M.0, $p360);
    goto corral_source_split_754;

  corral_source_split_754:
    $i362 := $or.bv32($i361, 4bv32);
    goto corral_source_split_755;

  corral_source_split_755:
    $M.0 := $store.bytes.bv32($M.0, $p360, $i362);
    goto corral_source_split_756;

  corral_source_split_756:
    goto $bb20;

  $bb135:
    assume !($i359 == 1bv1);
    goto $bb133;

  $bb136:
    assume $i366 == 1bv1;
    goto $bb137;

  $bb137:
    $p387 := $bitcast.ref.ref($p292);
    goto corral_source_split_758;

  corral_source_split_758:
    $i388 := $load.bytes.bv96($M.0, $p387);
    goto corral_source_split_759;

  corral_source_split_759:
    $i389 := $lshr.bv96($i388, 24bv96);
    goto corral_source_split_760;

  corral_source_split_760:
    $i390 := $and.bv96($i389, 15bv96);
    goto corral_source_split_761;

  corral_source_split_761:
    $i391 := $trunc.bv96.bv32($i390);
    goto corral_source_split_762;

  corral_source_split_762:
    $i392 := $eq.bv32($i391, 2bv32);
    goto corral_source_split_763;

  corral_source_split_763:
    assume {:branchcond $i392} true;
    goto $bb148, $bb150;

  $bb138:
    assume !($i366 == 1bv1);
    goto corral_source_split_765;

  corral_source_split_765:
    $i367 := $ne.bv32($i61, 0bv32);
    goto corral_source_split_766;

  corral_source_split_766:
    assume {:branchcond $i367} true;
    goto $bb139, $bb141;

  $bb139:
    assume $i367 == 1bv1;
    goto $bb140;

  $bb140:
    $i377 := $ne.bv32($i62, 0bv32);
    goto corral_source_split_768;

  corral_source_split_768:
    $i59, $i60, $i61, $i62 := $i94, $i60, $i61, $i62;
    assume {:branchcond $i377} true;
    goto $bb144, $bb145;

  $bb141:
    assume !($i367 == 1bv1);
    goto corral_source_split_770;

  corral_source_split_770:
    $i368 := $sext.bv32.bv64(buflen);
    goto corral_source_split_771;

  corral_source_split_771:
    $p369 := $add.ref(buf, $mul.ref($i368, 1bv64));
    goto corral_source_split_772;

  corral_source_split_772:
    $p370 := $load.bytes.ref($M.8, $p261);
    goto corral_source_split_773;

  corral_source_split_773:
    $p371 := $load.bytes.ref($M.8, $p261);
    goto corral_source_split_774;

  corral_source_split_774:
    $i372 := $load.bv32($M.1, $p260);
    goto corral_source_split_775;

  corral_source_split_775:
    $i373 := $sext.bv32.bv64($i372);
    goto corral_source_split_776;

  corral_source_split_776:
    $p374 := $add.ref($p371, $mul.ref($i373, 1bv64));
    goto corral_source_split_777;

  corral_source_split_777:
    call {:si_unique_call 148} $i375 := __res_queriesmatch(buf, $p369, $p370, $p374);
    goto corral_source_split_778;

  corral_source_split_778:
    $i376 := $ne.bv32($i375, 0bv32);
    goto corral_source_split_779;

  corral_source_split_779:
    assume {:branchcond $i376} true;
    goto $bb142, $bb143;

  $bb142:
    assume $i376 == 1bv1;
    goto $bb137;

  $bb143:
    assume !($i376 == 1bv1);
    goto $bb140;

  $bb144:
    assume $i377 == 1bv1;
    goto $bb14;

  $bb145:
    assume !($i377 == 1bv1);
    goto corral_source_split_781;

  corral_source_split_781:
    $i378 := $sext.bv32.bv64(buflen2);
    goto corral_source_split_782;

  corral_source_split_782:
    $p379 := $add.ref(buf2, $mul.ref($i378, 1bv64));
    goto corral_source_split_783;

  corral_source_split_783:
    $p380 := $load.bytes.ref($M.8, $p261);
    goto corral_source_split_784;

  corral_source_split_784:
    $p381 := $load.bytes.ref($M.8, $p261);
    goto corral_source_split_785;

  corral_source_split_785:
    $i382 := $load.bv32($M.1, $p260);
    goto corral_source_split_786;

  corral_source_split_786:
    $i383 := $sext.bv32.bv64($i382);
    goto corral_source_split_787;

  corral_source_split_787:
    $p384 := $add.ref($p381, $mul.ref($i383, 1bv64));
    goto corral_source_split_788;

  corral_source_split_788:
    call {:si_unique_call 149} $i385 := __res_queriesmatch(buf2, $p379, $p380, $p384);
    goto corral_source_split_789;

  corral_source_split_789:
    $i386 := $ne.bv32($i385, 0bv32);
    goto corral_source_split_790;

  corral_source_split_790:
    $i59, $i60, $i61, $i62 := $i94, $i60, $i61, $i62;
    assume {:branchcond $i386} true;
    goto $bb146, $bb147;

  $bb146:
    assume $i386 == 1bv1;
    goto $bb137;

  $bb147:
    assume !($i386 == 1bv1);
    goto $bb14;

  $bb148:
    assume $i392 == 1bv1;
    goto $bb149;

  $bb149:
    $i405 := $ne.bv32($i61, 0bv32);
    goto corral_source_split_792;

  corral_source_split_792:
    assume {:branchcond $i405} true;
    goto $bb156, $bb158;

  $bb150:
    assume !($i392 == 1bv1);
    goto corral_source_split_794;

  corral_source_split_794:
    $p393 := $bitcast.ref.ref($p292);
    goto corral_source_split_795;

  corral_source_split_795:
    $i394 := $load.bytes.bv96($M.0, $p393);
    goto corral_source_split_796;

  corral_source_split_796:
    $i395 := $lshr.bv96($i394, 24bv96);
    goto corral_source_split_797;

  corral_source_split_797:
    $i396 := $and.bv96($i395, 15bv96);
    goto corral_source_split_798;

  corral_source_split_798:
    $i397 := $trunc.bv96.bv32($i396);
    goto corral_source_split_799;

  corral_source_split_799:
    $i398 := $eq.bv32($i397, 4bv32);
    goto corral_source_split_800;

  corral_source_split_800:
    assume {:branchcond $i398} true;
    goto $bb151, $bb152;

  $bb151:
    assume $i398 == 1bv1;
    goto $bb149;

  $bb152:
    assume !($i398 == 1bv1);
    goto corral_source_split_802;

  corral_source_split_802:
    $p399 := $bitcast.ref.ref($p292);
    goto corral_source_split_803;

  corral_source_split_803:
    $i400 := $load.bytes.bv96($M.0, $p399);
    goto corral_source_split_804;

  corral_source_split_804:
    $i401 := $lshr.bv96($i400, 24bv96);
    goto corral_source_split_805;

  corral_source_split_805:
    $i402 := $and.bv96($i401, 15bv96);
    goto corral_source_split_806;

  corral_source_split_806:
    $i403 := $trunc.bv96.bv32($i402);
    goto corral_source_split_807;

  corral_source_split_807:
    $i404 := $eq.bv32($i403, 5bv32);
    goto corral_source_split_808;

  corral_source_split_808:
    assume {:branchcond $i404} true;
    goto $bb153, $bb154;

  $bb153:
    assume $i404 == 1bv1;
    goto $bb149;

  $bb154:
    assume !($i404 == 1bv1);
    goto $bb155;

  $bb155:
    $p423 := $bitcast.ref.ref($p292);
    goto corral_source_split_810;

  corral_source_split_810:
    $i424 := $load.bytes.bv96($M.0, $p423);
    goto corral_source_split_811;

  corral_source_split_811:
    $i425 := $lshr.bv96($i424, 24bv96);
    goto corral_source_split_812;

  corral_source_split_812:
    $i426 := $and.bv96($i425, 15bv96);
    goto corral_source_split_813;

  corral_source_split_813:
    $i427 := $trunc.bv96.bv32($i426);
    goto corral_source_split_814;

  corral_source_split_814:
    $i428 := $eq.bv32($i427, 0bv32);
    goto corral_source_split_815;

  corral_source_split_815:
    assume {:branchcond $i428} true;
    goto $bb167, $bb168;

  $bb156:
    assume $i405 == 1bv1;
    goto $bb157;

  $bb157:
    $M.0 := $store.bytes.bv32($M.0, resplen2, 0bv32);
    goto corral_source_split_817;

  corral_source_split_817:
    $i409 := $load.bytes.bv32($M.0, $p5);
    goto corral_source_split_818;

  corral_source_split_818:
    $i44 := $i409;
    goto $bb11;

  $bb158:
    assume !($i405 == 1bv1);
    goto corral_source_split_820;

  corral_source_split_820:
    $i406 := $ne.ref(buf2, $0.ref);
    goto corral_source_split_821;

  corral_source_split_821:
    $i407 := $ne.bv32($i62, 0bv32);
    goto corral_source_split_822;

  corral_source_split_822:
    $i408 := $and.bv1($i406, $i407);
    goto corral_source_split_823;

  corral_source_split_823:
    assume {:branchcond $i408} true;
    goto $bb159, $bb160;

  $bb159:
    assume $i408 == 1bv1;
    goto $bb157;

  $bb160:
    assume !($i408 == 1bv1);
    goto corral_source_split_825;

  corral_source_split_825:
    $i410 := $ne.ref(buf2, $0.ref);
    goto corral_source_split_826;

  corral_source_split_826:
    assume {:branchcond $i410} true;
    goto $bb161, $bb162;

  $bb161:
    assume $i410 == 1bv1;
    goto corral_source_split_828;

  corral_source_split_828:
    $M.0 := $store.bytes.bv32($M.0, $p5, 0bv32);
    goto corral_source_split_829;

  corral_source_split_829:
    $p411 := $bitcast.ref.ref($p10);
    goto corral_source_split_830;

  corral_source_split_830:
    $i412 := $load.bytes.bv96($M.0, $p411);
    goto corral_source_split_831;

  corral_source_split_831:
    $i413 := $and.bv96($i412, 65535bv96);
    goto corral_source_split_832;

  corral_source_split_832:
    $i414 := $trunc.bv96.bv32($i413);
    goto corral_source_split_833;

  corral_source_split_833:
    $p415 := $bitcast.ref.ref($p292);
    goto corral_source_split_834;

  corral_source_split_834:
    $i416 := $load.bytes.bv96($M.0, $p415);
    goto corral_source_split_835;

  corral_source_split_835:
    $i417 := $and.bv96($i416, 65535bv96);
    goto corral_source_split_836;

  corral_source_split_836:
    $i418 := $trunc.bv96.bv32($i417);
    goto corral_source_split_837;

  corral_source_split_837:
    $i419 := $eq.bv32($i414, $i418);
    goto corral_source_split_838;

  corral_source_split_838:
    assume {:branchcond $i419} true;
    goto $bb163, $bb164;

  $bb162:
    assume !($i410 == 1bv1);
    goto corral_source_split_840;

  corral_source_split_840:
    call {:si_unique_call 150} __res_iclose(statp, 0bv1);
    goto corral_source_split_841;

  corral_source_split_841:
    $p420 := $add.ref(statp, 384bv64);
    goto corral_source_split_842;

  corral_source_split_842:
    $i421 := $load.bytes.bv64($M.0, $p420);
    goto corral_source_split_843;

  corral_source_split_843:
    $i422 := $ne.bv64($i421, 0bv64);
    goto corral_source_split_844;

  corral_source_split_844:
    assume {:branchcond $i422} true;
    goto $bb165, $bb166;

  $bb163:
    assume $i419 == 1bv1;
    call {:si_unique_call 151} {:cexpr "recvresp1"} boogie_si_record_bv32(1bv32);
    goto corral_source_split_846;

  corral_source_split_846:
    $i59, $i60, $i61, $i62 := $i94, $i60, 1bv32, $i62;
    goto $bb14;

  $bb164:
    assume !($i419 == 1bv1);
    call {:si_unique_call 152} {:cexpr "recvresp2"} boogie_si_record_bv32(1bv32);
    $i59, $i60, $i61, $i62 := $i94, $i60, $i61, 1bv32;
    goto $bb14;

  $bb165:
    assume $i422 == 1bv1;
    goto $bb155;

  $bb166:
    assume !($i422 == 1bv1);
    goto corral_source_split_848;

  corral_source_split_848:
    $i44 := 0bv32;
    goto $bb11;

  $bb167:
    assume $i428 == 1bv1;
    goto corral_source_split_850;

  corral_source_split_850:
    $p429 := $bitcast.ref.ref($p292);
    goto corral_source_split_851;

  corral_source_split_851:
    $i430 := $load.bytes.bv96($M.0, $p429);
    goto corral_source_split_852;

  corral_source_split_852:
    $i431 := $lshr.bv96($i430, 48bv96);
    goto corral_source_split_853;

  corral_source_split_853:
    $i432 := $and.bv96($i431, 65535bv96);
    goto corral_source_split_854;

  corral_source_split_854:
    $i433 := $trunc.bv96.bv32($i432);
    goto corral_source_split_855;

  corral_source_split_855:
    $i434 := $eq.bv32($i433, 0bv32);
    goto corral_source_split_856;

  corral_source_split_856:
    assume {:branchcond $i434} true;
    goto $bb170, $bb171;

  $bb168:
    assume !($i428 == 1bv1);
    goto $bb169;

  $bb169:
    $p452 := $add.ref(statp, 8bv64);
    goto corral_source_split_858;

  corral_source_split_858:
    $i453 := $load.bytes.bv64($M.0, $p452);
    goto corral_source_split_859;

  corral_source_split_859:
    $i454 := $and.bv64($i453, 32bv64);
    goto corral_source_split_860;

  corral_source_split_860:
    $i455 := $ne.bv64($i454, 0bv64);
    goto corral_source_split_861;

  corral_source_split_861:
    assume {:branchcond $i455} true;
    goto $bb178, $bb180;

  $bb170:
    assume $i434 == 1bv1;
    goto corral_source_split_863;

  corral_source_split_863:
    $p435 := $bitcast.ref.ref($p292);
    goto corral_source_split_864;

  corral_source_split_864:
    $i436 := $load.bytes.bv96($M.0, $p435);
    goto corral_source_split_865;

  corral_source_split_865:
    $i437 := $lshr.bv96($i436, 18bv96);
    goto corral_source_split_866;

  corral_source_split_866:
    $i438 := $and.bv96($i437, 1bv96);
    goto corral_source_split_867;

  corral_source_split_867:
    $i439 := $trunc.bv96.bv32($i438);
    goto corral_source_split_868;

  corral_source_split_868:
    $i440 := $eq.bv32($i439, 0bv32);
    goto corral_source_split_869;

  corral_source_split_869:
    assume {:branchcond $i440} true;
    goto $bb172, $bb173;

  $bb171:
    assume !($i434 == 1bv1);
    goto $bb169;

  $bb172:
    assume $i440 == 1bv1;
    goto corral_source_split_871;

  corral_source_split_871:
    $p441 := $bitcast.ref.ref($p292);
    goto corral_source_split_872;

  corral_source_split_872:
    $i442 := $load.bytes.bv96($M.0, $p441);
    goto corral_source_split_873;

  corral_source_split_873:
    $i443 := $lshr.bv96($i442, 31bv96);
    goto corral_source_split_874;

  corral_source_split_874:
    $i444 := $and.bv96($i443, 1bv96);
    goto corral_source_split_875;

  corral_source_split_875:
    $i445 := $trunc.bv96.bv32($i444);
    goto corral_source_split_876;

  corral_source_split_876:
    $i446 := $eq.bv32($i445, 0bv32);
    goto corral_source_split_877;

  corral_source_split_877:
    assume {:branchcond $i446} true;
    goto $bb174, $bb175;

  $bb173:
    assume !($i440 == 1bv1);
    goto $bb169;

  $bb174:
    assume $i446 == 1bv1;
    goto corral_source_split_879;

  corral_source_split_879:
    $p447 := $bitcast.ref.ref($p292);
    goto corral_source_split_880;

  corral_source_split_880:
    $i448 := $load.bytes.bv96($M.0, $p447);
    goto corral_source_split_881;

  corral_source_split_881:
    $i449 := $lshr.bv96($i448, 80bv96);
    goto corral_source_split_882;

  corral_source_split_882:
    $i450 := $trunc.bv96.bv32($i449);
    goto corral_source_split_883;

  corral_source_split_883:
    $i451 := $eq.bv32($i450, 0bv32);
    goto corral_source_split_884;

  corral_source_split_884:
    assume {:branchcond $i451} true;
    goto $bb176, $bb177;

  $bb175:
    assume !($i446 == 1bv1);
    goto $bb169;

  $bb176:
    assume $i451 == 1bv1;
    goto $bb149;

  $bb177:
    assume !($i451 == 1bv1);
    goto $bb169;

  $bb178:
    assume $i455 == 1bv1;
    goto $bb179;

  $bb179:
    $i462 := $eq.bv32($i61, 0bv32);
    goto corral_source_split_886;

  corral_source_split_886:
    assume {:branchcond $i462} true;
    goto $bb183, $bb184;

  $bb180:
    assume !($i455 == 1bv1);
    goto corral_source_split_888;

  corral_source_split_888:
    $p456 := $bitcast.ref.ref($p292);
    goto corral_source_split_889;

  corral_source_split_889:
    $i457 := $load.bytes.bv96($M.0, $p456);
    goto corral_source_split_890;

  corral_source_split_890:
    $i458 := $lshr.bv96($i457, 17bv96);
    goto corral_source_split_891;

  corral_source_split_891:
    $i459 := $and.bv96($i458, 1bv96);
    goto corral_source_split_892;

  corral_source_split_892:
    $i460 := $trunc.bv96.bv32($i459);
    goto corral_source_split_893;

  corral_source_split_893:
    $i461 := $ne.bv32($i460, 0bv32);
    goto corral_source_split_894;

  corral_source_split_894:
    assume {:branchcond $i461} true;
    goto $bb181, $bb182;

  $bb181:
    assume $i461 == 1bv1;
    goto corral_source_split_896;

  corral_source_split_896:
    $M.12 := $store.bv32($M.12, v_circuit, 1bv32);
    goto corral_source_split_897;

  corral_source_split_897:
    call {:si_unique_call 153} __res_iclose(statp, 0bv1);
    goto corral_source_split_898;

  corral_source_split_898:
    $i44 := 1bv32;
    goto $bb11;

  $bb182:
    assume !($i461 == 1bv1);
    goto $bb179;

  $bb183:
    assume $i462 == 1bv1;
    goto corral_source_split_900;

  corral_source_split_900:
    $p463 := $bitcast.ref.ref($p10);
    goto corral_source_split_901;

  corral_source_split_901:
    $i464 := $load.bytes.bv96($M.0, $p463);
    goto corral_source_split_902;

  corral_source_split_902:
    $i465 := $and.bv96($i464, 65535bv96);
    goto corral_source_split_903;

  corral_source_split_903:
    $i466 := $trunc.bv96.bv32($i465);
    goto corral_source_split_904;

  corral_source_split_904:
    $p467 := $bitcast.ref.ref($p292);
    goto corral_source_split_905;

  corral_source_split_905:
    $i468 := $load.bytes.bv96($M.0, $p467);
    goto corral_source_split_906;

  corral_source_split_906:
    $i469 := $and.bv96($i468, 65535bv96);
    goto corral_source_split_907;

  corral_source_split_907:
    $i470 := $trunc.bv96.bv32($i469);
    goto corral_source_split_908;

  corral_source_split_908:
    $i471 := $eq.bv32($i466, $i470);
    goto corral_source_split_909;

  corral_source_split_909:
    assume {:branchcond $i471} true;
    goto $bb186, $bb187;

  $bb184:
    assume !($i462 == 1bv1);
    goto $bb185;

  $bb185:
    call {:si_unique_call 154} {:cexpr "recvresp2"} boogie_si_record_bv32(1bv32);
    $i472, $i473 := $i61, 1bv32;
    goto $bb188;

  $bb186:
    assume $i471 == 1bv1;
    call {:si_unique_call 155} {:cexpr "recvresp1"} boogie_si_record_bv32(1bv32);
    goto corral_source_split_911;

  corral_source_split_911:
    $i472, $i473 := 1bv32, $i62;
    goto $bb188;

  $bb187:
    assume !($i471 == 1bv1);
    goto $bb185;

  $bb188:
    $i474 := $and.bv32($i472, $i473);
    goto corral_source_split_913;

  corral_source_split_913:
    $i475 := $eq.bv32($i474, 0bv32);
    goto corral_source_split_914;

  corral_source_split_914:
    assume {:branchcond $i475} true;
    goto $bb189, $bb190;

  $bb189:
    assume $i475 == 1bv1;
    goto corral_source_split_916;

  corral_source_split_916:
    $i476 := $trunc.bv8.bv1($i43);
    goto corral_source_split_917;

  corral_source_split_917:
    $i59, $i60, $i61, $i62 := $i94, $i60, $i472, $i473;
    assume {:branchcond $i476} true;
    goto $bb191, $bb192;

  $bb190:
    assume !($i475 == 1bv1);
    goto corral_source_split_919;

  corral_source_split_919:
    $i490 := $load.bytes.bv32($M.0, $p5);
    goto corral_source_split_920;

  corral_source_split_920:
    $i44 := $i490;
    goto $bb11;

  $bb191:
    assume $i476 == 1bv1;
    goto corral_source_split_922;

  corral_source_split_922:
    $p478 := $add.ref($p3, 4bv64);
    goto corral_source_split_923;

  corral_source_split_923:
    $M.0 := $store.bytes.bv16($M.0, $p478, 4bv16);
    goto corral_source_split_924;

  corral_source_split_924:
    $i479 := $trunc.bv8.bv1($i39);
    goto corral_source_split_925;

  corral_source_split_925:
    $i59, $i60, $i61, $i62 := $i94, $i60, $i472, $i473;
    assume {:branchcond $i479} true;
    goto $bb193, $bb194;

  $bb192:
    assume !($i476 == 1bv1);
    goto $bb14;

  $bb193:
    assume $i479 == 1bv1;
    goto corral_source_split_927;

  corral_source_split_927:
    call {:si_unique_call 156} __res_iclose(statp, 0bv1);
    goto corral_source_split_928;

  corral_source_split_928:
    call {:si_unique_call 157} $i480 := reopen(statp, terrno, ns);
    call {:si_unique_call 158} {:cexpr "retval"} boogie_si_record_bv32($i480);
    goto corral_source_split_929;

  corral_source_split_929:
    $i481 := $sle.bv32($i480, 0bv32);
    goto corral_source_split_930;

  corral_source_split_930:
    assume {:branchcond $i481} true;
    goto $bb195, $bb196;

  $bb194:
    assume !($i479 == 1bv1);
    goto $bb14;

  $bb195:
    assume $i481 == 1bv1;
    goto corral_source_split_932;

  corral_source_split_932:
    $i44 := $i480;
    goto $bb11;

  $bb196:
    assume !($i481 == 1bv1);
    goto corral_source_split_934;

  corral_source_split_934:
    $i482 := $sext.bv32.bv64(ns);
    goto corral_source_split_935;

  corral_source_split_935:
    $p483 := $add.ref(statp, 512bv64);
    goto corral_source_split_936;

  corral_source_split_936:
    $p484 := $bitcast.ref.ref($p483);
    goto corral_source_split_937;

  corral_source_split_937:
    $p486 := $add.ref($add.ref($p484, 8bv64), $mul.ref($i482, 4bv64));
    goto corral_source_split_938;

  corral_source_split_938:
    $i487 := $load.bytes.bv32($M.0, $p486);
    goto corral_source_split_939;

  corral_source_split_939:
    $p489 := $p3;
    goto corral_source_split_940;

  corral_source_split_940:
    $M.0 := $store.bytes.bv32($M.0, $p489, $i487);
    goto corral_source_split_941;

  corral_source_split_941:
    $i59, $i60, $i61, $i62 := $i94, $i60, $i472, $i473;
    goto $bb14;

  $bb197:
    assume $i496 == 1bv1;
    goto $bb20;

  $bb198:
    assume !($i496 == 1bv1);
    goto corral_source_split_943;

  corral_source_split_943:
    call {:si_unique_call 159} abort();
    goto corral_source_split_944;

  corral_source_split_944:
    assume false;
    return;
}



const evSubTime: ref;

axiom evSubTime == $sub.ref(0bv64, 288bv64);

procedure evSubTime(res: ref, minuend: ref, subtrahend: ref);
  free requires assertsPassed;
  modifies $M.5, $M.6;



implementation evSubTime(res: ref, minuend: ref, subtrahend: ref)
{
  var $p0: ref;
  var $i1: bv64;
  var $p2: ref;
  var $i3: bv64;
  var $i4: bv64;
  var $p5: ref;
  var $p6: ref;
  var $i7: bv64;
  var $p8: ref;
  var $i9: bv64;
  var $i10: bv1;
  var $p11: ref;
  var $i12: bv64;
  var $p13: ref;
  var $i14: bv64;
  var $i15: bv64;
  var $p16: ref;
  var $p17: ref;
  var $i18: bv64;
  var $i19: bv64;
  var $p20: ref;
  var $i21: bv64;
  var $i22: bv64;
  var $p23: ref;
  var $p24: ref;
  var $i25: bv64;
  var $i26: bv64;

  $bb0:
    call {:si_unique_call 160} {:cexpr "res"} boogie_si_record_ref(res);
    call {:si_unique_call 161} {:cexpr "minuend"} boogie_si_record_ref(minuend);
    call {:si_unique_call 162} {:cexpr "subtrahend"} boogie_si_record_ref(subtrahend);
    goto corral_source_split_946;

  corral_source_split_946:
    $p0 := minuend;
    goto corral_source_split_947;

  corral_source_split_947:
    $i1 := $load.bv64($M.3, $p0);
    goto corral_source_split_948;

  corral_source_split_948:
    $p2 := subtrahend;
    goto corral_source_split_949;

  corral_source_split_949:
    $i3 := $load.bv64($M.5, $p2);
    goto corral_source_split_950;

  corral_source_split_950:
    $i4 := $sub.bv64($i1, $i3);
    goto corral_source_split_951;

  corral_source_split_951:
    $p5 := res;
    goto corral_source_split_952;

  corral_source_split_952:
    $M.5 := $store.bv64($M.5, $p5, $i4);
    goto corral_source_split_953;

  corral_source_split_953:
    $p6 := $add.ref(minuend, 8bv64);
    goto corral_source_split_954;

  corral_source_split_954:
    $i7 := $load.bv64($M.4, $p6);
    goto corral_source_split_955;

  corral_source_split_955:
    $p8 := $add.ref(subtrahend, 8bv64);
    goto corral_source_split_956;

  corral_source_split_956:
    $i9 := $load.bv64($M.6, $p8);
    goto corral_source_split_957;

  corral_source_split_957:
    $i10 := $sge.bv64($i7, $i9);
    goto corral_source_split_958;

  corral_source_split_958:
    assume {:branchcond $i10} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i10 == 1bv1;
    goto corral_source_split_960;

  corral_source_split_960:
    $p11 := $add.ref(minuend, 8bv64);
    goto corral_source_split_961;

  corral_source_split_961:
    $i12 := $load.bv64($M.4, $p11);
    goto corral_source_split_962;

  corral_source_split_962:
    $p13 := $add.ref(subtrahend, 8bv64);
    goto corral_source_split_963;

  corral_source_split_963:
    $i14 := $load.bv64($M.6, $p13);
    goto corral_source_split_964;

  corral_source_split_964:
    $i15 := $sub.bv64($i12, $i14);
    goto corral_source_split_965;

  corral_source_split_965:
    $p16 := $add.ref(res, 8bv64);
    goto corral_source_split_966;

  corral_source_split_966:
    $M.6 := $store.bv64($M.6, $p16, $i15);
    goto corral_source_split_967;

  corral_source_split_967:
    goto $bb3;

  $bb2:
    assume !($i10 == 1bv1);
    goto corral_source_split_969;

  corral_source_split_969:
    $p17 := $add.ref(subtrahend, 8bv64);
    goto corral_source_split_970;

  corral_source_split_970:
    $i18 := $load.bv64($M.6, $p17);
    goto corral_source_split_971;

  corral_source_split_971:
    $i19 := $sub.bv64(1000000000bv64, $i18);
    goto corral_source_split_972;

  corral_source_split_972:
    $p20 := $add.ref(minuend, 8bv64);
    goto corral_source_split_973;

  corral_source_split_973:
    $i21 := $load.bv64($M.4, $p20);
    goto corral_source_split_974;

  corral_source_split_974:
    $i22 := $add.bv64($i19, $i21);
    goto corral_source_split_975;

  corral_source_split_975:
    $p23 := $add.ref(res, 8bv64);
    goto corral_source_split_976;

  corral_source_split_976:
    $M.6 := $store.bv64($M.6, $p23, $i22);
    goto corral_source_split_977;

  corral_source_split_977:
    $p24 := res;
    goto corral_source_split_978;

  corral_source_split_978:
    $i25 := $load.bv64($M.5, $p24);
    goto corral_source_split_979;

  corral_source_split_979:
    $i26 := $add.bv64($i25, $sub.bv64(0bv64, 1bv64));
    goto corral_source_split_980;

  corral_source_split_980:
    $M.5 := $store.bv64($M.5, $p24, $i26);
    goto $bb3;

  $bb3:
    return;
}



const evCmpTime: ref;

axiom evCmpTime == $sub.ref(0bv64, 296bv64);

procedure evCmpTime(a.coerce0: bv64, a.coerce1: bv64, b.coerce0: bv64, b.coerce1: bv64) returns ($r: bv32);
  free requires assertsPassed;
  modifies $CurrAddr, $M.13, $M.14, $M.15, $M.16;



implementation evCmpTime(a.coerce0: bv64, a.coerce1: bv64, b.coerce0: bv64, b.coerce1: bv64) returns ($r: bv32)
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
  var $i9: bv64;
  var $p10: ref;
  var $i11: bv64;
  var $i12: bv64;
  var $i13: bv1;
  var $p15: ref;
  var $i16: bv64;
  var $p17: ref;
  var $i18: bv64;
  var $i19: bv64;
  var $i14: bv64;
  var $i20: bv1;
  var $i22: bv1;
  var $i23: bv32;
  var $i21: bv32;

  $bb0:
    call {:si_unique_call 163} $p0 := $alloc($mul.ref(16bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 164} $p1 := $alloc($mul.ref(16bv64, $zext.bv32.bv64(1bv32)));
    $p2 := $bitcast.ref.ref($p0);
    $p3 := $p2;
    $M.13 := $store.bv64($M.13, $p3, a.coerce0);
    $p4 := $add.ref($p2, 8bv64);
    $M.14 := $store.bv64($M.14, $p4, a.coerce1);
    $p5 := $bitcast.ref.ref($p1);
    $p6 := $p5;
    $M.15 := $store.bv64($M.15, $p6, b.coerce0);
    $p7 := $add.ref($p5, 8bv64);
    $M.16 := $store.bv64($M.16, $p7, b.coerce1);
    goto corral_source_split_982;

  corral_source_split_982:
    $p8 := $p0;
    goto corral_source_split_983;

  corral_source_split_983:
    $i9 := $load.bv64($M.13, $p8);
    goto corral_source_split_984;

  corral_source_split_984:
    $p10 := $p1;
    goto corral_source_split_985;

  corral_source_split_985:
    $i11 := $load.bv64($M.15, $p10);
    goto corral_source_split_986;

  corral_source_split_986:
    $i12 := $sub.bv64($i9, $i11);
    call {:si_unique_call 165} {:cexpr "x"} boogie_si_record_bv64($i12);
    goto corral_source_split_987;

  corral_source_split_987:
    $i13 := $eq.bv64($i12, 0bv64);
    goto corral_source_split_988;

  corral_source_split_988:
    $i14 := $i12;
    assume {:branchcond $i13} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i13 == 1bv1;
    goto corral_source_split_990;

  corral_source_split_990:
    $p15 := $add.ref($p0, 8bv64);
    goto corral_source_split_991;

  corral_source_split_991:
    $i16 := $load.bv64($M.14, $p15);
    goto corral_source_split_992;

  corral_source_split_992:
    $p17 := $add.ref($p1, 8bv64);
    goto corral_source_split_993;

  corral_source_split_993:
    $i18 := $load.bv64($M.16, $p17);
    goto corral_source_split_994;

  corral_source_split_994:
    $i19 := $sub.bv64($i16, $i18);
    call {:si_unique_call 166} {:cexpr "x"} boogie_si_record_bv64($i19);
    goto corral_source_split_995;

  corral_source_split_995:
    $i14 := $i19;
    goto $bb3;

  $bb2:
    assume !($i13 == 1bv1);
    goto $bb3;

  $bb3:
    $i20 := $slt.bv64($i14, 0bv64);
    goto corral_source_split_997;

  corral_source_split_997:
    $i21 := $sub.bv32(0bv32, 1bv32);
    assume {:branchcond $i20} true;
    goto $bb4, $bb6;

  $bb4:
    assume $i20 == 1bv1;
    goto $bb5;

  $bb5:
    goto corral_source_split_999;

  corral_source_split_999:
    $r := $i21;
    return;

  $bb6:
    assume !($i20 == 1bv1);
    goto corral_source_split_1001;

  corral_source_split_1001:
    $i22 := $sgt.bv64($i14, 0bv64);
    goto corral_source_split_1002;

  corral_source_split_1002:
    havoc $i23;
    assume ($i22 == 1bv1 ==> $i23 == 1bv32) && ($i22 != 1bv1 ==> $i23 == 0bv32);
    goto corral_source_split_1003;

  corral_source_split_1003:
    $i21 := $i23;
    goto $bb5;
}



const evAddTime: ref;

axiom evAddTime == $sub.ref(0bv64, 304bv64);

procedure evAddTime(res: ref, addend1: ref, addend2: ref);
  free requires assertsPassed;
  modifies $M.3, $M.4;



implementation evAddTime(res: ref, addend1: ref, addend2: ref)
{
  var $p0: ref;
  var $i1: bv64;
  var $p2: ref;
  var $i3: bv64;
  var $i4: bv64;
  var $p5: ref;
  var $p6: ref;
  var $i7: bv64;
  var $p8: ref;
  var $i9: bv64;
  var $i10: bv64;
  var $p11: ref;
  var $p12: ref;
  var $i13: bv64;
  var $i14: bv1;
  var $p15: ref;
  var $i16: bv64;
  var $i17: bv64;
  var $p18: ref;
  var $i19: bv64;
  var $i20: bv64;

  $bb0:
    call {:si_unique_call 167} {:cexpr "res"} boogie_si_record_ref(res);
    call {:si_unique_call 168} {:cexpr "addend1"} boogie_si_record_ref(addend1);
    call {:si_unique_call 169} {:cexpr "addend2"} boogie_si_record_ref(addend2);
    goto corral_source_split_1005;

  corral_source_split_1005:
    $p0 := addend1;
    goto corral_source_split_1006;

  corral_source_split_1006:
    $i1 := $load.bv64($M.5, $p0);
    goto corral_source_split_1007;

  corral_source_split_1007:
    $p2 := addend2;
    goto corral_source_split_1008;

  corral_source_split_1008:
    $i3 := $load.bv64($M.5, $p2);
    goto corral_source_split_1009;

  corral_source_split_1009:
    $i4 := $add.bv64($i1, $i3);
    goto corral_source_split_1010;

  corral_source_split_1010:
    $p5 := res;
    goto corral_source_split_1011;

  corral_source_split_1011:
    $M.3 := $store.bv64($M.3, $p5, $i4);
    goto corral_source_split_1012;

  corral_source_split_1012:
    $p6 := $add.ref(addend1, 8bv64);
    goto corral_source_split_1013;

  corral_source_split_1013:
    $i7 := $load.bv64($M.6, $p6);
    goto corral_source_split_1014;

  corral_source_split_1014:
    $p8 := $add.ref(addend2, 8bv64);
    goto corral_source_split_1015;

  corral_source_split_1015:
    $i9 := $load.bv64($M.6, $p8);
    goto corral_source_split_1016;

  corral_source_split_1016:
    $i10 := $add.bv64($i7, $i9);
    goto corral_source_split_1017;

  corral_source_split_1017:
    $p11 := $add.ref(res, 8bv64);
    goto corral_source_split_1018;

  corral_source_split_1018:
    $M.4 := $store.bv64($M.4, $p11, $i10);
    goto corral_source_split_1019;

  corral_source_split_1019:
    $p12 := $add.ref(res, 8bv64);
    goto corral_source_split_1020;

  corral_source_split_1020:
    $i13 := $load.bv64($M.4, $p12);
    goto corral_source_split_1021;

  corral_source_split_1021:
    $i14 := $sge.bv64($i13, 1000000000bv64);
    goto corral_source_split_1022;

  corral_source_split_1022:
    assume {:branchcond $i14} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i14 == 1bv1;
    goto corral_source_split_1024;

  corral_source_split_1024:
    $p15 := res;
    goto corral_source_split_1025;

  corral_source_split_1025:
    $i16 := $load.bv64($M.3, $p15);
    goto corral_source_split_1026;

  corral_source_split_1026:
    $i17 := $add.bv64($i16, 1bv64);
    goto corral_source_split_1027;

  corral_source_split_1027:
    $M.3 := $store.bv64($M.3, $p15, $i17);
    goto corral_source_split_1028;

  corral_source_split_1028:
    $p18 := $add.ref(res, 8bv64);
    goto corral_source_split_1029;

  corral_source_split_1029:
    $i19 := $load.bv64($M.4, $p18);
    goto corral_source_split_1030;

  corral_source_split_1030:
    $i20 := $sub.bv64($i19, 1000000000bv64);
    goto corral_source_split_1031;

  corral_source_split_1031:
    $M.4 := $store.bv64($M.4, $p18, $i20);
    goto corral_source_split_1032;

  corral_source_split_1032:
    goto $bb3;

  $bb2:
    assume !($i14 == 1bv1);
    goto $bb3;

  $bb3:
    return;
}



const evConsTime: ref;

axiom evConsTime == $sub.ref(0bv64, 312bv64);

procedure evConsTime(res: ref, sec: bv64, nsec: bv64);
  free requires assertsPassed;
  modifies $M.5, $M.6;



implementation evConsTime(res: ref, sec: bv64, nsec: bv64)
{
  var $p0: ref;
  var $p1: ref;

  $bb0:
    call {:si_unique_call 170} {:cexpr "res"} boogie_si_record_ref(res);
    call {:si_unique_call 171} {:cexpr "sec"} boogie_si_record_bv64(sec);
    call {:si_unique_call 172} {:cexpr "nsec"} boogie_si_record_bv64(nsec);
    goto corral_source_split_1034;

  corral_source_split_1034:
    $p0 := res;
    goto corral_source_split_1035;

  corral_source_split_1035:
    $M.5 := $store.bv64($M.5, $p0, sec);
    goto corral_source_split_1036;

  corral_source_split_1036:
    $p1 := $add.ref(res, 8bv64);
    goto corral_source_split_1037;

  corral_source_split_1037:
    $M.6 := $store.bv64($M.6, $p1, nsec);
    goto corral_source_split_1038;

  corral_source_split_1038:
    return;
}



const evNowTime: ref;

axiom evNowTime == $sub.ref(0bv64, 320bv64);

procedure evNowTime(res: ref);
  free requires assertsPassed;
  modifies $CurrAddr, $M.5, $M.6;



implementation evNowTime(res: ref)
{
  var $p0: ref;
  var $i1: bv32;
  var $i2: bv1;
  var $p3: ref;
  var $i4: bv64;
  var $p5: ref;
  var $p6: ref;
  var $i7: bv64;
  var $i8: bv64;
  var $p9: ref;

  $bb0:
    call {:si_unique_call 173} $p0 := $alloc($mul.ref(16bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 174} {:cexpr "res"} boogie_si_record_ref(res);
    goto corral_source_split_1040;

  corral_source_split_1040:
    call {:si_unique_call 175} $i1 := gettimeofday($p0, $0.ref);
    goto corral_source_split_1041;

  corral_source_split_1041:
    $i2 := $slt.bv32($i1, 0bv32);
    goto corral_source_split_1042;

  corral_source_split_1042:
    assume {:branchcond $i2} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i2 == 1bv1;
    goto corral_source_split_1044;

  corral_source_split_1044:
    call {:si_unique_call 176} evConsTime(res, 0bv64, 0bv64);
    goto corral_source_split_1045;

  corral_source_split_1045:
    goto $bb3;

  $bb2:
    assume !($i2 == 1bv1);
    goto corral_source_split_1047;

  corral_source_split_1047:
    $p3 := $p0;
    goto corral_source_split_1048;

  corral_source_split_1048:
    $i4 := $load.bytes.bv64($M.0, $p3);
    goto corral_source_split_1049;

  corral_source_split_1049:
    $p5 := res;
    goto corral_source_split_1050;

  corral_source_split_1050:
    $M.5 := $store.bv64($M.5, $p5, $i4);
    goto corral_source_split_1051;

  corral_source_split_1051:
    $p6 := $add.ref($p0, 8bv64);
    goto corral_source_split_1052;

  corral_source_split_1052:
    $i7 := $load.bytes.bv64($M.0, $p6);
    goto corral_source_split_1053;

  corral_source_split_1053:
    $i8 := $mul.bv64($i7, 1000bv64);
    goto corral_source_split_1054;

  corral_source_split_1054:
    $p9 := $add.ref(res, 8bv64);
    goto corral_source_split_1055;

  corral_source_split_1055:
    $M.6 := $store.bv64($M.6, $p9, $i8);
    goto $bb3;

  $bb3:
    return;
}



const reopen: ref;

axiom reopen == $sub.ref(0bv64, 328bv64);

procedure reopen(statp: ref, terrno: ref, ns: bv32) returns ($r: bv32);
  free requires assertsPassed;
  modifies $CurrAddr, $M.0, $M.11, $M.17;



implementation reopen(statp: ref, terrno: ref, ns: bv32) returns ($r: bv32)
{
  var $p0: ref;
  var $i1: bv64;
  var $p2: ref;
  var $p3: ref;
  var $p5: ref;
  var $i6: bv32;
  var $i7: bv1;
  var $i8: bv64;
  var $p9: ref;
  var $p10: ref;
  var $p12: ref;
  var $p13: ref;
  var $p14: ref;
  var $p15: ref;
  var $i16: bv16;
  var $i17: bv32;
  var $i18: bv1;
  var $p19: ref;
  var $i20: bv32;
  var $i21: bv32;
  var $i22: bv32;
  var $i23: bv1;
  var $i24: bv32;
  var $i25: bv1;
  var $i26: bv32;
  var $i27: bv64;
  var $p28: ref;
  var $p29: ref;
  var $p31: ref;
  var $i32: bv32;
  var $i33: bv1;
  var $i34: bv32;
  var $i35: bv64;
  var $p36: ref;
  var $p37: ref;
  var $p39: ref;
  var $i40: bv64;
  var $p41: ref;
  var $p42: ref;
  var $p44: ref;
  var $i45: bv32;
  var $i46: bv1;
  var $i47: bv32;
  var $i48: bv1;
  var $i49: bv32;
  var $p50: ref;
  var $i51: bv32;
  var $i52: bv32;
  var $i53: bv32;
  var $i54: bv32;
  var $i55: bv32;
  var $p57: ref;
  var $i58: bv16;
  var $i59: bv32;
  var $i60: bv1;
  var $i61: bv32;
  var $i62: bv1;
  var $i63: bv32;
  var $i64: bv64;
  var $p65: ref;
  var $p66: ref;
  var $p68: ref;
  var $i69: bv32;
  var $i70: bv1;
  var $i71: bv32;
  var $i72: bv64;
  var $p73: ref;
  var $p74: ref;
  var $p76: ref;
  var $i56: bv32;
  var $i77: bv64;
  var $p78: ref;
  var $p79: ref;
  var $p81: ref;
  var $i82: bv32;
  var $i83: bv1;
  var $i84: bv32;
  var $i86: bv64;
  var $p87: ref;
  var $p88: ref;
  var $p90: ref;
  var $i91: bv32;
  var $p92: ref;
  var $p93: ref;
  var $p94: ref;
  var $i95: bv32;
  var $i96: bv1;
  var $i97: bv32;
  var $i98: bv1;
  var $i99: bv64;
  var $p100: ref;
  var $p101: ref;
  var $p103: ref;
  var $i104: bv32;
  var $i105: bv32;
  var $i106: bv1;
  var $i107: bv64;
  var $p108: ref;
  var $p109: ref;
  var $p111: ref;
  var $i112: bv32;
  var $i113: bv32;
  var $i85: bv32;
  var vslice_dummy_var_0: bv32;

  $bb0:
    call {:si_unique_call 177} $p0 := $alloc($mul.ref(8bv64, $zext.bv32.bv64(1bv32)));
    call {:si_unique_call 178} {:cexpr "statp"} boogie_si_record_ref(statp);
    call {:si_unique_call 179} {:cexpr "terrno"} boogie_si_record_ref(terrno);
    call {:si_unique_call 180} {:cexpr "ns"} boogie_si_record_bv32(ns);
    goto corral_source_split_1057;

  corral_source_split_1057:
    $i1 := $sext.bv32.bv64(ns);
    goto corral_source_split_1058;

  corral_source_split_1058:
    $p2 := $add.ref(statp, 512bv64);
    goto corral_source_split_1059;

  corral_source_split_1059:
    $p3 := $bitcast.ref.ref($p2);
    goto corral_source_split_1060;

  corral_source_split_1060:
    $p5 := $add.ref($add.ref($p3, 8bv64), $mul.ref($i1, 4bv64));
    goto corral_source_split_1061;

  corral_source_split_1061:
    $i6 := $load.bytes.bv32($M.0, $p5);
    goto corral_source_split_1062;

  corral_source_split_1062:
    $i7 := $eq.bv32($i6, $sub.bv32(0bv32, 1bv32));
    goto corral_source_split_1063;

  corral_source_split_1063:
    assume {:branchcond $i7} true;
    goto $bb1, $bb2;

  $bb1:
    assume $i7 == 1bv1;
    goto corral_source_split_1065;

  corral_source_split_1065:
    $i8 := $sext.bv32.bv64(ns);
    goto corral_source_split_1066;

  corral_source_split_1066:
    $p9 := $add.ref(statp, 512bv64);
    goto corral_source_split_1067;

  corral_source_split_1067:
    $p10 := $bitcast.ref.ref($p9);
    goto corral_source_split_1068;

  corral_source_split_1068:
    $p12 := $add.ref($add.ref($p10, 24bv64), $mul.ref($i8, 8bv64));
    goto corral_source_split_1069;

  corral_source_split_1069:
    $p13 := $load.bytes.ref($M.0, $p12);
    goto corral_source_split_1070;

  corral_source_split_1070:
    $p14 := $bitcast.ref.ref($p13);
    call {:si_unique_call 181} {:cexpr "nsap"} boogie_si_record_ref($p14);
    goto corral_source_split_1071;

  corral_source_split_1071:
    $p15 := $p14;
    goto corral_source_split_1072;

  corral_source_split_1072:
    $i16 := $load.bytes.bv16($M.0, $p15);
    goto corral_source_split_1073;

  corral_source_split_1073:
    $i17 := $zext.bv16.bv32($i16);
    goto corral_source_split_1074;

  corral_source_split_1074:
    $i18 := $eq.bv32($i17, 10bv32);
    goto corral_source_split_1075;

  corral_source_split_1075:
    assume {:branchcond $i18} true;
    goto $bb4, $bb5;

  $bb2:
    assume !($i7 == 1bv1);
    goto $bb3;

  $bb3:
    $i85 := 1bv32;
    goto $bb29;

  $bb4:
    assume $i18 == 1bv1;
    goto corral_source_split_1077;

  corral_source_split_1077:
    $p19 := $add.ref(statp, 392bv64);
    goto corral_source_split_1078;

  corral_source_split_1078:
    $i20 := $load.bytes.bv32($M.0, $p19);
    goto corral_source_split_1079;

  corral_source_split_1079:
    $i21 := $lshr.bv32($i20, 8bv32);
    goto corral_source_split_1080;

  corral_source_split_1080:
    $i22 := $and.bv32($i21, 1bv32);
    goto corral_source_split_1081;

  corral_source_split_1081:
    $i23 := $ne.bv32($i22, 0bv32);
    goto corral_source_split_1082;

  corral_source_split_1082:
    assume {:branchcond $i23} true;
    goto $bb7, $bb8;

  $bb5:
    assume !($i18 == 1bv1);
    goto $bb6;

  $bb6:
    $p57 := $p14;
    goto corral_source_split_1084;

  corral_source_split_1084:
    $i58 := $load.bytes.bv16($M.0, $p57);
    goto corral_source_split_1085;

  corral_source_split_1085:
    $i59 := $zext.bv16.bv32($i58);
    goto corral_source_split_1086;

  corral_source_split_1086:
    $i60 := $eq.bv32($i59, 2bv32);
    goto corral_source_split_1087;

  corral_source_split_1087:
    $i56 := $u0;
    assume {:branchcond $i60} true;
    goto $bb19, $bb20;

  $bb7:
    assume $i23 == 1bv1;
    goto $bb6;

  $bb8:
    assume !($i23 == 1bv1);
    goto corral_source_split_1089;

  corral_source_split_1089:
    call {:si_unique_call 182} $i24 := __builtinx_expect.bv32.bv32(1bv32, 1bv32);
    goto corral_source_split_1090;

  corral_source_split_1090:
    $i25 := $ne.bv32($i24, 0bv32);
    goto corral_source_split_1091;

  corral_source_split_1091:
    assume {:branchcond $i25} true;
    goto $bb9, $bb10;

  $bb9:
    assume $i25 == 1bv1;
    goto corral_source_split_1093;

  corral_source_split_1093:
    call {:si_unique_call 183} $i26 := socket(10bv32, 2050bv32, 0bv32);
    goto corral_source_split_1094;

  corral_source_split_1094:
    $i27 := $sext.bv32.bv64(ns);
    goto corral_source_split_1095;

  corral_source_split_1095:
    $p28 := $add.ref(statp, 512bv64);
    goto corral_source_split_1096;

  corral_source_split_1096:
    $p29 := $bitcast.ref.ref($p28);
    goto corral_source_split_1097;

  corral_source_split_1097:
    $p31 := $add.ref($add.ref($p29, 8bv64), $mul.ref($i27, 4bv64));
    goto corral_source_split_1098;

  corral_source_split_1098:
    $M.0 := $store.bytes.bv32($M.0, $p31, $i26);
    goto corral_source_split_1099;

  corral_source_split_1099:
    goto $bb11;

  $bb10:
    assume !($i25 == 1bv1);
    goto $bb11;

  $bb11:
    call {:si_unique_call 184} $i32 := __builtinx_expect.bv32.bv32(0bv32, 0bv32);
    goto corral_source_split_1101;

  corral_source_split_1101:
    $i33 := $ne.bv32($i32, 0bv32);
    goto corral_source_split_1102;

  corral_source_split_1102:
    assume {:branchcond $i33} true;
    goto $bb12, $bb13;

  $bb12:
    assume $i33 == 1bv1;
    goto corral_source_split_1104;

  corral_source_split_1104:
    call {:si_unique_call 185} $i34 := socket(10bv32, 2bv32, 0bv32);
    goto corral_source_split_1105;

  corral_source_split_1105:
    $i35 := $sext.bv32.bv64(ns);
    goto corral_source_split_1106;

  corral_source_split_1106:
    $p36 := $add.ref(statp, 512bv64);
    goto corral_source_split_1107;

  corral_source_split_1107:
    $p37 := $bitcast.ref.ref($p36);
    goto corral_source_split_1108;

  corral_source_split_1108:
    $p39 := $add.ref($add.ref($p37, 8bv64), $mul.ref($i35, 4bv64));
    goto corral_source_split_1109;

  corral_source_split_1109:
    $M.0 := $store.bytes.bv32($M.0, $p39, $i34);
    goto corral_source_split_1110;

  corral_source_split_1110:
    goto $bb14;

  $bb13:
    assume !($i33 == 1bv1);
    goto $bb14;

  $bb14:
    $i40 := $sext.bv32.bv64(ns);
    goto corral_source_split_1112;

  corral_source_split_1112:
    $p41 := $add.ref(statp, 512bv64);
    goto corral_source_split_1113;

  corral_source_split_1113:
    $p42 := $bitcast.ref.ref($p41);
    goto corral_source_split_1114;

  corral_source_split_1114:
    $p44 := $add.ref($add.ref($p42, 8bv64), $mul.ref($i40, 4bv64));
    goto corral_source_split_1115;

  corral_source_split_1115:
    $i45 := $load.bytes.bv32($M.0, $p44);
    goto corral_source_split_1116;

  corral_source_split_1116:
    $i46 := $slt.bv32($i45, 0bv32);
    goto corral_source_split_1117;

  corral_source_split_1117:
    assume {:branchcond $i46} true;
    goto $bb15, $bb16;

  $bb15:
    assume $i46 == 1bv1;
    goto corral_source_split_1119;

  corral_source_split_1119:
    $i47 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_1120;

  corral_source_split_1120:
    $i48 := $eq.bv32($i47, 97bv32);
    goto corral_source_split_1121;

  corral_source_split_1121:
    $i49 := $zext.bv1.bv32($i48);
    goto corral_source_split_1122;

  corral_source_split_1122:
    $p50 := $add.ref(statp, 392bv64);
    goto corral_source_split_1123;

  corral_source_split_1123:
    $i51 := $load.bytes.bv32($M.0, $p50);
    goto corral_source_split_1124;

  corral_source_split_1124:
    $i52 := $and.bv32($i49, 1bv32);
    goto corral_source_split_1125;

  corral_source_split_1125:
    $i53 := $shl.bv32($i52, 8bv32);
    goto corral_source_split_1126;

  corral_source_split_1126:
    $i54 := $and.bv32($i51, $sub.bv32(0bv32, 257bv32));
    goto corral_source_split_1127;

  corral_source_split_1127:
    $i55 := $or.bv32($i54, $i53);
    goto corral_source_split_1128;

  corral_source_split_1128:
    $M.0 := $store.bytes.bv32($M.0, $p50, $i55);
    goto corral_source_split_1129;

  corral_source_split_1129:
    goto $bb17;

  $bb16:
    assume !($i46 == 1bv1);
    goto $bb17;

  $bb17:
    call {:si_unique_call 186} {:cexpr "slen"} boogie_si_record_bv32(28bv32);
    goto corral_source_split_1131;

  corral_source_split_1131:
    $i56 := 28bv32;
    goto $bb18;

  $bb18:
    $i77 := $sext.bv32.bv64(ns);
    goto corral_source_split_1133;

  corral_source_split_1133:
    $p78 := $add.ref(statp, 512bv64);
    goto corral_source_split_1134;

  corral_source_split_1134:
    $p79 := $bitcast.ref.ref($p78);
    goto corral_source_split_1135;

  corral_source_split_1135:
    $p81 := $add.ref($add.ref($p79, 8bv64), $mul.ref($i77, 4bv64));
    goto corral_source_split_1136;

  corral_source_split_1136:
    $i82 := $load.bytes.bv32($M.0, $p81);
    goto corral_source_split_1137;

  corral_source_split_1137:
    $i83 := $slt.bv32($i82, 0bv32);
    goto corral_source_split_1138;

  corral_source_split_1138:
    assume {:branchcond $i83} true;
    goto $bb27, $bb28;

  $bb19:
    assume $i60 == 1bv1;
    goto corral_source_split_1140;

  corral_source_split_1140:
    call {:si_unique_call 187} $i61 := __builtinx_expect.bv32.bv32(1bv32, 1bv32);
    goto corral_source_split_1141;

  corral_source_split_1141:
    $i62 := $ne.bv32($i61, 0bv32);
    goto corral_source_split_1142;

  corral_source_split_1142:
    assume {:branchcond $i62} true;
    goto $bb21, $bb22;

  $bb20:
    assume !($i60 == 1bv1);
    goto $bb18;

  $bb21:
    assume $i62 == 1bv1;
    goto corral_source_split_1144;

  corral_source_split_1144:
    call {:si_unique_call 188} $i63 := socket(2bv32, 2050bv32, 0bv32);
    goto corral_source_split_1145;

  corral_source_split_1145:
    $i64 := $sext.bv32.bv64(ns);
    goto corral_source_split_1146;

  corral_source_split_1146:
    $p65 := $add.ref(statp, 512bv64);
    goto corral_source_split_1147;

  corral_source_split_1147:
    $p66 := $bitcast.ref.ref($p65);
    goto corral_source_split_1148;

  corral_source_split_1148:
    $p68 := $add.ref($add.ref($p66, 8bv64), $mul.ref($i64, 4bv64));
    goto corral_source_split_1149;

  corral_source_split_1149:
    $M.0 := $store.bytes.bv32($M.0, $p68, $i63);
    goto corral_source_split_1150;

  corral_source_split_1150:
    goto $bb23;

  $bb22:
    assume !($i62 == 1bv1);
    goto $bb23;

  $bb23:
    call {:si_unique_call 189} $i69 := __builtinx_expect.bv32.bv32(0bv32, 0bv32);
    goto corral_source_split_1152;

  corral_source_split_1152:
    $i70 := $ne.bv32($i69, 0bv32);
    goto corral_source_split_1153;

  corral_source_split_1153:
    assume {:branchcond $i70} true;
    goto $bb24, $bb25;

  $bb24:
    assume $i70 == 1bv1;
    goto corral_source_split_1155;

  corral_source_split_1155:
    call {:si_unique_call 190} $i71 := socket(2bv32, 2bv32, 0bv32);
    goto corral_source_split_1156;

  corral_source_split_1156:
    $i72 := $sext.bv32.bv64(ns);
    goto corral_source_split_1157;

  corral_source_split_1157:
    $p73 := $add.ref(statp, 512bv64);
    goto corral_source_split_1158;

  corral_source_split_1158:
    $p74 := $bitcast.ref.ref($p73);
    goto corral_source_split_1159;

  corral_source_split_1159:
    $p76 := $add.ref($add.ref($p74, 8bv64), $mul.ref($i72, 4bv64));
    goto corral_source_split_1160;

  corral_source_split_1160:
    $M.0 := $store.bytes.bv32($M.0, $p76, $i71);
    goto corral_source_split_1161;

  corral_source_split_1161:
    goto $bb26;

  $bb25:
    assume !($i70 == 1bv1);
    goto $bb26;

  $bb26:
    call {:si_unique_call 191} {:cexpr "slen"} boogie_si_record_bv32(16bv32);
    goto corral_source_split_1163;

  corral_source_split_1163:
    $i56 := 16bv32;
    goto $bb18;

  $bb27:
    assume $i83 == 1bv1;
    goto corral_source_split_1165;

  corral_source_split_1165:
    $i84 := $load.bytes.bv32($M.0, errno);
    goto corral_source_split_1166;

  corral_source_split_1166:
    $M.11 := $store.bv32($M.11, terrno, $i84);
    goto corral_source_split_1167;

  corral_source_split_1167:
    $i85 := $sub.bv32(0bv32, 1bv32);
    goto $bb29;

  $bb28:
    assume !($i83 == 1bv1);
    goto corral_source_split_1169;

  corral_source_split_1169:
    $i86 := $sext.bv32.bv64(ns);
    goto corral_source_split_1170;

  corral_source_split_1170:
    $p87 := $add.ref(statp, 512bv64);
    goto corral_source_split_1171;

  corral_source_split_1171:
    $p88 := $bitcast.ref.ref($p87);
    goto corral_source_split_1172;

  corral_source_split_1172:
    $p90 := $add.ref($add.ref($p88, 8bv64), $mul.ref($i86, 4bv64));
    goto corral_source_split_1173;

  corral_source_split_1173:
    $i91 := $load.bytes.bv32($M.0, $p90);
    goto corral_source_split_1174;

  corral_source_split_1174:
    $p92 := $bitcast.ref.ref($p0);
    goto corral_source_split_1175;

  corral_source_split_1175:
    $M.17 := $store.ref($M.17, $p92, $p14);
    goto corral_source_split_1176;

  corral_source_split_1176:
    $p93 := $p0;
    goto corral_source_split_1177;

  corral_source_split_1177:
    $p94 := $load.ref($M.17, $p93);
    goto corral_source_split_1178;

  corral_source_split_1178:
    call {:si_unique_call 192} $i95 := connect($i91, $p94, $i56);
    goto corral_source_split_1179;

  corral_source_split_1179:
    $i96 := $slt.bv32($i95, 0bv32);
    goto corral_source_split_1180;

  corral_source_split_1180:
    assume {:branchcond $i96} true;
    goto $bb30, $bb31;

  $bb29:
    $r := $i85;
    return;

  $bb30:
    assume $i96 == 1bv1;
    goto corral_source_split_1182;

  corral_source_split_1182:
    call {:si_unique_call 193} __res_iclose(statp, 0bv1);
    goto corral_source_split_1183;

  corral_source_split_1183:
    $i85 := 0bv32;
    goto $bb29;

  $bb31:
    assume !($i96 == 1bv1);
    goto corral_source_split_1185;

  corral_source_split_1185:
    call {:si_unique_call 194} $i97 := __builtinx_expect.bv32.bv32(0bv32, 0bv32);
    goto corral_source_split_1186;

  corral_source_split_1186:
    $i98 := $ne.bv32($i97, 0bv32);
    goto corral_source_split_1187;

  corral_source_split_1187:
    assume {:branchcond $i98} true;
    goto $bb32, $bb33;

  $bb32:
    assume $i98 == 1bv1;
    goto corral_source_split_1189;

  corral_source_split_1189:
    $i99 := $sext.bv32.bv64(ns);
    goto corral_source_split_1190;

  corral_source_split_1190:
    $p100 := $add.ref(statp, 512bv64);
    goto corral_source_split_1191;

  corral_source_split_1191:
    $p101 := $bitcast.ref.ref($p100);
    goto corral_source_split_1192;

  corral_source_split_1192:
    $p103 := $add.ref($add.ref($p101, 8bv64), $mul.ref($i99, 4bv64));
    goto corral_source_split_1193;

  corral_source_split_1193:
    $i104 := $load.bytes.bv32($M.0, $p103);
    goto corral_source_split_1194;

  corral_source_split_1194:
    call {:si_unique_call 195} $i105 := __fcntl.bv32.bv32($i104, 3bv32);
    call {:si_unique_call 196} {:cexpr "fl"} boogie_si_record_bv32($i105);
    goto corral_source_split_1195;

  corral_source_split_1195:
    $i106 := $ne.bv32($i105, $sub.bv32(0bv32, 1bv32));
    goto corral_source_split_1196;

  corral_source_split_1196:
    assume {:branchcond $i106} true;
    goto $bb34, $bb35;

  $bb33:
    assume !($i98 == 1bv1);
    goto $bb3;

  $bb34:
    assume $i106 == 1bv1;
    goto corral_source_split_1198;

  corral_source_split_1198:
    $i107 := $sext.bv32.bv64(ns);
    goto corral_source_split_1199;

  corral_source_split_1199:
    $p108 := $add.ref(statp, 512bv64);
    goto corral_source_split_1200;

  corral_source_split_1200:
    $p109 := $bitcast.ref.ref($p108);
    goto corral_source_split_1201;

  corral_source_split_1201:
    $p111 := $add.ref($add.ref($p109, 8bv64), $mul.ref($i107, 4bv64));
    goto corral_source_split_1202;

  corral_source_split_1202:
    $i112 := $load.bytes.bv32($M.0, $p111);
    goto corral_source_split_1203;

  corral_source_split_1203:
    $i113 := $or.bv32($i105, 2048bv32);
    goto corral_source_split_1204;

  corral_source_split_1204:
    call {:si_unique_call 197} vslice_dummy_var_0 := __fcntl.bv32.bv32.bv32($i112, 4bv32, $i113);
    goto corral_source_split_1205;

  corral_source_split_1205:
    goto $bb3;

  $bb35:
    assume !($i106 == 1bv1);
    goto $bb3;
}



const llvm.dbg.value: ref;

axiom llvm.dbg.value == $sub.ref(0bv64, 336bv64);

procedure llvm.dbg.value($p0: ref, $i1: bv64, $p2: ref);



const __SMACK_static_init: ref;

axiom __SMACK_static_init == $sub.ref(0bv64, 344bv64);

procedure __SMACK_static_init();
  free requires assertsPassed;
  modifies $M.7;



implementation __SMACK_static_init()
{

  $bb0:
    $M.7 := 0bv32;
    call {:si_unique_call 198} {:cexpr "send_dg.have_sendmmsg"} boogie_si_record_bv32(0bv32);
    return;
}



const $u0: bv32;

procedure $initialize();
  free requires assertsPassed;
  modifies $M.7, $CurrAddr;



implementation $initialize()
{

  anon0:
    call {:si_unique_call 199} __SMACK_static_init();
    call {:si_unique_call 200} __SMACK_init_func_memory_model();
    return;
}



procedure corral_assert_not_reachable();



var assertsPassed: bool;

procedure {:entrypoint} send_dg_SeqInstr(statp: ref, buf: ref, buflen: bv32, buf2: ref, buflen2: bv32, ansp: ref, anssizp: ref, terrno: ref, ns: bv32, v_circuit: ref, gotsomewhere: ref, anscp: ref, ansp2: ref, anssizp2: ref, resplen2: ref, ansp2_malloced: ref) returns ($r: bv32);
  free requires assertsPassed;
  modifies assertsPassed, $CurrAddr, $M.0, $M.2, $M.7, $M.1, $M.8, $M.10, $M.9, $M.11, $M.12, $M.17, $M.5, $M.6, $M.3, $M.4, $M.13, $M.14, $M.15, $M.16;



implementation {:entrypoint} send_dg_SeqInstr(statp: ref, buf: ref, buflen: bv32, buf2: ref, buflen2: bv32, ansp: ref, anssizp: ref, terrno: ref, ns: bv32, v_circuit: ref, gotsomewhere: ref, anscp: ref, ansp2: ref, anssizp2: ref, resplen2: ref, ansp2_malloced: ref) returns ($r: bv32)
{

  start:
    assertsPassed := true;
    call $r := send_dg(statp, buf, buflen, buf2, buflen2, ansp, anssizp, terrno, ns, v_circuit, gotsomewhere, anscp, ansp2, anssizp2, resplen2, ansp2_malloced);
    assert assertsPassed;
    return;
}


