; ModuleID = 'probe1.b316f6013465d776-cgu.0'
source_filename = "probe1.b316f6013465d776-cgu.0"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { [1 x i32], ptr }

@alloc_8df0580a595a87d56789d20c7318e185 = private unnamed_addr constant <{ [166 x i8] }> <{ [166 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap" }>, align 1
@0 = private unnamed_addr constant <{ [4 x i8], [4 x i8] }> <{ [4 x i8] zeroinitializer, [4 x i8] undef }>, align 4
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_961fd82c18500a61bf8f6d7be21ce6b0 = private unnamed_addr constant <{ ptr, [4 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [4 x i8] c"\0C\00\00\00" }>, align 4
@alloc_f93ec54d5f8967ace27e16fb5cbd0974 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/fmt/mod.rs" }>, align 1
@alloc_c996d719b03b70d75fd3f485b4b6e56f = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_f93ec54d5f8967ace27e16fb5cbd0974, [12 x i8] c"K\00\00\00U\01\00\00\0D\00\00\00" }>, align 4
@alloc_d4d2a2a8539eafc62756407d946babb3 = private unnamed_addr constant <{ [110 x i8] }> <{ [110 x i8] c"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null" }>, align 1
@alloc_20b3d155afd5c58c42e598b7e6d186ef = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null" }>, align 1
@alloc_773eb6089c5345b558b6e9b46acd32c7 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/alloc/layout.rs" }>, align 1
@alloc_1badb795fc013c5a391ae9dae4e3a137 = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_773eb6089c5345b558b6e9b46acd32c7, [12 x i8] c"P\00\00\00\C3\01\00\00)\00\00\00" }>, align 4
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant <{ [61 x i8] }> <{ [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize" }>, align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"is_aligned_to: align is not a power-of-two" }>, align 1
@alloc_b498cf0a06cafe1ad822ab5dde97c8c0 = private unnamed_addr constant <{ ptr, [4 x i8] }> <{ ptr @alloc_fad0cd83b7d1858a846a172eb260e593, [4 x i8] c"*\00\00\00" }>, align 4
@alloc_ceda132f29d7566153090be3080ad0f8 = private unnamed_addr constant <{ [81 x i8] }> <{ [81 x i8] c"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/ptr/const_ptr.rs" }>, align 1
@alloc_2f85c3373aac8b285ea093821a4ea7c0 = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_ceda132f29d7566153090be3080ad0f8, [12 x i8] c"Q\00\00\00R\06\00\00\0D\00\00\00" }>, align 4
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_68ac15728a1e6ba4743b718936db7fdf = private unnamed_addr constant <{ ptr, [4 x i8] }> <{ ptr inttoptr (i32 1 to ptr), [4 x i8] zeroinitializer }>, align 4
@alloc_83ea17bf0c4f4a5a5a13d3ae7955acd0 = private unnamed_addr constant <{ [4 x i8] }> zeroinitializer, align 4

; core::intrinsics::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h6b50ec5956255cbdE(ptr %src, ptr %dst, i32 %size, i32 %align, i32 %count) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke core::ub_checks::is_aligned_and_not_null
  %_6 = invoke zeroext i1 @_ZN4core9ub_checks23is_aligned_and_not_null17h07de5bcc75b9a001E(ptr %src, i32 %align)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %bb4, %bb2, %start
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17hcd918836274fd633E() #13
  unreachable

bb1:                                              ; preds = %start
  br i1 %_6, label %bb2, label %bb7

bb7:                                              ; preds = %bb6, %bb3, %bb1
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hf46088b150724599E(ptr align 1 @alloc_8df0580a595a87d56789d20c7318e185, i32 166) #14
  unreachable

bb2:                                              ; preds = %bb1
; invoke core::ub_checks::is_aligned_and_not_null
  %_7 = invoke zeroext i1 @_ZN4core9ub_checks23is_aligned_and_not_null17h07de5bcc75b9a001E(ptr %dst, i32 %align)
          to label %bb3 unwind label %terminate

bb3:                                              ; preds = %bb2
  br i1 %_7, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
; invoke core::ub_checks::is_nonoverlapping::runtime
  %_9 = invoke zeroext i1 @_ZN4core9ub_checks17is_nonoverlapping7runtime17hc56c56df388ea68bE(ptr %src, ptr %dst, i32 %size, i32 %count)
          to label %bb8 unwind label %terminate

bb8:                                              ; preds = %bb4
  br i1 %_9, label %bb5, label %bb6

bb6:                                              ; preds = %bb8
  br label %bb7

bb5:                                              ; preds = %bb8
  ret void
}

; core::intrinsics::unlikely
; Function Attrs: nounwind uwtable
define internal zeroext i1 @_ZN4core10intrinsics8unlikely17h1cfb2fd98ca23cc7E(i1 zeroext %b) unnamed_addr #1 {
start:
  ret i1 %b
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h2e97fb4a925a414bE(ptr sret([24 x i8]) align 4 %_0, ptr align 4 %pieces.0, i32 %pieces.1, ptr align 4 %args.0, i32 %args.1) unnamed_addr #2 {
start:
  %_9 = alloca [24 x i8], align 4
  %_3 = icmp ult i32 %pieces.1, %args.1
  br i1 %_3, label %bb3, label %bb1

bb1:                                              ; preds = %start
  %_7 = add i32 %args.1, 1
  %_6 = icmp ugt i32 %pieces.1, %_7
  br i1 %_6, label %bb2, label %bb4

bb3:                                              ; preds = %bb2, %start
  store ptr @alloc_961fd82c18500a61bf8f6d7be21ce6b0, ptr %_9, align 4
  %0 = getelementptr inbounds i8, ptr %_9, i32 4
  store i32 1, ptr %0, align 4
  %1 = load ptr, ptr @0, align 4
  %2 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %3 = getelementptr inbounds i8, ptr %_9, i32 16
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 %2, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %_9, i32 8
  store ptr inttoptr (i32 4 to ptr), ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h835adbb8badaec40E(ptr align 4 %_9, ptr align 4 @alloc_c996d719b03b70d75fd3f485b4b6e56f) #15
  unreachable

bb4:                                              ; preds = %bb1
  store ptr %pieces.0, ptr %_0, align 4
  %7 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %pieces.1, ptr %7, align 4
  %8 = load ptr, ptr @0, align 4
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %10 = getelementptr inbounds i8, ptr %_0, i32 16
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %_0, i32 8
  store ptr %args.0, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 %args.1, ptr %13, align 4
  ret void

bb2:                                              ; preds = %bb1
  br label %bb3
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h84f2fdc3d4a7cce5E(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %0, i32 %1) unnamed_addr #2 {
start:
  %_2 = alloca [8 x i8], align 4
  store ptr %0, ptr %_2, align 4
  %2 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 %1, ptr %2, align 4
  %3 = load ptr, ptr %_2, align 4
  %4 = getelementptr inbounds i8, ptr %_2, i32 4
  %5 = load i32, ptr %4, align 4
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h37f332deec422359E"(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %3, i32 %5)
  ret void
}

