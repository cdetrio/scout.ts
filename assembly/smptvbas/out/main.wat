(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "eth2_blockDataSize" (func $main/getBlockDataSize (result i32)))
 (import "env" "eth2_blockDataCopy" (func $main/copyBlockData (param i32 i32 i32)))
 (import "env" "eth2_savePostStateRoot" (func $main/savePostStateRoot (param i32)))
 (import "watimports" "$ethash_keccak256" (func $keccak/ethash_keccak256 (param i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 10000) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data (i32.const 10048) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00e\b7\b9\cc\b7\a4\d8(\98nH\8e\08\1b\c1\1b\fa^\f6\14\1f\b0k\n\f2\e9\a0\bd\a2s\a7S")
 (data (i32.const 10096) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00l\df9\d8\d7U8\a0\ca\d7!\f2Bv\ecHV.\\\90")
 (data (i32.const 10140) "\01\00\00\00\01")
 (data (i32.const 10152) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 10176) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 10200) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\000\000")
 (data (i32.const 10228) "\01")
 (data (i32.const 10244) "\01")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "getBlockDataSize" (func $main/getBlockDataSize))
 (export "copyBlockData" (func $main/copyBlockData))
 (export "savePostStateRoot" (func $main/savePostStateRoot))
 (export "main" (func $main/main))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/memory/memory.fill (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 1
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 3
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.sub
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   i32.const -4
   i32.and
   local.tee $1
   local.get $0
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 16
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   local.get $0
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 16
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 24
     i32.add
     i64.const 0
     i64.store
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/typedarray/Uint64Array.wrap (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner0
   local.get $1
   local.get $0
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   i32.ge_u
   br_if $folding-inner0
   local.get $1
   i32.const 32
   i32.add
   local.get $0
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   i32.gt_s
   br_if $folding-inner0
   i32.const 12
   i32.const 3
   call $~lib/rt/stub/__alloc
   local.tee $2
   local.get $2
   i32.load
   drop
   local.get $0
   i32.store
   local.get $2
   i32.const 32
   i32.store offset=8
   local.get $2
   local.get $0
   local.get $1
   i32.add
   i32.store offset=4
   local.get $2
   return
  end
  unreachable
 )
 (func $~lib/memory/memory.copy (; 9 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__allocArray (; 10 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $4
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $4
   local.get $3
   local.get $1
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/array/Array.create<u8> (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array.wrap (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner0
   i32.const 0
   local.get $0
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   i32.ge_u
   br_if $folding-inner0
   local.get $1
   i32.const 0
   i32.lt_s
   if
    local.get $1
    i32.const -1
    i32.ne
    br_if $folding-inner0
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const -2147483648
    i32.and
    br_if $folding-inner0
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    local.set $1
   end
   local.get $1
   local.get $0
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   i32.gt_s
   br_if $folding-inner0
   i32.const 12
   i32.const 6
   call $~lib/rt/stub/__alloc
   local.tee $2
   local.get $2
   i32.load
   drop
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=8
   local.get $2
   local.get $0
   i32.store offset=4
   local.get $2
   return
  end
  unreachable
 )
 (func $~lib/typedarray/Uint8Array#__get (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/rt/stub/__realloc (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load offset=12
  local.tee $3
  i32.gt_u
  if
   local.get $1
   local.get $2
   i32.load offset=8
   call $~lib/rt/stub/__alloc
   local.tee $1
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   local.get $1
   local.set $0
  else   
   local.get $2
   local.get $1
   i32.store offset=12
  end
  local.get $0
 )
 (func $~lib/array/ensureSize (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    unreachable
   end
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   local.get $2
   i32.shl
   local.tee $2
   call $~lib/rt/stub/__realloc
   local.tee $1
   local.get $3
   i32.add
   local.get $2
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u8>#__set (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $main/uintArrToNibbleArr (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.tee $1
  local.set $3
  local.get $1
  i32.const 1
  i32.shl
  call $~lib/array/Array.create<u8>
  local.set $1
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.const 4
    i32.shr_u
    call $~lib/array/Array<u8>#__set
    local.get $1
    local.get $4
    i32.const 1
    i32.add
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.const 15
    i32.and
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
 )
 (func $rlp/Decoded#constructor (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__alloc
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.load
  drop
  local.get $2
  local.get $0
  i32.store
  local.get $2
  i32.load offset=4
  drop
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 19 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__alloc
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $rlp/RLPData#constructor (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if
   i32.const 8
   i32.const 7
   call $~lib/rt/stub/__alloc
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.store offset=4
  else   
   i32.const 8
   i32.const 7
   call $~lib/rt/stub/__alloc
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.store offset=4
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $0
  end
  local.get $2
  i32.load
  drop
  local.get $2
  local.get $0
  i32.store
  local.get $1
  if
   local.get $2
   i32.load offset=4
   drop
   local.get $2
   local.get $1
   i32.store offset=4
  else   
   i32.const 16
   i32.const 8
   call $~lib/rt/stub/__alloc
   i32.const 0
   i32.const 2
   call $~lib/arraybuffer/ArrayBufferView#constructor
   local.tee $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $2
   i32.load offset=4
   drop
   local.get $2
   local.get $0
   i32.store offset=4
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#subarray (; 22 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $4
  i32.load offset=8
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.set $2
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__alloc
  local.set $1
  local.get $4
  i32.load
  local.tee $3
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $4
  i32.load offset=4
  local.get $0
  i32.add
  i32.store offset=4
  local.get $1
  local.get $2
  local.get $0
  local.get $2
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.store offset=8
  local.get $1
 )
 (func $~lib/string/String#get:length (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charAt (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 10016
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 10152
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.const 1
  i32.shl
  i32.const 10016
  i32.add
  i32.load16_u
  i32.store16
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#push (; 25 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#reverse (; 26 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  if
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 1
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   local.set $1
   loop $continue|0
    local.get $2
    local.get $1
    i32.lt_u
    if
     local.get $2
     i32.load
     local.set $3
     local.get $2
     local.get $1
     i32.load
     i32.store
     local.get $1
     local.get $3
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     local.get $1
     i32.const 4
     i32.sub
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   i32.const 10152
   return
  end
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $4
  i32.eqz
  if
   local.get $5
   i32.load
   return
  end
  i32.const 10152
  call $~lib/string/String#get:length
  local.set $6
  i32.const 0
  local.set $0
  local.get $4
  i32.const 1
  i32.add
  local.set $3
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    local.get $1
    i32.const 2
    i32.shl
    local.get $5
    i32.add
    i32.load
    local.set $0
    local.get $0
    if
     local.get $0
     call $~lib/string/String#get:length
     local.get $2
     i32.add
     local.set $2
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  i32.const 0
  local.set $1
  local.get $4
  local.get $6
  i32.mul
  local.get $2
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $2
  i32.const 0
  local.set $3
  loop $loop|1
   local.get $3
   local.get $4
   i32.lt_s
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $5
    i32.add
    i32.load
    local.set $0
    local.get $0
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $0
     local.get $0
     call $~lib/string/String#get:length
     local.tee $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $7
     i32.add
     local.set $1
    end
    local.get $6
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 10152
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $6
     i32.add
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|1
   end
  end
  local.get $4
  i32.const 2
  i32.shl
  local.get $5
  i32.add
  i32.load
  local.set $0
  local.get $0
  if
   local.get $1
   i32.const 1
   i32.shl
   local.get $2
   i32.add
   local.get $0
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/string/String#concat (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 10168
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $2
  local.get $0
  i32.const 10192
  local.get $0
  select
  local.tee $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $3
  i32.add
  local.tee $1
  i32.eqz
  if
   i32.const 10152
   return
  end
  local.get $1
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.const 10168
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $1
 )
 (func $rlp/intToHex (; 29 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 16
  i32.const 10
  call $~lib/rt/stub/__alloc
  i32.const 0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=12
  loop $continue|0
   local.get $0
   i32.const 15
   i32.and
   local.set $2
   local.get $0
   i32.const 16
   i32.div_u
   local.set $0
   local.get $1
   local.get $2
   call $~lib/string/String#charAt
   call $~lib/array/Array<~lib/string/String>#push
   local.get $0
   br_if $continue|0
  end
  local.get $1
  call $~lib/array/Array<~lib/string/String>#reverse
  call $~lib/array/Array<~lib/string/String>#join_str
  local.tee $0
  call $~lib/string/String#get:length
  i32.const 2
  i32.rem_s
  if (result i32)
   local.get $0
   call $~lib/string/String#concat
  else   
   local.get $0
  end
 )
 (func $~lib/string/String#charCodeAt (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  i32.load16_u
 )
 (func $~lib/typedarray/Uint8Array#__set (; 31 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  local.get $0
  i32.lt_u
  if
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $5
  local.set $2
  loop $continue|0
   block $break|0
    local.get $0
    local.get $4
    i32.ge_u
    br_if $break|0
    local.get $0
    local.tee $1
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.load8_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if
     local.get $2
     local.get $3
     i32.store16
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $3
     i32.const 224
     i32.lt_u
     i32.const 0
     local.get $3
     i32.const 191
     i32.gt_u
     select
     if
      local.get $4
      local.get $0
      i32.sub
      i32.const 1
      i32.lt_u
      br_if $break|0
      local.get $0
      local.tee $1
      i32.const 1
      i32.add
      local.set $0
      local.get $2
      local.get $1
      i32.load8_u
      i32.const 63
      i32.and
      local.get $3
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      i32.or
      i32.store16
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $3
      i32.const 365
      i32.lt_u
      i32.const 0
      local.get $3
      i32.const 239
      i32.gt_u
      select
      if (result i32)
       local.get $4
       local.get $0
       i32.sub
       i32.const 3
       i32.lt_u
       br_if $break|0
       local.get $2
       local.get $0
       i32.load8_u offset=2
       i32.const 63
       i32.and
       local.get $3
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $0
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.or
       i32.const 65536
       i32.sub
       local.tee $1
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.add
       i32.store16
       local.get $2
       local.get $1
       i32.const 1023
       i32.and
       i32.const 56320
       i32.add
       i32.store16 offset=2
       local.get $2
       i32.const 4
       i32.add
       local.set $2
       local.get $0
       i32.const 3
       i32.add
      else       
       local.get $4
       local.get $0
       i32.sub
       i32.const 2
       i32.lt_u
       br_if $break|0
       local.get $2
       local.get $0
       i32.load8_u offset=1
       i32.const 63
       i32.and
       local.get $3
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.or
       i32.store16
       local.get $2
       i32.const 2
       i32.add
       local.set $2
       local.get $0
       i32.const 2
       i32.add
      end
      local.set $0
     end
    end
    br $continue|0
   end
  end
  local.get $5
  local.get $2
  local.get $5
  i32.sub
  call $~lib/rt/stub/__realloc
 )
 (func $rlp/bytesToHex (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shl
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  loop $loop|0
   local.get $2
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    local.tee $3
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $rlp/intToHex
    local.tee $4
    i32.const 0
    call $~lib/string/String#charCodeAt
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    local.get $3
    i32.const 1
    i32.add
    local.get $4
    i32.const 1
    call $~lib/string/String#charCodeAt
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.add
  local.get $1
  i32.load offset=8
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $~lib/string/String#slice (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.get $0
  call $~lib/string/String#get:length
  local.tee $1
  i32.const 0
  local.get $1
  i32.lt_s
  select
  local.set $2
  i32.const 2
  local.get $1
  i32.const 2
  local.get $1
  i32.lt_s
  select
  local.get $2
  i32.sub
  local.tee $1
  i32.const 0
  i32.le_s
  if
   i32.const 10152
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  local.tee $1
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $3
  local.get $2
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.get $1
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/util/string/compareImpl (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 10216
  local.set $2
  loop $continue|0
   local.get $1
   if (result i32)
    local.get $0
    i32.load16_u
    local.get $2
    i32.load16_u
    i32.sub
    local.tee $3
    i32.eqz
   else    
    i32.const 0
   end
   if
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $3
 )
 (func $~lib/string/String.__eq (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 10216
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   i32.const 0
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $1
   i32.const 10216
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $~lib/util/string/isSpace (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.le_s
  if
   block $break|0
    block $case6|0
     local.get $0
     i32.const 10
     i32.eq
     local.get $0
     i32.const 11
     i32.eq
     i32.or
     local.get $0
     i32.const 9
     i32.eq
     i32.or
     br_if $case6|0
     local.get $0
     i32.const 12
     i32.eq
     local.get $0
     i32.const 13
     i32.eq
     i32.or
     local.get $0
     i32.const 32
     i32.eq
     local.get $0
     i32.const 160
     i32.eq
     i32.or
     i32.or
     br_if $case6|0
     br $break|0
    end
    i32.const 1
    return
   end
   i32.const 0
   return
  end
  local.get $0
  i32.const 8202
  i32.le_s
  i32.const 0
  local.get $0
  i32.const 8192
  i32.ge_s
  select
  if
   i32.const 1
   return
  end
  block $break|1
   block $case6|1
    local.get $0
    i32.const 8232
    i32.eq
    local.get $0
    i32.const 8233
    i32.eq
    i32.or
    local.get $0
    i32.const 5760
    i32.eq
    i32.or
    br_if $case6|1
    local.get $0
    i32.const 8239
    i32.eq
    local.get $0
    i32.const 8287
    i32.eq
    i32.or
    local.get $0
    i32.const 12288
    i32.eq
    local.get $0
    i32.const 65279
    i32.eq
    i32.or
    i32.or
    br_if $case6|1
    br $break|1
   end
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/util/string/strtol<i32> (; 39 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   i32.eqz
   br_if $folding-inner0
   local.get $0
   local.tee $1
   i32.load16_u
   local.set $0
   i32.const 1
   local.set $3
   loop $continue|0
    local.get $0
    call $~lib/util/string/isSpace
    if
     local.get $1
     i32.const 2
     i32.add
     local.tee $1
     i32.load16_u
     local.set $0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $0
   i32.const 45
   i32.eq
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.eqz
    br_if $folding-inner0
    i32.const -1
    local.set $3
    local.get $1
    i32.const 2
    i32.add
    local.tee $1
    i32.load16_u
    drop
   else    
    local.get $0
    i32.const 43
    i32.eq
    if
     local.get $2
     i32.const 1
     i32.sub
     local.tee $2
     i32.eqz
     br_if $folding-inner0
     local.get $1
     i32.const 2
     i32.add
     local.tee $1
     i32.load16_u
     drop
    end
   end
   loop $continue|2
    block $break|2
     local.get $2
     local.tee $0
     i32.const 1
     i32.sub
     local.set $2
     local.get $0
     i32.eqz
     br_if $break|2
     local.get $1
     i32.load16_u
     local.tee $0
     i32.const 48
     i32.ge_s
     if (result i32)
      local.get $0
      i32.const 57
      i32.le_s
     else      
      i32.const 0
     end
     if (result i32)
      local.get $0
      i32.const 48
      i32.sub
     else      
      local.get $0
      i32.const 90
      i32.le_s
      i32.const 0
      local.get $0
      i32.const 65
      i32.ge_s
      select
      if (result i32)
       local.get $0
       i32.const 55
       i32.sub
      else       
       local.get $0
       i32.const 122
       i32.le_s
       i32.const 0
       local.get $0
       i32.const 97
       i32.ge_s
       select
       i32.eqz
       br_if $break|2
       local.get $0
       i32.const 87
       i32.sub
      end
     end
     local.tee $0
     i32.const 16
     i32.ge_s
     br_if $break|2
     local.get $4
     i32.const 4
     i32.shl
     local.get $0
     i32.add
     local.set $4
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $continue|2
    end
   end
   local.get $3
   local.get $4
   i32.mul
   return
  end
  i32.const 0
 )
 (func $rlp/safeParseInt (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/string/String#slice
  call $~lib/string/String.__eq
  if
   unreachable
  end
  local.get $0
  call $~lib/util/string/strtol<i32>
 )
 (func $rlp/_decode (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  local.tee $1
  i32.const 127
  i32.le_u
  if (result i32)
   local.get $0
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Uint8Array#subarray
   i32.const 0
   call $rlp/RLPData#constructor
   local.get $0
   i32.const 1
   i32.const 2147483647
   call $~lib/typedarray/Uint8Array#subarray
   call $rlp/Decoded#constructor
  else   
   local.get $1
   i32.const 183
   i32.le_u
   if (result i32)
    local.get $1
    i32.const 127
    i32.sub
    i32.const 255
    i32.and
    local.set $2
    local.get $1
    i32.const 128
    i32.eq
    if
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     i32.const 0
     call $rlp/RLPData#constructor
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     call $rlp/Decoded#constructor
     return
    end
    local.get $0
    i32.const 1
    local.get $2
    call $~lib/typedarray/Uint8Array#subarray
    local.set $1
    local.get $2
    i32.const 2
    i32.eq
    if (result i32)
     local.get $1
     i32.const 0
     call $~lib/typedarray/Uint8Array#__get
     i32.const 128
     i32.lt_u
    else     
     i32.const 0
    end
    if
     unreachable
    end
    local.get $1
    i32.const 0
    call $rlp/RLPData#constructor
    local.get $0
    local.get $2
    i32.const 2147483647
    call $~lib/typedarray/Uint8Array#subarray
    call $rlp/Decoded#constructor
   else    
    local.get $1
    i32.const 191
    i32.le_u
    if (result i32)
     local.get $0
     i32.const 1
     local.get $1
     i32.const 182
     i32.sub
     local.tee $3
     i32.const 255
     i32.and
     local.tee $2
     call $~lib/typedarray/Uint8Array#subarray
     call $rlp/bytesToHex
     call $rlp/safeParseInt
     local.set $1
     local.get $0
     local.get $2
     local.get $1
     local.get $2
     i32.add
     call $~lib/typedarray/Uint8Array#subarray
     local.tee $2
     i32.load offset=8
     local.get $1
     i32.lt_u
     if
      unreachable
     end
     local.get $2
     i32.const 0
     call $rlp/RLPData#constructor
     local.get $0
     local.get $3
     i32.const 255
     i32.and
     local.get $1
     i32.add
     i32.const 2147483647
     call $~lib/typedarray/Uint8Array#subarray
     call $rlp/Decoded#constructor
    else     
     local.get $1
     i32.const 247
     i32.le_u
     if (result i32)
      local.get $0
      i32.const 1
      local.get $1
      i32.const 191
      i32.sub
      i32.const 255
      i32.and
      local.tee $3
      call $~lib/typedarray/Uint8Array#subarray
      local.set $1
      i32.const 0
      i32.const 2
      i32.const 8
      i32.const 10240
      call $~lib/rt/__allocArray
      local.set $2
      loop $continue|0
       local.get $1
       i32.load offset=8
       if
        local.get $2
        local.get $1
        call $rlp/_decode
        local.tee $1
        i32.load
        call $~lib/array/Array<~lib/string/String>#push
        local.get $1
        i32.load offset=4
        local.set $1
        br $continue|0
       end
      end
      i32.const 0
      local.get $2
      call $rlp/RLPData#constructor
      local.get $0
      local.get $3
      i32.const 2147483647
      call $~lib/typedarray/Uint8Array#subarray
      call $rlp/Decoded#constructor
     else      
      local.get $0
      i32.const 1
      local.get $1
      i32.const 246
      i32.sub
      local.tee $1
      i32.const 255
      i32.and
      local.tee $2
      call $~lib/typedarray/Uint8Array#subarray
      call $rlp/bytesToHex
      call $rlp/safeParseInt
      local.get $2
      i32.add
      local.tee $2
      local.get $0
      i32.load offset=8
      i32.gt_u
      if
       unreachable
      end
      local.get $0
      local.get $1
      i32.const 255
      i32.and
      local.get $2
      call $~lib/typedarray/Uint8Array#subarray
      local.tee $1
      i32.load offset=8
      i32.eqz
      if
       unreachable
      end
      i32.const 0
      i32.const 2
      i32.const 8
      i32.const 10256
      call $~lib/rt/__allocArray
      local.set $3
      loop $continue|1
       local.get $1
       i32.load offset=8
       if
        local.get $3
        local.get $1
        call $rlp/_decode
        local.tee $1
        i32.load
        call $~lib/array/Array<~lib/string/String>#push
        local.get $1
        i32.load offset=4
        local.set $1
        br $continue|1
       end
      end
      i32.const 0
      local.get $3
      call $rlp/RLPData#constructor
      local.get $0
      local.get $2
      i32.const 2147483647
      call $~lib/typedarray/Uint8Array#subarray
      call $rlp/Decoded#constructor
     end
    end
   end
  end
 )
 (func $rlp/decode (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $rlp/_decode
  local.tee $0
  i32.load offset=4
  i32.load offset=8
  if
   unreachable
  end
  local.get $0
  i32.load
 )
 (func $~lib/array/Array<rlp/RLPData>#__get (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/typedarray/Uint64Array#__get (; 44 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $main/getNodeType (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  i32.const 17
  i32.eq
  if
   i32.const 0
   return
  else   
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.eq
   if
    local.get $0
    i32.const 0
    call $~lib/array/Array<rlp/RLPData>#__get
    i32.load
    i32.const 0
    call $~lib/typedarray/Uint8Array#__get
    i32.const 4
    i32.shr_s
    i32.const 1
    i32.gt_s
    if
     i32.const 1
     return
    end
    i32.const 2
    return
   end
  end
  i32.const 3
 )
 (func $~lib/array/Array<u8>#slice (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 2147483647
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2147483647
  local.get $2
  i32.lt_s
  select
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  i32.const 4
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $3
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $main/matchingNibbleLength (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  loop $loop|0
   block $break|0
    local.get $2
    local.get $0
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.ne
    br_if $break|0
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $2
 )
 (func $main/verifyProof (; 48 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  loop $loop|0
   local.get $6
   local.get $2
   i32.load offset=4
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $2
    i32.load offset=4
    local.get $6
    call $~lib/array/Array<rlp/RLPData>#__get
    i32.load
    i32.load offset=4
    local.get $2
    i32.load offset=4
    local.get $6
    call $~lib/array/Array<rlp/RLPData>#__get
    i32.load
    i32.load offset=8
    call $keccak/ethash_keccak256
    local.get $0
    i32.const 0
    call $~lib/typedarray/Uint64Array#__get
    local.get $4
    i32.const 0
    call $~lib/typedarray/Uint64Array#__get
    i64.ne
    if (result i32)
     i32.const 1
    else     
     local.get $0
     i32.const 1
     call $~lib/typedarray/Uint64Array#__get
     local.get $4
     i32.const 1
     call $~lib/typedarray/Uint64Array#__get
     i64.ne
    end
    if (result i32)
     i32.const 1
    else     
     local.get $0
     i32.const 2
     call $~lib/typedarray/Uint64Array#__get
     local.get $4
     i32.const 2
     call $~lib/typedarray/Uint64Array#__get
     i64.ne
    end
    if (result i32)
     i32.const 1
    else     
     local.get $0
     i32.const 3
     call $~lib/typedarray/Uint64Array#__get
     local.get $4
     i32.const 3
     call $~lib/typedarray/Uint64Array#__get
     i64.ne
    end
    if
     unreachable
    end
    local.get $2
    i32.load offset=4
    local.get $6
    call $~lib/array/Array<rlp/RLPData>#__get
    i32.load
    call $rlp/decode
    local.tee $5
    i32.load offset=4
    call $main/getNodeType
    local.tee $7
    i32.eqz
    if
     local.get $5
     i32.load offset=4
     local.get $1
     local.get $8
     call $~lib/typedarray/Uint8Array#__get
     call $~lib/array/Array<rlp/RLPData>#__get
     local.set $0
     local.get $8
     i32.const 1
     i32.add
     local.set $8
     local.get $0
     i32.load offset=4
     i32.load offset=12
     i32.const 2
     i32.eq
     if
      unreachable
     end
     local.get $0
     i32.load
     i32.load
     local.get $0
     i32.load
     call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
     call $~lib/typedarray/Uint64Array.wrap
     local.set $0
    end
    local.get $7
    i32.const 1
    i32.eq
    if
     local.get $5
     i32.load offset=4
     i32.const 0
     call $~lib/array/Array<rlp/RLPData>#__get
     local.get $5
     i32.load offset=4
     i32.const 1
     call $~lib/array/Array<rlp/RLPData>#__get
     local.set $5
     i32.load
     call $main/uintArrToNibbleArr
     local.tee $0
     i32.const 0
     call $~lib/typedarray/Uint8Array#__get
     i32.const 1
     i32.and
     if (result i32)
      local.get $0
      i32.const 1
      call $~lib/array/Array<u8>#slice
     else      
      local.get $0
      i32.const 2
      call $~lib/array/Array<u8>#slice
     end
     local.tee $0
     local.get $1
     local.get $8
     call $~lib/array/Array<u8>#slice
     local.tee $7
     call $main/matchingNibbleLength
     local.get $0
     i32.load offset=12
     i32.ne
     if
      unreachable
     end
     local.get $7
     local.get $0
     i32.load offset=12
     call $~lib/array/Array<u8>#slice
     i32.load offset=12
     i32.eqz
     if
      local.get $5
      i32.load
      i32.load offset=8
      i32.const 17
      i32.eq
      if
       unreachable
      end
      local.get $5
      i32.load
      i32.load offset=4
      return
     end
     local.get $5
     i32.load
     i32.load
     local.get $5
     i32.load
     call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
     call $~lib/typedarray/Uint64Array.wrap
     local.set $0
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
  end
  i32.const 123
 )
 (func $main/main (; 49 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 650
  call $~lib/arraybuffer/ArrayBuffer#constructor
  drop
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.const 0
  call $~lib/typedarray/Uint64Array.wrap
  local.set $6
  i32.const 32
  call $~lib/array/Array.create<u8>
  drop
  i32.const 32
  i32.const 0
  i32.const 4
  i32.const 10064
  call $~lib/rt/__allocArray
  local.tee $1
  i32.load
  i32.const 0
  call $~lib/typedarray/Uint64Array.wrap
  drop
  i32.const 20
  call $~lib/array/Array.create<u8>
  drop
  i32.const 20
  i32.const 0
  i32.const 4
  i32.const 10112
  call $~lib/rt/__allocArray
  i32.load
  i32.const 20
  call $~lib/typedarray/Uint8Array.wrap
  local.set $0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $0
  i32.load offset=4
  i32.const 20
  call $keccak/ethash_keccak256
  local.get $2
  i32.const 32
  call $~lib/typedarray/Uint8Array.wrap
  call $main/uintArrToNibbleArr
  local.set $2
  call $main/getBlockDataSize
  local.tee $0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  i32.const 0
  local.get $0
  call $main/copyBlockData
  local.get $7
  local.get $0
  call $~lib/typedarray/Uint8Array.wrap
  call $rlp/decode
  local.set $0
  local.get $1
  i32.load
  i32.const 0
  call $~lib/typedarray/Uint64Array.wrap
  local.set $1
  loop $loop|0
   local.get $3
   i32.const 1
   i32.lt_s
   if
    local.get $1
    local.get $2
    local.get $0
    local.get $5
    local.get $6
    call $main/verifyProof
    local.set $4
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
  end
  local.get $4
  call $main/savePostStateRoot
  local.get $4
 )
 (func $start (; 50 ;) (type $FUNCSIG$v)
  i32.const 10256
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $null (; 51 ;) (type $FUNCSIG$v)
  nop
 )
)