; core::ptr::read_volatile::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core3ptr13read_volatile18precondition_check17hc939377d1cac6542E(ptr %addr, i32 %align) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke core::ub_checks::is_aligned_and_not_null
  %_3 = invoke zeroext i1 @_ZN4core9ub_checks23is_aligned_and_not_null17h07de5bcc75b9a001E(ptr %addr, i32 %align)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17hcd918836274fd633E() #13
  unreachable

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hf46088b150724599E(ptr align 1 @alloc_d4d2a2a8539eafc62756407d946babb3, i32 110) #14
  unreachable

bb2:                                              ; preds = %bb1
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0d876c0b3a221163E"(ptr align 4 %_1) unnamed_addr #3 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he8270e6634ca335fE"(ptr align 4 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he8270e6634ca335fE"(ptr align 4 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [8 x i8], align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e05f53f3419a159E"(ptr align 4 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he795c143048cb5cdE"(ptr align 4 %_1) #16
          to label %bb1 unwind label %terminate

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %3, ptr %4, align 4
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he795c143048cb5cdE"(ptr align 4 %_1)
  ret void

terminate:                                        ; preds = %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h412035ff8275ea86E() #13
  unreachable

bb1:                                              ; preds = %bb3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he795c143048cb5cdE"(ptr align 4 %_1) unnamed_addr #3 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h002757cef4bc1d36E"(ptr align 4 %_1)
  ret void
}

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h285ccec7d82f57beE"(ptr %ptr) unnamed_addr #0 {
start:
  %_4 = ptrtoint ptr %ptr to i32
  %0 = icmp eq i32 %_4, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hf46088b150724599E(ptr align 1 @alloc_20b3d155afd5c58c42e598b7e6d186ef, i32 93) #14
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::alloc::layout::Layout::array::inner
; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @_ZN4core5alloc6layout6Layout5array5inner17hceddc3c46fca1cfaE(i32 %element_size, i32 %align, i32 %n) unnamed_addr #2 {
start:
  %_18 = alloca [4 x i8], align 4
  %_13 = alloca [4 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %_0 = alloca [8 x i8], align 4
  %0 = icmp eq i32 %element_size, 0
  br i1 %0, label %bb5, label %bb1

bb5:                                              ; preds = %bb4, %start
  %array_size = mul nuw i32 %element_size, %n
  store i32 %align, ptr %_18, align 4
  %_19 = load i32, ptr %_18, align 4
  %_20 = icmp uge i32 %_19, 1
  %_21 = icmp ule i32 %_19, -2147483648
  %_22 = and i1 %_20, %_21
  %1 = getelementptr inbounds i8, ptr %_9, i32 4
  store i32 %array_size, ptr %1, align 4
  store i32 %_19, ptr %_9, align 4
  %2 = load i32, ptr %_9, align 4
  %3 = getelementptr inbounds i8, ptr %_9, i32 4
  %4 = load i32, ptr %3, align 4
  store i32 %2, ptr %_0, align 4
  %5 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %4, ptr %5, align 4
  br label %bb6

bb1:                                              ; preds = %start
  store i32 %align, ptr %_13, align 4
  %_14 = load i32, ptr %_13, align 4
  %_15 = icmp uge i32 %_14, 1
  %_16 = icmp ule i32 %_14, -2147483648
  %_17 = and i1 %_15, %_16
  %_11 = sub i32 %_14, 1
  %_6 = sub i32 2147483647, %_11
  %_7 = icmp eq i32 %element_size, 0
  %6 = call i1 @llvm.expect.i1(i1 %_7, i1 false)
  br i1 %6, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = udiv i32 %_6, %element_size
  %_4 = icmp ugt i32 %n, %_5
  br i1 %_4, label %bb3, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h476dad0e5907eedbE(ptr align 4 @alloc_1badb795fc013c5a391ae9dae4e3a137) #15
  unreachable

bb4:                                              ; preds = %bb2
  br label %bb5

bb3:                                              ; preds = %bb2
  %7 = load i32, ptr @0, align 4
  %8 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store i32 %7, ptr %_0, align 4
  %9 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %8, ptr %9, align 4
  br label %bb6

bb6:                                              ; preds = %bb3, %bb5
  %10 = load i32, ptr %_0, align 4
  %11 = getelementptr inbounds i8, ptr %_0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = insertvalue { i32, i32 } poison, i32 %10, 0
  %14 = insertvalue { i32, i32 } %13, i32 %12, 1
  ret { i32, i32 } %14
}

; core::alloc::layout::Layout::dangling
; Function Attrs: inlinehint uwtable
define internal ptr @_ZN4core5alloc6layout6Layout8dangling17ha32cabe7ab4987e2E(ptr align 4 %self) unnamed_addr #2 {
start:
  %_5 = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %self1 = load i32, ptr %self, align 4
  store i32 %self1, ptr %_5, align 4
  %_6 = load i32, ptr %_5, align 4
  %_7 = icmp uge i32 %_6, 1
  %_8 = icmp ule i32 %_6, -2147483648
  %_9 = and i1 %_7, %_8
  %ptr = getelementptr i8, ptr null, i32 %_6
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h285ccec7d82f57beE"(ptr %ptr) #17
  br label %bb3

bb3:                                              ; preds = %bb1
  store ptr %ptr, ptr %_0, align 4
  %0 = load ptr, ptr %_0, align 4
  ret ptr %0
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h40fbc40979177250E"(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %0, i32 %1, ptr align 4 %default) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %2 = alloca [8 x i8], align 4
  %_10 = alloca [1 x i8], align 1
  %_9 = alloca [1 x i8], align 1
  %_7 = alloca [8 x i8], align 4
  %self = alloca [8 x i8], align 4
  store ptr %0, ptr %self, align 4
  %3 = getelementptr inbounds i8, ptr %self, i32 4
  store i32 %1, ptr %3, align 4
  store i8 1, ptr %_10, align 1
  store i8 1, ptr %_9, align 1
  %4 = load ptr, ptr %self, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = icmp eq i32 %5, 0
  %_4 = select i1 %6, i32 0, i32 1
  %7 = icmp eq i32 %_4, 0
  br i1 %7, label %bb2, label %bb3

bb2:                                              ; preds = %start
  store i8 0, ptr %_10, align 1
; invoke alloc::fmt::format::{{closure}}
  invoke void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h58bd349445f2d6dcE"(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %default)
          to label %bb5 unwind label %cleanup

bb3:                                              ; preds = %start
  %t.0 = load ptr, ptr %self, align 4
  %8 = getelementptr inbounds i8, ptr %self, i32 4
  %t.1 = load i32, ptr %8, align 4
  store i8 0, ptr %_9, align 1
  store ptr %t.0, ptr %_7, align 4
  %9 = getelementptr inbounds i8, ptr %_7, i32 4
  store i32 %t.1, ptr %9, align 4
  %10 = load ptr, ptr %_7, align 4
  %11 = getelementptr inbounds i8, ptr %_7, i32 4
  %12 = load i32, ptr %11, align 4
; invoke core::ops::function::FnOnce::call_once
  invoke void @_ZN4core3ops8function6FnOnce9call_once17h84f2fdc3d4a7cce5E(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %10, i32 %12)
          to label %bb4 unwind label %cleanup

bb11:                                             ; preds = %cleanup
  %13 = load i8, ptr %_9, align 1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb10, label %bb7

cleanup:                                          ; preds = %bb3, %bb2
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  store ptr %16, ptr %2, align 4
  %18 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 %17, ptr %18, align 4
  br label %bb11

bb5:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb9, %bb4, %bb5
  ret void

bb4:                                              ; preds = %bb3
  %19 = load i8, ptr %_10, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb9, label %bb6

bb9:                                              ; preds = %bb4
  br label %bb6

bb7:                                              ; preds = %bb10, %bb11
  %21 = load i8, ptr %_10, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb12, label %bb8

bb10:                                             ; preds = %bb11
  br label %bb7

bb8:                                              ; preds = %bb12, %bb7
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds i8, ptr %2, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27

bb12:                                             ; preds = %bb7
  br label %bb8

bb1:                                              ; No predecessors!
  unreachable
}

; core::ub_checks::is_nonoverlapping::runtime
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core9ub_checks17is_nonoverlapping7runtime17hc56c56df388ea68bE(ptr %src, ptr %dst, i32 %size, i32 %count) unnamed_addr #2 {
start:
  %0 = alloca [1 x i8], align 1
  %diff = alloca [4 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %src_usize = ptrtoint ptr %src to i32
  %dst_usize = ptrtoint ptr %dst to i32
  %1 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 %count)
  %_15.0 = extractvalue { i32, i1 } %1, 0
  %_15.1 = extractvalue { i32, i1 } %1, 1
  %2 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %0, align 1
  %4 = load i8, ptr %0, align 1
  %_12 = trunc i8 %4 to i1
  br i1 %_12, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %_9, i32 4
  store i32 %_15.0, ptr %5, align 4
  store i32 1, ptr %_9, align 4
  %6 = getelementptr inbounds i8, ptr %_9, i32 4
  %size1 = load i32, ptr %6, align 4
  %_22 = icmp ult i32 %src_usize, %dst_usize
  br i1 %_22, label %bb4, label %bb5

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hf46088b150724599E(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i32 61) #14
  unreachable

bb5:                                              ; preds = %bb3
  %7 = sub i32 %src_usize, %dst_usize
  store i32 %7, ptr %diff, align 4
  br label %bb6

bb4:                                              ; preds = %bb3
  %8 = sub i32 %dst_usize, %src_usize
  store i32 %8, ptr %diff, align 4
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %_11 = load i32, ptr %diff, align 4
  %_0 = icmp uge i32 %_11, %size1
  ret i1 %_0
}

; core::ub_checks::is_aligned_and_not_null
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core9ub_checks23is_aligned_and_not_null17h07de5bcc75b9a001E(ptr %ptr, i32 %align) unnamed_addr #2 {
start:
  %0 = alloca [4 x i8], align 4
  %_6 = alloca [24 x i8], align 4
  %_0 = alloca [1 x i8], align 1
  %_4 = ptrtoint ptr %ptr to i32
  %1 = icmp eq i32 %_4, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 0, ptr %_0, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %2 = call i32 @llvm.ctpop.i32(i32 %align)
  store i32 %2, ptr %0, align 4
  %_8 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %_8, 1
  br i1 %3, label %bb4, label %bb5

bb3:                                              ; preds = %bb4, %bb1
  %4 = load i8, ptr %_0, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5

bb4:                                              ; preds = %bb2
  %_12 = sub i32 %align, 1
  %_11 = and i32 %_4, %_12
  %6 = icmp eq i32 %_11, 0
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %_0, align 1
  br label %bb3

bb5:                                              ; preds = %bb2
  store ptr @alloc_b498cf0a06cafe1ad822ab5dde97c8c0, ptr %_6, align 4
  %8 = getelementptr inbounds i8, ptr %_6, i32 4
  store i32 1, ptr %8, align 4
  %9 = load ptr, ptr @0, align 4
  %10 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %11 = getelementptr inbounds i8, ptr %_6, i32 16
  store ptr %9, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 %10, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %_6, i32 8
  store ptr inttoptr (i32 4 to ptr), ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 0, ptr %14, align 4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h835adbb8badaec40E(ptr align 4 %_6, ptr align 4 @alloc_2f85c3373aac8b285ea093821a4ea7c0) #15
  unreachable
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h83824e25bf5e049cE"(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %s.0, i32 %s.1) unnamed_addr #2 {
start:
  %_12 = alloca [12 x i8], align 4
  %v = alloca [12 x i8], align 4
; call alloc::raw_vec::RawVec<T,A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h29dd51d190052582E"(ptr sret([12 x i8]) align 4 %_12, i32 %s.1, i1 zeroext false)
  %_13 = load i32, ptr %_12, align 4
  %0 = icmp eq i32 %_13, 0
  br i1 %0, label %bb4, label %bb3

bb4:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_12, i32 4
  %res.0 = load i32, ptr %1, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 4
  %res.1 = load ptr, ptr %2, align 4
  store i32 %res.0, ptr %v, align 4
  %3 = getelementptr inbounds i8, ptr %v, i32 4
  store ptr %res.1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %v, i32 8
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %v, i32 4
  %self = load ptr, ptr %5, align 4
  br label %bb5

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds i8, ptr %_12, i32 4
  %err.0 = load i32, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  %err.1 = load i32, ptr %7, align 4
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17h063c52a9bad4bfafE(i32 %err.0, i32 %err.1) #15
  unreachable

bb5:                                              ; preds = %bb4
; call core::intrinsics::copy_nonoverlapping::precondition_check
  call void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h6b50ec5956255cbdE(ptr %s.0, ptr %self, i32 1, i32 1, i32 %s.1) #17
  br label %bb7

bb7:                                              ; preds = %bb5
  %8 = mul i32 %s.1, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %self, ptr align 1 %s.0, i32 %8, i1 false)
  %9 = getelementptr inbounds i8, ptr %v, i32 8
  store i32 %s.1, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %v, i32 12, i1 false)
  ret void

bb2:                                              ; No predecessors!
  unreachable
}

; alloc::fmt::format
; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3fmt6format17hbb2c551ffbbaf01fE(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %args) unnamed_addr #2 {
start:
  %_4 = alloca [4 x i8], align 4
  %_2 = alloca [8 x i8], align 4
  %_6.0 = load ptr, ptr %args, align 4
  %0 = getelementptr inbounds i8, ptr %args, i32 4
  %_6.1 = load i32, ptr %0, align 4
  %1 = getelementptr inbounds i8, ptr %args, i32 8
  %_7.0 = load ptr, ptr %1, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 4
  %_7.1 = load i32, ptr %2, align 4
  %3 = icmp eq i32 %_6.1, 0
  br i1 %3, label %bb4, label %bb5

bb4:                                              ; preds = %start
  %4 = icmp eq i32 %_7.1, 0
  br i1 %4, label %bb7, label %bb3

bb5:                                              ; preds = %start
  %5 = icmp eq i32 %_6.1, 1
  br i1 %5, label %bb6, label %bb3

bb7:                                              ; preds = %bb4
  store ptr inttoptr (i32 1 to ptr), ptr %_2, align 4
  %6 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 0, ptr %6, align 4
  br label %bb2

bb3:                                              ; preds = %bb6, %bb5, %bb4
  %7 = load ptr, ptr @0, align 4
  %8 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store ptr %7, ptr %_2, align 4
  %9 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 %8, ptr %9, align 4
  br label %bb2

bb2:                                              ; preds = %bb3, %bb8, %bb7
  store ptr %args, ptr %_4, align 4
  %10 = load ptr, ptr %_2, align 4
  %11 = getelementptr inbounds i8, ptr %_2, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %_4, align 4
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h40fbc40979177250E"(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %10, i32 %12, ptr align 4 %13)
  ret void

bb6:                                              ; preds = %bb5
  %14 = icmp eq i32 %_7.1, 0
  br i1 %14, label %bb8, label %bb3

bb8:                                              ; preds = %bb6
  %s = getelementptr inbounds [0 x { ptr, i32 }], ptr %_6.0, i32 0, i32 0
  %15 = getelementptr inbounds [0 x { ptr, i32 }], ptr %_6.0, i32 0, i32 0
  %_13.0 = load ptr, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %15, i32 4
  %_13.1 = load i32, ptr %16, align 4
  store ptr %_13.0, ptr %_2, align 4
  %17 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 %_13.1, ptr %17, align 4
  br label %bb2
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h58bd349445f2d6dcE"(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %_1) unnamed_addr #2 {
start:
  %_2 = alloca [24 x i8], align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_2, ptr align 4 %_1, i32 24, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17h76a27569cefc6235E(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %_2)
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h37f332deec422359E"(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %self.0, i32 %self.1) unnamed_addr #2 {
start:
  %bytes = alloca [12 x i8], align 4
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h83824e25bf5e049cE"(ptr sret([12 x i8]) align 4 %bytes, ptr align 1 %self.0, i32 %self.1)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %bytes, i32 12, i1 false)
  ret void
}

; alloc::alloc::alloc
; Function Attrs: inlinehint uwtable
define internal ptr @_ZN5alloc5alloc5alloc17h37399e9427c001caE(i32 %0, i32 %1) unnamed_addr #2 {
start:
  %2 = alloca [1 x i8], align 1
  %_13 = alloca [4 x i8], align 4
  %layout = alloca [8 x i8], align 4
  store i32 %0, ptr %layout, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %3, align 4
  br label %bb3

bb3:                                              ; preds = %start
; call core::ptr::read_volatile::precondition_check
  call void @_ZN4core3ptr13read_volatile18precondition_check17hc939377d1cac6542E(ptr @__rust_no_alloc_shim_is_unstable, i32 1) #17
  br label %bb5

bb5:                                              ; preds = %bb3
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %4, ptr %2, align 1
  %_2 = load i8, ptr %2, align 1
  %5 = getelementptr inbounds i8, ptr %layout, i32 4
  %_5 = load i32, ptr %5, align 4
  %self = load i32, ptr %layout, align 4
  store i32 %self, ptr %_13, align 4
  %_14 = load i32, ptr %_13, align 4
  %_15 = icmp uge i32 %_14, 1
  %_16 = icmp ule i32 %_14, -2147483648
  %_17 = and i1 %_15, %_16
  %_0 = call ptr @__rust_alloc(i32 %_5, i32 %_14) #17
  ret ptr %_0
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint uwtable
define internal { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h0b74f60d11a504f0E(ptr align 1 %self, i32 %0, i32 %1, i1 zeroext %zeroed) unnamed_addr #2 {
start:
  %_37 = alloca [4 x i8], align 4
  %_32 = alloca [4 x i8], align 4
  %_17 = alloca [8 x i8], align 4
  %self3 = alloca [4 x i8], align 4
  %self2 = alloca [4 x i8], align 4
  %_12 = alloca [4 x i8], align 4
  %layout1 = alloca [8 x i8], align 4
  %raw_ptr = alloca [4 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %_0 = alloca [8 x i8], align 4
  %layout = alloca [8 x i8], align 4
  store i32 %0, ptr %layout, align 4
  %2 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  %size = load i32, ptr %3, align 4
  %4 = icmp eq i32 %size, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
; call core::alloc::layout::Layout::dangling
  %data = call ptr @_ZN4core5alloc6layout6Layout8dangling17ha32cabe7ab4987e2E(ptr align 4 %layout)
  br label %bb9

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb4, label %bb5

bb9:                                              ; preds = %bb2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h285ccec7d82f57beE"(ptr %data) #17
  br label %bb11

bb11:                                             ; preds = %bb9
  store ptr %data, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i32 4
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i32 4
  %8 = load i32, ptr %7, align 4
  store ptr %6, ptr %_0, align 4
  %9 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %8, ptr %9, align 4
  br label %bb8

bb8:                                              ; preds = %bb19, %bb13, %bb11
  %10 = load ptr, ptr %_0, align 4
  %11 = getelementptr inbounds i8, ptr %_0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = insertvalue { ptr, i32 } poison, ptr %10, 0
  %14 = insertvalue { ptr, i32 } %13, i32 %12, 1
  ret { ptr, i32 } %14

bb5:                                              ; preds = %bb1
  %_11.0 = load i32, ptr %layout, align 4
  %15 = getelementptr inbounds i8, ptr %layout, i32 4
  %_11.1 = load i32, ptr %15, align 4
; call alloc::alloc::alloc
  %16 = call ptr @_ZN5alloc5alloc5alloc17h37399e9427c001caE(i32 %_11.0, i32 %_11.1)
  store ptr %16, ptr %raw_ptr, align 4
  br label %bb7

bb4:                                              ; preds = %bb1
  %17 = load i32, ptr %layout, align 4
  %18 = getelementptr inbounds i8, ptr %layout, i32 4
  %19 = load i32, ptr %18, align 4
  store i32 %17, ptr %layout1, align 4
  %20 = getelementptr inbounds i8, ptr %layout1, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %layout1, i32 4
  %_27 = load i32, ptr %21, align 4
  %self4 = load i32, ptr %layout1, align 4
  store i32 %self4, ptr %_32, align 4
  %_33 = load i32, ptr %_32, align 4
  %_34 = icmp uge i32 %_33, 1
  %_35 = icmp ule i32 %_33, -2147483648
  %_36 = and i1 %_34, %_35
  %22 = call ptr @__rust_alloc_zeroed(i32 %_27, i32 %_33) #17
  store ptr %22, ptr %raw_ptr, align 4
  br label %bb7

bb7:                                              ; preds = %bb4, %bb5
  %ptr = load ptr, ptr %raw_ptr, align 4
  %_38 = ptrtoint ptr %ptr to i32
  %23 = icmp eq i32 %_38, 0
  br i1 %23, label %bb13, label %bb14

bb13:                                             ; preds = %bb7
  store ptr null, ptr %self3, align 4
  store ptr null, ptr %self2, align 4
  %24 = load ptr, ptr @0, align 4
  %25 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store ptr %24, ptr %_0, align 4
  %26 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %25, ptr %26, align 4
  br label %bb8

bb14:                                             ; preds = %bb7
  br label %bb15

bb15:                                             ; preds = %bb14
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h285ccec7d82f57beE"(ptr %ptr) #17
  br label %bb16

bb16:                                             ; preds = %bb15
  store ptr %ptr, ptr %_37, align 4
  %27 = load ptr, ptr %_37, align 4
  store ptr %27, ptr %self3, align 4
  %v = load ptr, ptr %self3, align 4
  store ptr %v, ptr %self2, align 4
  %v5 = load ptr, ptr %self2, align 4
  store ptr %v5, ptr %_12, align 4
  %ptr6 = load ptr, ptr %_12, align 4
  br label %bb17

bb17:                                             ; preds = %bb16
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h285ccec7d82f57beE"(ptr %ptr6) #17
  br label %bb19

bb19:                                             ; preds = %bb17
  store ptr %ptr6, ptr %_17, align 4
  %28 = getelementptr inbounds i8, ptr %_17, i32 4
  store i32 %size, ptr %28, align 4
  %29 = load ptr, ptr %_17, align 4
  %30 = getelementptr inbounds i8, ptr %_17, i32 4
  %31 = load i32, ptr %30, align 4
  store ptr %29, ptr %_0, align 4
  %32 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %31, ptr %32, align 4
  br label %bb8
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hc8aac3f378617b19E"(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %self) unnamed_addr #3 {
start:
  %self1 = alloca [4 x i8], align 4
  %_9 = alloca [12 x i8], align 4
  %layout = alloca [8 x i8], align 4
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = load i32, ptr %self, align 4
  %0 = icmp eq i32 %_3, 0
  br i1 %0, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  br label %bb3

bb4:                                              ; preds = %bb1
  %rhs = load i32, ptr %self, align 4
  %size = mul nuw i32 1, %rhs
  %1 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %size, ptr %1, align 4
  store i32 1, ptr %layout, align 4
  %2 = getelementptr inbounds i8, ptr %self, i32 4
  %self2 = load ptr, ptr %2, align 4
  store ptr %self2, ptr %self1, align 4
  %3 = load ptr, ptr %self1, align 4
  store ptr %3, ptr %_9, align 4
  %4 = load i32, ptr %layout, align 4
  %5 = getelementptr inbounds i8, ptr %layout, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %_9, i32 4
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 %6, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %_9, i32 12, i1 false)
  br label %bb5

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 0, ptr %9, align 4
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  ret void
}

; alloc::raw_vec::RawVec<T,A>::try_allocate_in
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h29dd51d190052582E"(ptr sret([12 x i8]) align 4 %_0, i32 %capacity, i1 zeroext %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [8 x i8], align 4
  %_31 = alloca [1 x i8], align 1
  %_29 = alloca [4 x i8], align 4
  %pointer = alloca [4 x i8], align 4
  %_27 = alloca [4 x i8], align 4
  %_26 = alloca [8 x i8], align 4
  %self = alloca [8 x i8], align 4
  %_23 = alloca [8 x i8], align 4
  %result = alloca [8 x i8], align 4
  %_11 = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %layout = alloca [8 x i8], align 4
  %alloc = alloca [0 x i8], align 1
  %init = alloca [1 x i8], align 1
  %2 = zext i1 %0 to i8
  store i8 %2, ptr %init, align 1
  store i8 1, ptr %_31, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = icmp eq i32 %capacity, 0
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_31, align 1
; invoke alloc::raw_vec::RawVec<T,A>::new_in
  %4 = invoke { i32, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h929304d3effe85ebE"()
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %bb1
; invoke core::alloc::layout::Layout::array::inner
  %5 = invoke { i32, i32 } @_ZN4core5alloc6layout6Layout5array5inner17hceddc3c46fca1cfaE(i32 1, i32 1, i32 %capacity)
          to label %bb21 unwind label %cleanup

bb20:                                             ; preds = %cleanup
  %6 = load i8, ptr %_31, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb19, label %bb18

cleanup:                                          ; preds = %bb2, %bb8, %bb9, %bb4
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %1, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 %10, ptr %11, align 4
  br label %bb20

bb21:                                             ; preds = %bb4
  %12 = extractvalue { i32, i32 } %5, 0
  %13 = extractvalue { i32, i32 } %5, 1
  store i32 %12, ptr %_8, align 4
  %14 = getelementptr inbounds i8, ptr %_8, i32 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_8, align 4
  %16 = icmp eq i32 %15, 0
  %_9 = select i1 %16, i32 1, i32 0
  %17 = icmp eq i32 %_9, 0
  br i1 %17, label %bb7, label %bb6

bb7:                                              ; preds = %bb21
  %layout.0 = load i32, ptr %_8, align 4
  %18 = getelementptr inbounds i8, ptr %_8, i32 4
  %layout.1 = load i32, ptr %18, align 4
  store i32 %layout.0, ptr %layout, align 4
  %19 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %layout.1, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %layout, i32 4
  %alloc_size = load i32, ptr %20, align 4
  %_35 = icmp ugt i32 %alloc_size, 2147483647
  br i1 %_35, label %bb22, label %bb23

bb6:                                              ; preds = %bb21
  %21 = load i32, ptr @0, align 4
  %22 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %23 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %21, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 %22, ptr %24, align 4
  store i32 1, ptr %_0, align 4
  br label %bb16

bb23:                                             ; preds = %bb7
  %25 = load i8, ptr %init, align 1
  %26 = trunc i8 %25 to i1
  %_16 = zext i1 %26 to i32
  %27 = icmp eq i32 %_16, 0
  br i1 %27, label %bb9, label %bb8

bb22:                                             ; preds = %bb7
  %28 = load i32, ptr @0, align 4
  %29 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store i32 %28, ptr %_11, align 4
  %30 = getelementptr inbounds i8, ptr %_11, i32 4
  store i32 %29, ptr %30, align 4
  %err.0 = load i32, ptr %_11, align 4
  %31 = getelementptr inbounds i8, ptr %_11, i32 4
  %err.1 = load i32, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %err.0, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 %err.1, ptr %33, align 4
  store i32 1, ptr %_0, align 4
  br label %bb16

bb9:                                              ; preds = %bb23
  %_18.0 = load i32, ptr %layout, align 4
  %34 = getelementptr inbounds i8, ptr %layout, i32 4
  %_18.1 = load i32, ptr %34, align 4
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %35 = invoke { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hb6c6dbf05dc952ddE"(ptr align 1 %alloc, i32 %_18.0, i32 %_18.1)
          to label %bb10 unwind label %cleanup

bb8:                                              ; preds = %bb23
  %_20.0 = load i32, ptr %layout, align 4
  %36 = getelementptr inbounds i8, ptr %layout, i32 4
  %_20.1 = load i32, ptr %36, align 4
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %37 = invoke { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h63b7c10df125dd80E"(ptr align 1 %alloc, i32 %_20.0, i32 %_20.1)
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %38 = extractvalue { ptr, i32 } %35, 0
  %39 = extractvalue { ptr, i32 } %35, 1
  store ptr %38, ptr %result, align 4
  %40 = getelementptr inbounds i8, ptr %result, i32 4
  store i32 %39, ptr %40, align 4
  br label %bb12

bb12:                                             ; preds = %bb11, %bb10
  %41 = load ptr, ptr %result, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = icmp eq i32 %42, 0
  %_21 = select i1 %43, i32 1, i32 0
  %44 = icmp eq i32 %_21, 0
  br i1 %44, label %bb14, label %bb13

bb11:                                             ; preds = %bb8
  %45 = extractvalue { ptr, i32 } %37, 0
  %46 = extractvalue { ptr, i32 } %37, 1
  store ptr %45, ptr %result, align 4
  %47 = getelementptr inbounds i8, ptr %result, i32 4
  store i32 %46, ptr %47, align 4
  br label %bb12

bb14:                                             ; preds = %bb12
  %ptr.0 = load ptr, ptr %result, align 4
  %48 = getelementptr inbounds i8, ptr %result, i32 4
  %ptr.1 = load i32, ptr %48, align 4
  store ptr %ptr.0, ptr %pointer, align 4
  %49 = load ptr, ptr %pointer, align 4
  store ptr %49, ptr %_27, align 4
  store i32 %capacity, ptr %_29, align 4
  %50 = load ptr, ptr %_27, align 4
  %51 = getelementptr inbounds i8, ptr %_26, i32 4
  store ptr %50, ptr %51, align 4
  %52 = load i32, ptr %_29, align 4
  store i32 %52, ptr %_26, align 4
  %53 = load i32, ptr %_26, align 4
  %54 = getelementptr inbounds i8, ptr %_26, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %53, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %56, i32 4
  store ptr %55, ptr %57, align 4
  store i32 0, ptr %_0, align 4
  br label %bb15

bb13:                                             ; preds = %bb12
  %_25.0 = load i32, ptr %layout, align 4
  %58 = getelementptr inbounds i8, ptr %layout, i32 4
  %_25.1 = load i32, ptr %58, align 4
  store i32 %_25.0, ptr %self, align 4
  %59 = getelementptr inbounds i8, ptr %self, i32 4
  store i32 %_25.1, ptr %59, align 4
  %60 = load i32, ptr %self, align 4
  %61 = getelementptr inbounds i8, ptr %self, i32 4
  %62 = load i32, ptr %61, align 4
  store i32 %60, ptr %_23, align 4
  %63 = getelementptr inbounds i8, ptr %_23, i32 4
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %_23, align 4
  %65 = getelementptr inbounds i8, ptr %_23, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %64, ptr %67, align 4
  %68 = getelementptr inbounds i8, ptr %67, i32 4
  store i32 %66, ptr %68, align 4
  store i32 1, ptr %_0, align 4
  br label %bb16

bb15:                                             ; preds = %bb3, %bb14
  br label %bb17

bb16:                                             ; preds = %bb6, %bb22, %bb13
  br label %bb17

bb17:                                             ; preds = %bb15, %bb16
  ret void

bb5:                                              ; No predecessors!
  unreachable

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i32, ptr } %4, 0
  %_5.1 = extractvalue { i32, ptr } %4, 1
  %69 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %_5.0, ptr %69, align 4
  %70 = getelementptr inbounds i8, ptr %69, i32 4
  store ptr %_5.1, ptr %70, align 4
  store i32 0, ptr %_0, align 4
  br label %bb15

bb18:                                             ; preds = %bb19, %bb20
  %71 = load ptr, ptr %1, align 4
  %72 = getelementptr inbounds i8, ptr %1, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = insertvalue { ptr, i32 } poison, ptr %71, 0
  %75 = insertvalue { ptr, i32 } %74, i32 %73, 1
  resume { ptr, i32 } %75

bb19:                                             ; preds = %bb20
  br label %bb18
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: uwtable
define { i32, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h929304d3effe85ebE"() unnamed_addr #3 {
start:
  %_3 = alloca [4 x i8], align 4
  %_2 = alloca [4 x i8], align 4
  %_0 = alloca [8 x i8], align 4
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h285ccec7d82f57beE"(ptr getelementptr (i8, ptr null, i32 1)) #17
  br label %bb3

bb3:                                              ; preds = %bb1
  store ptr getelementptr (i8, ptr null, i32 1), ptr %_3, align 4
  %0 = load ptr, ptr %_3, align 4
  store ptr %0, ptr %_2, align 4
  %1 = load ptr, ptr %_2, align 4
  %2 = getelementptr inbounds i8, ptr %_0, i32 4
  store ptr %1, ptr %2, align 4
  store i32 0, ptr %_0, align 4
  %3 = load i32, ptr %_0, align 4
  %4 = getelementptr inbounds i8, ptr %_0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = insertvalue { i32, ptr } poison, i32 %3, 0
  %7 = insertvalue { i32, ptr } %6, ptr %5, 1
  ret { i32, ptr } %7
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h089e20e1fe32e2d7E"(ptr align 1 %self, ptr %ptr, i32 %0, i32 %1) unnamed_addr #2 {
start:
  %_14 = alloca [4 x i8], align 4
  %layout1 = alloca [8 x i8], align 4
  %layout = alloca [8 x i8], align 4
  store i32 %0, ptr %layout, align 4
  %2 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  %_4 = load i32, ptr %3, align 4
  %4 = icmp eq i32 %_4, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  %5 = load i32, ptr %layout, align 4
  %6 = getelementptr inbounds i8, ptr %layout, i32 4
  %7 = load i32, ptr %6, align 4
  store i32 %5, ptr %layout1, align 4
  %8 = getelementptr inbounds i8, ptr %layout1, i32 4
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %layout1, i32 4
  %_9 = load i32, ptr %9, align 4
  %self2 = load i32, ptr %layout1, align 4
  store i32 %self2, ptr %_14, align 4
  %_15 = load i32, ptr %_14, align 4
  %_16 = icmp uge i32 %_15, 1
  %_17 = icmp ule i32 %_15, -2147483648
  %_18 = and i1 %_16, %_17
  call void @__rust_dealloc(ptr %ptr, i32 %_9, i32 %_15) #17
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint uwtable
define internal { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h63b7c10df125dd80E"(ptr align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #2 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h0b74f60d11a504f0E(ptr align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext true)
  %_0.0 = extractvalue { ptr, i32 } %0, 0
  %_0.1 = extractvalue { ptr, i32 } %0, 1
  %1 = insertvalue { ptr, i32 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i32 } %1, i32 %_0.1, 1
  ret { ptr, i32 } %2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint uwtable
define internal { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hb6c6dbf05dc952ddE"(ptr align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #2 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h0b74f60d11a504f0E(ptr align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext false)
  %_0.0 = extractvalue { ptr, i32 } %0, 0
  %_0.1 = extractvalue { ptr, i32 } %0, 1
  %1 = insertvalue { ptr, i32 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i32 } %1, i32 %_0.1, 1
  ret { ptr, i32 } %2
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e05f53f3419a159E"(ptr align 4 %self) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i32 4
  %self1 = load ptr, ptr %0, align 4
  %1 = getelementptr inbounds i8, ptr %self, i32 8
  %len = load i32, ptr %1, align 4
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h002757cef4bc1d36E"(ptr align 4 %self) unnamed_addr #3 {
start:
  %_2 = alloca [12 x i8], align 4
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hc8aac3f378617b19E"(ptr sret([12 x i8]) align 4 %_2, ptr align 4 %self)
  %0 = getelementptr inbounds i8, ptr %_2, i32 4
  %1 = load i32, ptr %0, align 4
  %2 = icmp eq i32 %1, 0
  %_4 = select i1 %2, i32 0, i32 1
  %3 = icmp eq i32 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 4
  %4 = getelementptr inbounds i8, ptr %_2, i32 4
  %layout.0 = load i32, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  %layout.1 = load i32, ptr %5, align 4
  %_7 = getelementptr inbounds i8, ptr %self, i32 8
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h089e20e1fe32e2d7E"(ptr align 1 %_7, ptr %ptr, i32 %layout.0, i32 %layout.1)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void

bb5:                                              ; No predecessors!
  unreachable
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h092f94c8c3abeec6E() unnamed_addr #3 {
start:
  %_3.i = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %_3 = alloca [24 x i8], align 4
  %res = alloca [12 x i8], align 4
  %_1 = alloca [12 x i8], align 4
  store ptr @alloc_83ea17bf0c4f4a5a5a13d3ae7955acd0, ptr %_3.i, align 4
  %0 = getelementptr inbounds i8, ptr %_3.i, i32 4
  store ptr @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17hb96574bca42bdd35E", ptr %0, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_8, ptr align 4 %_3.i, i32 8, i1 false)
  %1 = getelementptr inbounds [1 x %"core::fmt::rt::Argument<'_>"], ptr %_7, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %1, ptr align 4 %_8, i32 8, i1 false)
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h2e97fb4a925a414bE(ptr sret([24 x i8]) align 4 %_3, ptr align 4 @alloc_68ac15728a1e6ba4743b718936db7fdf, i32 1, ptr align 4 %_7, i32 1)
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17hbb2c551ffbbaf01fE(ptr sret([12 x i8]) align 4 %res, ptr align 4 %_3)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_1, ptr align 4 %res, i32 12, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0d876c0b3a221163E"(ptr align 4 %_1)
  ret void
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, ptr, ptr) unnamed_addr #3

; core::panicking::panic_cannot_unwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17hcd918836274fd633E() unnamed_addr #4

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking14panic_nounwind17hf46088b150724599E(ptr align 1, i32) unnamed_addr #4

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17hb96574bca42bdd35E"(ptr align 4, ptr align 4) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17h835adbb8badaec40E(ptr align 4, ptr align 4) unnamed_addr #6

; core::panicking::panic_in_cleanup
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h412035ff8275ea86E() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #7

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h476dad0e5907eedbE(ptr align 4) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; alloc::raw_vec::handle_error
; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h063c52a9bad4bfafE(i32, i32) unnamed_addr #9

; alloc::fmt::format::format_inner
; Function Attrs: uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h76a27569cefc6235E(ptr sret([12 x i8]) align 4, ptr align 4) unnamed_addr #3

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i32, i32 allocalign) unnamed_addr #10

; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i32, i32 allocalign) unnamed_addr #11

; Function Attrs: nounwind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i32, i32) unnamed_addr #12

attributes #0 = { inlinehint nounwind uwtable "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #1 = { nounwind uwtable "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #2 = { inlinehint uwtable "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #3 = { uwtable "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #4 = { cold noinline noreturn nounwind uwtable "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn uwtable "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn uwtable "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #10 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #11 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #12 = { nounwind allockind("free") uwtable "alloc-family"="__rust_alloc" "target-cpu"="generic" "target-features"="+v7,+vfp3,-d32,+thumb2,-neon" }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.79.0 (129f3b996 2024-06-10)"}
