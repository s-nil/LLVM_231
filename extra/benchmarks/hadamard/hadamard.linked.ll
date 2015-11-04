; ModuleID = 'hadamard.linked.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%"class.std::ios_base::Init" = type { i8 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::allocator.0" = type { i8 }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair" = type { %"class.std::basic_string", i32 }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.std::pair" }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::pair.3" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.4" = type { i8 }
%"class.__gnu_cxx::new_allocator.5" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

@.str = private unnamed_addr constant [8 x i8] c"out.dat\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"diff -w out.dat out.gold.dat\00", align 1
@stdout = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [47 x i8] c"*********************************************\0A\00", align 1
@.str5 = private unnamed_addr constant [47 x i8] c"FAIL: Output DOES NOT match the golden output\0A\00", align 1
@.str6 = private unnamed_addr constant [45 x i8] c"*******************************************\0A\00", align 1
@.str7 = private unnamed_addr constant [45 x i8] c"PASS: The output matches the golden output!\0A\00", align 1
@0 = private unnamed_addr constant [7 x i8] c"alloca\00"
@1 = private unnamed_addr constant [3 x i8] c"br\00"
@2 = private unnamed_addr constant [5 x i8] c"load\00"
@3 = private unnamed_addr constant [4 x i8] c"shl\00"
@4 = private unnamed_addr constant [6 x i8] c"store\00"
@5 = private unnamed_addr constant [6 x i8] c"trunc\00"
@6 = private unnamed_addr constant [5 x i8] c"zext\00"
@7 = private unnamed_addr constant [3 x i8] c"br\00"
@8 = private unnamed_addr constant [5 x i8] c"icmp\00"
@9 = private unnamed_addr constant [5 x i8] c"load\00"
@10 = private unnamed_addr constant [5 x i8] c"zext\00"
@11 = private unnamed_addr constant [3 x i8] c"br\00"
@12 = private unnamed_addr constant [14 x i8] c"getelementptr\00"
@13 = private unnamed_addr constant [5 x i8] c"load\00"
@14 = private unnamed_addr constant [6 x i8] c"store\00"
@15 = private unnamed_addr constant [5 x i8] c"zext\00"
@16 = private unnamed_addr constant [4 x i8] c"add\00"
@17 = private unnamed_addr constant [3 x i8] c"br\00"
@18 = private unnamed_addr constant [5 x i8] c"load\00"
@19 = private unnamed_addr constant [6 x i8] c"store\00"
@20 = private unnamed_addr constant [5 x i8] c"ashr\00"
@21 = private unnamed_addr constant [3 x i8] c"br\00"
@22 = private unnamed_addr constant [5 x i8] c"load\00"
@23 = private unnamed_addr constant [6 x i8] c"store\00"
@24 = private unnamed_addr constant [6 x i8] c"trunc\00"
@25 = private unnamed_addr constant [5 x i8] c"zext\00"
@26 = private unnamed_addr constant [3 x i8] c"br\00"
@27 = private unnamed_addr constant [5 x i8] c"icmp\00"
@28 = private unnamed_addr constant [5 x i8] c"load\00"
@29 = private unnamed_addr constant [5 x i8] c"zext\00"
@30 = private unnamed_addr constant [3 x i8] c"br\00"
@31 = private unnamed_addr constant [6 x i8] c"store\00"
@32 = private unnamed_addr constant [3 x i8] c"br\00"
@33 = private unnamed_addr constant [5 x i8] c"icmp\00"
@34 = private unnamed_addr constant [5 x i8] c"load\00"
@35 = private unnamed_addr constant [5 x i8] c"zext\00"
@36 = private unnamed_addr constant [3 x i8] c"br\00"
@37 = private unnamed_addr constant [6 x i8] c"store\00"
@38 = private unnamed_addr constant [3 x i8] c"br\00"
@39 = private unnamed_addr constant [5 x i8] c"icmp\00"
@40 = private unnamed_addr constant [5 x i8] c"load\00"
@41 = private unnamed_addr constant [5 x i8] c"zext\00"
@42 = private unnamed_addr constant [4 x i8] c"add\00"
@43 = private unnamed_addr constant [3 x i8] c"br\00"
@44 = private unnamed_addr constant [14 x i8] c"getelementptr\00"
@45 = private unnamed_addr constant [5 x i8] c"load\00"
@46 = private unnamed_addr constant [6 x i8] c"store\00"
@47 = private unnamed_addr constant [4 x i8] c"sub\00"
@48 = private unnamed_addr constant [6 x i8] c"trunc\00"
@49 = private unnamed_addr constant [5 x i8] c"zext\00"
@50 = private unnamed_addr constant [4 x i8] c"add\00"
@51 = private unnamed_addr constant [3 x i8] c"br\00"
@52 = private unnamed_addr constant [5 x i8] c"load\00"
@53 = private unnamed_addr constant [6 x i8] c"store\00"
@54 = private unnamed_addr constant [3 x i8] c"br\00"
@55 = private unnamed_addr constant [4 x i8] c"add\00"
@56 = private unnamed_addr constant [3 x i8] c"br\00"
@57 = private unnamed_addr constant [5 x i8] c"load\00"
@58 = private unnamed_addr constant [4 x i8] c"shl\00"
@59 = private unnamed_addr constant [6 x i8] c"store\00"
@60 = private unnamed_addr constant [6 x i8] c"trunc\00"
@61 = private unnamed_addr constant [5 x i8] c"zext\00"
@62 = private unnamed_addr constant [3 x i8] c"br\00"
@63 = private unnamed_addr constant [5 x i8] c"ashr\00"
@64 = private unnamed_addr constant [3 x i8] c"br\00"
@65 = private unnamed_addr constant [5 x i8] c"load\00"
@66 = private unnamed_addr constant [6 x i8] c"store\00"
@67 = private unnamed_addr constant [6 x i8] c"trunc\00"
@68 = private unnamed_addr constant [5 x i8] c"zext\00"
@69 = private unnamed_addr constant [4 x i8] c"ret\00"
@70 = private unnamed_addr constant [7 x i8] c"alloca\00"
@71 = private unnamed_addr constant [3 x i8] c"br\00"
@72 = private unnamed_addr constant [5 x i8] c"call\00"
@73 = private unnamed_addr constant [6 x i8] c"store\00"
@74 = private unnamed_addr constant [3 x i8] c"br\00"
@75 = private unnamed_addr constant [5 x i8] c"icmp\00"
@76 = private unnamed_addr constant [5 x i8] c"load\00"
@77 = private unnamed_addr constant [3 x i8] c"br\00"
@78 = private unnamed_addr constant [14 x i8] c"getelementptr\00"
@79 = private unnamed_addr constant [5 x i8] c"load\00"
@80 = private unnamed_addr constant [5 x i8] c"sext\00"
@81 = private unnamed_addr constant [6 x i8] c"store\00"
@82 = private unnamed_addr constant [6 x i8] c"trunc\00"
@83 = private unnamed_addr constant [4 x i8] c"add\00"
@84 = private unnamed_addr constant [3 x i8] c"br\00"
@85 = private unnamed_addr constant [5 x i8] c"load\00"
@86 = private unnamed_addr constant [6 x i8] c"store\00"
@87 = private unnamed_addr constant [3 x i8] c"br\00"
@88 = private unnamed_addr constant [5 x i8] c"call\00"
@89 = private unnamed_addr constant [14 x i8] c"getelementptr\00"
@90 = private unnamed_addr constant [6 x i8] c"store\00"
@91 = private unnamed_addr constant [3 x i8] c"br\00"
@92 = private unnamed_addr constant [5 x i8] c"icmp\00"
@93 = private unnamed_addr constant [5 x i8] c"load\00"
@94 = private unnamed_addr constant [3 x i8] c"br\00"
@95 = private unnamed_addr constant [5 x i8] c"call\00"
@96 = private unnamed_addr constant [14 x i8] c"getelementptr\00"
@97 = private unnamed_addr constant [5 x i8] c"load\00"
@98 = private unnamed_addr constant [5 x i8] c"sext\00"
@99 = private unnamed_addr constant [5 x i8] c"zext\00"
@100 = private unnamed_addr constant [4 x i8] c"add\00"
@101 = private unnamed_addr constant [3 x i8] c"br\00"
@102 = private unnamed_addr constant [5 x i8] c"load\00"
@103 = private unnamed_addr constant [6 x i8] c"store\00"
@104 = private unnamed_addr constant [3 x i8] c"br\00"
@105 = private unnamed_addr constant [5 x i8] c"call\00"
@106 = private unnamed_addr constant [5 x i8] c"icmp\00"
@107 = private unnamed_addr constant [5 x i8] c"load\00"
@108 = private unnamed_addr constant [3 x i8] c"br\00"
@109 = private unnamed_addr constant [5 x i8] c"call\00"
@110 = private unnamed_addr constant [5 x i8] c"load\00"
@111 = private unnamed_addr constant [6 x i8] c"store\00"
@112 = private unnamed_addr constant [3 x i8] c"br\00"
@113 = private unnamed_addr constant [5 x i8] c"call\00"
@114 = private unnamed_addr constant [5 x i8] c"load\00"
@115 = private unnamed_addr constant [6 x i8] c"store\00"
@116 = private unnamed_addr constant [5 x i8] c"load\00"
@117 = private unnamed_addr constant [4 x i8] c"ret\00"
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external unnamed_addr global i8
@CountMap = global %"class.std::map" zeroinitializer, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream"
@.str8 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"TOTAL \09\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: nounwind uwtable
define i32 @fastWalshTransform(i16* %h_Output, i16* %h_Input, i16 zeroext %log2N) #0 {
entry:
  %h_Output.addr = alloca i16*, align 8
  %h_Input.addr = alloca i16*, align 8
  %log2N.addr = alloca i16, align 2
  %N = alloca i16, align 2
  %pos = alloca i16, align 2
  %stride = alloca i16, align 2
  %base = alloca i16, align 2
  %j = alloca i16, align 2
  %i0 = alloca i16, align 2
  %i1 = alloca i16, align 2
  %T1 = alloca i16, align 2
  %T2 = alloca i16, align 2
  store i16* %h_Output, i16** %h_Output.addr, align 8
  store i16* %h_Input, i16** %h_Input.addr, align 8
  store i16 %log2N, i16* %log2N.addr, align 2
  %0 = load i16* %log2N.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 1, %conv
  %conv1 = trunc i32 %shl to i16
  store i16 %conv1, i16* %N, align 2
  store i16 0, i16* %pos, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i32 12)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @4, i32 0, i32 0), i32 5)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @5, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i32 1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16* %pos, align 2
  %conv2 = zext i16 %1 to i32
  %2 = load i16* %N, align 2
  %conv3 = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv2, %conv3
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i32 2)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16* %pos, align 2
  %idxprom = zext i16 %3 to i64
  %4 = load i16** %h_Input.addr, align 8
  %arrayidx = getelementptr inbounds i16* %4, i64 %idxprom
  %5 = load i16* %arrayidx, align 2
  %6 = load i16* %pos, align 2
  %idxprom5 = zext i16 %6 to i64
  %7 = load i16** %h_Output.addr, align 8
  %arrayidx6 = getelementptr inbounds i16* %7, i64 %idxprom5
  store i16 %5, i16* %arrayidx6, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @11, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i32 5)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @15, i32 0, i32 0), i32 2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i16* %pos, align 2
  %inc = add i16 %8, 1
  store i16 %inc, i16* %pos, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @17, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @18, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @19, i32 0, i32 0), i32 1)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i16* %N, align 2
  %conv7 = zext i16 %9 to i32
  %shr = ashr i32 %conv7, 1
  %conv8 = trunc i32 %shr to i16
  store i16 %conv8, i16* %stride, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @21, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @22, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @23, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @24, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @25, i32 0, i32 0), i32 1)
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc61, %for.end
  %10 = load i16* %stride, align 2
  %conv10 = zext i16 %10 to i32
  %cmp11 = icmp sge i32 %conv10, 1
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @26, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @27, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @28, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @29, i32 0, i32 0), i32 1)
  br i1 %cmp11, label %for.body13, label %for.end65

for.body13:                                       ; preds = %for.cond9
  store i16 0, i16* %base, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @30, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @31, i32 0, i32 0), i32 1)
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc54, %for.body13
  %11 = load i16* %base, align 2
  %conv15 = zext i16 %11 to i32
  %12 = load i16* %N, align 2
  %conv16 = zext i16 %12 to i32
  %cmp17 = icmp slt i32 %conv15, %conv16
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @32, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @33, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @34, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @35, i32 0, i32 0), i32 2)
  br i1 %cmp17, label %for.body19, label %for.end60

for.body19:                                       ; preds = %for.cond14
  store i16 0, i16* %j, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @36, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @37, i32 0, i32 0), i32 1)
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc51, %for.body19
  %13 = load i16* %j, align 2
  %conv21 = zext i16 %13 to i32
  %14 = load i16* %stride, align 2
  %conv22 = zext i16 %14 to i32
  %cmp23 = icmp slt i32 %conv21, %conv22
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @38, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @39, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @40, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @41, i32 0, i32 0), i32 2)
  br i1 %cmp23, label %for.body25, label %for.end53

for.body25:                                       ; preds = %for.cond20
  %15 = load i16* %base, align 2
  %conv26 = zext i16 %15 to i32
  %16 = load i16* %j, align 2
  %conv27 = zext i16 %16 to i32
  %add = add nsw i32 %conv26, %conv27
  %add28 = add nsw i32 %add, 0
  %conv29 = trunc i32 %add28 to i16
  store i16 %conv29, i16* %i0, align 2
  %17 = load i16* %base, align 2
  %conv30 = zext i16 %17 to i32
  %18 = load i16* %j, align 2
  %conv31 = zext i16 %18 to i32
  %add32 = add nsw i32 %conv30, %conv31
  %19 = load i16* %stride, align 2
  %conv33 = zext i16 %19 to i32
  %add34 = add nsw i32 %add32, %conv33
  %conv35 = trunc i32 %add34 to i16
  store i16 %conv35, i16* %i1, align 2
  %20 = load i16* %i0, align 2
  %idxprom36 = zext i16 %20 to i64
  %21 = load i16** %h_Output.addr, align 8
  %arrayidx37 = getelementptr inbounds i16* %21, i64 %idxprom36
  %22 = load i16* %arrayidx37, align 2
  store i16 %22, i16* %T1, align 2
  %23 = load i16* %i1, align 2
  %idxprom38 = zext i16 %23 to i64
  %24 = load i16** %h_Output.addr, align 8
  %arrayidx39 = getelementptr inbounds i16* %24, i64 %idxprom38
  %25 = load i16* %arrayidx39, align 2
  store i16 %25, i16* %T2, align 2
  %26 = load i16* %T1, align 2
  %conv40 = zext i16 %26 to i32
  %27 = load i16* %T2, align 2
  %conv41 = zext i16 %27 to i32
  %sub = sub nsw i32 %conv40, %conv41
  %conv42 = trunc i32 %sub to i16
  %28 = load i16* %i1, align 2
  %idxprom43 = zext i16 %28 to i64
  %29 = load i16** %h_Output.addr, align 8
  %arrayidx44 = getelementptr inbounds i16* %29, i64 %idxprom43
  store i16 %conv42, i16* %arrayidx44, align 2
  %30 = load i16* %T1, align 2
  %conv45 = zext i16 %30 to i32
  %31 = load i16* %T2, align 2
  %conv46 = zext i16 %31 to i32
  %add47 = add nsw i32 %conv45, %conv46
  %conv48 = trunc i32 %add47 to i16
  %32 = load i16* %i0, align 2
  %idxprom49 = zext i16 %32 to i64
  %33 = load i16** %h_Output.addr, align 8
  %arrayidx50 = getelementptr inbounds i16* %33, i64 %idxprom49
  store i16 %conv48, i16* %arrayidx50, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @42, i32 0, i32 0), i32 5)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @43, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([14 x i8]* @44, i32 0, i32 0), i32 4)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @45, i32 0, i32 0), i32 19)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @46, i32 0, i32 0), i32 6)
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @47, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @48, i32 0, i32 0), i32 4)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @49, i32 0, i32 0), i32 13)
  br label %for.inc51

for.inc51:                                        ; preds = %for.body25
  %34 = load i16* %j, align 2
  %inc52 = add i16 %34, 1
  store i16 %inc52, i16* %j, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @50, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @51, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @52, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @53, i32 0, i32 0), i32 1)
  br label %for.cond20

for.end53:                                        ; preds = %for.cond20
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @54, i32 0, i32 0), i32 1)
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %35 = load i16* %stride, align 2
  %conv55 = zext i16 %35 to i32
  %shl56 = shl i32 %conv55, 1
  %36 = load i16* %base, align 2
  %conv57 = zext i16 %36 to i32
  %add58 = add nsw i32 %conv57, %shl56
  %conv59 = trunc i32 %add58 to i16
  store i16 %conv59, i16* %base, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @55, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @56, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @57, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @58, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @59, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @60, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @61, i32 0, i32 0), i32 2)
  br label %for.cond14

for.end60:                                        ; preds = %for.cond14
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @62, i32 0, i32 0), i32 1)
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %37 = load i16* %stride, align 2
  %conv62 = zext i16 %37 to i32
  %shr63 = ashr i32 %conv62, 1
  %conv64 = trunc i32 %shr63 to i16
  store i16 %conv64, i16* %stride, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @63, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @64, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @65, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @66, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @67, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @68, i32 0, i32 0), i32 1)
  br label %for.cond9

for.end65:                                        ; preds = %for.cond9
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @69, i32 0, i32 0), i32 1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %input = alloca [128 x i16], align 16
  %i = alloca i32, align 4
  %output = alloca [128 x i16], align 16
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %i, align 4
  call void @_Z5CountPci(i8* getelementptr inbounds ([7 x i8]* @70, i32 0, i32 0), i32 6)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @71, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @72, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @73, i32 0, i32 0), i32 3)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 128
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @74, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @75, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @76, i32 0, i32 0), i32 1)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %conv = trunc i32 %1 to i16
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [128 x i16]* %input, i32 0, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @77, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([14 x i8]* @78, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @79, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @80, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @81, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @82, i32 0, i32 0), i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @83, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @84, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @85, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @86, i32 0, i32 0), i32 1)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [128 x i16]* %output, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [128 x i16]* %input, i32 0, i32 0
  %call2 = call i32 @fastWalshTransform(i16* %arraydecay, i16* %arraydecay1, i16 zeroext 7)
  store i32 0, i32* %j, align 4
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @87, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @88, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([14 x i8]* @89, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @90, i32 0, i32 0), i32 1)
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %4 = load i32* %j, align 4
  %cmp4 = icmp slt i32 %4, 128
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @91, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @92, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @93, i32 0, i32 0), i32 1)
  br i1 %cmp4, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond3
  %5 = load %struct._IO_FILE** %fp, align 8
  %6 = load i32* %j, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [128 x i16]* %output, i32 0, i64 %idxprom7
  %7 = load i16* %arrayidx8, align 2
  %conv9 = zext i16 %7 to i32
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i32 %conv9)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @94, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @95, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([14 x i8]* @96, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @97, i32 0, i32 0), i32 3)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @98, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @99, i32 0, i32 0), i32 1)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body6
  %8 = load i32* %j, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, i32* %j, align 4
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @100, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @101, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @102, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @103, i32 0, i32 0), i32 1)
  br label %for.cond3

for.end13:                                        ; preds = %for.cond3
  %9 = load %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %9)
  %call15 = call i32 @system(i8* getelementptr inbounds ([29 x i8]* @.str3, i32 0, i32 0))
  %tobool = icmp ne i32 %call15, 0
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @104, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @105, i32 0, i32 0), i32 2)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @106, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @107, i32 0, i32 0), i32 1)
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end13
  %10 = load %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([47 x i8]* @.str4, i32 0, i32 0))
  %11 = load %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([47 x i8]* @.str5, i32 0, i32 0))
  %12 = load %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([47 x i8]* @.str4, i32 0, i32 0))
  store i32 1, i32* %retval
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @108, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @109, i32 0, i32 0), i32 3)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @110, i32 0, i32 0), i32 3)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @111, i32 0, i32 0), i32 1)
  br label %return

if.else:                                          ; preds = %for.end13
  %13 = load %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([45 x i8]* @.str6, i32 0, i32 0))
  %14 = load %struct._IO_FILE** @stdout, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([45 x i8]* @.str7, i32 0, i32 0))
  %15 = load %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([45 x i8]* @.str6, i32 0, i32 0))
  store i32 0, i32* %retval
  call void @_Z5CountPci(i8* getelementptr inbounds ([3 x i8]* @112, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @113, i32 0, i32 0), i32 3)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @114, i32 0, i32 0), i32 3)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @115, i32 0, i32 0), i32 1)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load i32* %retval
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @116, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @117, i32 0, i32 0), i32 1)
  call void @_Z7printDIv()
  ret i32 %16
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @system(i8*) #1

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: uwtable
define void @_Z5CountPci(i8* %opName, i32 %count) #3 {
entry:
  %opName.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %opname = alloca %"class.std::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %opName, i8** %opName.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i8** %opName.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %opname, i8* %0, %"class.std::allocator.0"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  %call = invoke i64 @_ZNKSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE5countERS3_(%"class.std::map"* @CountMap, %"class.std::basic_string"* %opname)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont2
  %1 = load i32* %count.addr, align 4
  %call4 = invoke i32* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixERS3_(%"class.std::map"* @CountMap, %"class.std::basic_string"* %opname)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %if.then
  store i32 %1, i32* %call4
  br label %if.end

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  br label %eh.resume

lpad1:                                            ; preds = %if.else, %if.then, %invoke.cont
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %opname)
          to label %invoke.cont7 unwind label %terminate.lpad

if.else:                                          ; preds = %invoke.cont2
  %8 = load i32* %count.addr, align 4
  %call6 = invoke i32* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixERS3_(%"class.std::map"* @CountMap, %"class.std::basic_string"* %opname)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %if.else
  %9 = load i32* %call6
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %call6
  br label %if.end

if.end:                                           ; preds = %invoke.cont5, %invoke.cont3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %opname)
  ret void

invoke.cont7:                                     ; preds = %lpad1
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont7, %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val8

terminate.lpad:                                   ; preds = %lpad1
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #12
  unreachable
}

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator.0"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.0"*) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) #4

declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #1

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define void @_Z7printDIv() #3 {
entry:
  %total = alloca i32, align 4
  %it = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %opType = alloca %"class.std::basic_string", align 8
  %count = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce = alloca %"struct.std::_Rb_tree_iterator", align 8
  store i32 0, i32* %total, align 4
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE5beginEv(%"class.std::map"* @CountMap)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %it, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call1 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE3endEv(%"class.std::map"* @CountMap)
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call1, %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %call3 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEneERKS3_(%"struct.std::_Rb_tree_iterator"* %it, %"struct.std::_Rb_tree_iterator"* %ref.tmp)
  br i1 %call3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEptEv(%"struct.std::_Rb_tree_iterator"* %it)
  %first = getelementptr inbounds %"struct.std::pair"* %call4, i32 0, i32 0
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %opType, %"class.std::basic_string"* %first)
  %call5 = invoke %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEptEv(%"struct.std::_Rb_tree_iterator"* %it)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %second = getelementptr inbounds %"struct.std::pair"* %call5, i32 0, i32 1
  %0 = load i32* %second, align 4
  store i32 %0, i32* %count, align 4
  %1 = load i32* %count, align 4
  %2 = load i32* %total, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %total, align 4
  %call7 = invoke %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E(%"class.std::basic_ostream"* @_ZSt4cerr, %"class.std::basic_string"* %opType)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont
  %call9 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %call7, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0))
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  %3 = load i32* %count, align 4
  %call11 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call9, i32 %3)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont8
  %call13 = invoke %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call11, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont10
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %opType)
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont12
  %call15 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEppEi(%"struct.std::_Rb_tree_iterator"* %it, i32 0)
  %coerce.dive16 = getelementptr %"struct.std::_Rb_tree_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call15, %"struct.std::_Rb_tree_node_base"** %coerce.dive16
  br label %for.cond

lpad:                                             ; preds = %invoke.cont10, %invoke.cont8, %invoke.cont6, %invoke.cont, %for.body
  %4 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %opType)
          to label %invoke.cont14 unwind label %terminate.lpad

invoke.cont14:                                    ; preds = %lpad
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %call17 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cerr, i8* getelementptr inbounds ([8 x i8]* @.str29, i32 0, i32 0))
  %7 = load i32* %total, align 4
  %call18 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call17, i32 %7)
  %call19 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void

eh.resume:                                        ; preds = %invoke.cont14
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20

terminate.lpad:                                   ; preds = %lpad
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #12
  unreachable
}

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #1

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #1

declare %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E(%"class.std::basic_ostream"*, %"class.std::basic_string"*) #1

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #5

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*) #4

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #8

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #5

declare i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

define internal void @_GLOBAL__I_a() section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE5countERS3_(%"class.std::map"* %this, %"class.std::basic_string"* %__x) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  %__x.addr = alloca %"class.std::basic_string"*, align 8
  %coerce = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"class.std::basic_string"* %__x, %"class.std::basic_string"** %__x.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string"** %__x.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_(%"class.std::_Rb_tree"* %_M_t, %"class.std::basic_string"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %_M_t2 = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE3endEv(%"class.std::_Rb_tree"* %_M_t2)
  %coerce.dive4 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive4
  %call5 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_const_iterator"* %coerce, %"struct.std::_Rb_tree_const_iterator"* %ref.tmp)
  %cond = select i1 %call5, i32 0, i32 1
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixERS3_(%"class.std::map"* %this, %"class.std::basic_string"* %__k) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  %__i = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  %ref.tmp7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp8 = alloca %"struct.std::pair", align 8
  %ref.tmp9 = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %0 = load %"class.std::basic_string"** %__k.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE11lower_boundERS3_(%"class.std::map"* %this1, %"class.std::basic_string"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %__i, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE3endEv(%"class.std::map"* %this1)
  %coerce.dive3 = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call2, %"struct.std::_Rb_tree_node_base"** %coerce.dive3
  %call4 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_iterator"* %__i, %"struct.std::_Rb_tree_iterator"* %ref.tmp)
  br i1 %call4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call void @_ZNKSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE8key_compEv(%"class.std::map"* %this1)
  %1 = load %"class.std::basic_string"** %__k.addr, align 8
  %call5 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i)
  %first = getelementptr inbounds %"struct.std::pair"* %call5, i32 0, i32 0
  %call6 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %undef.agg.tmp, %"class.std::basic_string"* %1, %"class.std::basic_string"* %first)
  br i1 %call6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load %"class.std::basic_string"** %__k.addr, align 8
  store i32 0, i32* %ref.tmp9
  call void @_ZNSt4pairIKSsiEC2ERS0_RKi(%"struct.std::pair"* %ref.tmp8, %"class.std::basic_string"* %4, i32* %ref.tmp9)
  %coerce.dive10 = getelementptr %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive10
  %call11 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_(%"class.std::map"* %this1, %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::pair"* %ref.tmp8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %coerce.dive12 = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call11, %"struct.std::_Rb_tree_node_base"** %coerce.dive12
  %6 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  %7 = bitcast %"struct.std::_Rb_tree_iterator"* %ref.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  call void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair"* %ref.tmp8)
  br label %if.end

lpad:                                             ; preds = %if.then
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  invoke void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair"* %ref.tmp8)
          to label %invoke.cont13 unwind label %terminate.lpad

invoke.cont13:                                    ; preds = %lpad
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont, %lor.lhs.false
  %call14 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i)
  %second = getelementptr inbounds %"struct.std::pair"* %call14, i32 0, i32 1
  ret i32* %second

eh.resume:                                        ; preds = %invoke.cont13
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val15 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val15

terminate.lpad:                                   ; preds = %lpad
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #9 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE5beginEv(%"class.std::map"* %this) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE5beginEv(%"class.std::_Rb_tree"* %_M_t)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE3endEv(%"class.std::map"* %this) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE3endEv(%"class.std::_Rb_tree"* %_M_t)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEneERKS3_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__x) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEptEv(%"struct.std::_Rb_tree_iterator"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  %call = call %"struct.std::pair"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair"* %_M_value_field)
  ret %"struct.std::pair"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEppEi(%"struct.std::_Rb_tree_iterator"* %this, i32) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %.addr = alloca i32, align 4
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %retval to i8*
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %3) #13
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %4
}

define internal void @__cxx_global_var_init() section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

define internal void @__cxx_global_var_init1() section ".text.startup" {
entry:
  call void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEC2Ev(%"class.std::map"* @CountMap)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::map"*)* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEED2Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::map"* @CountMap, i32 0, i32 0, i32 0, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* %__k) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  %__j = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %0 = load %"class.std::basic_string"** %__k.addr, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_ESC_RS1_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"* %call2, %"class.std::basic_string"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %call4 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE3endEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive5 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call4, %"struct.std::_Rb_tree_node_base"** %coerce.dive5
  %call6 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_const_iterator"* %__j, %"struct.std::_Rb_tree_const_iterator"* %ref.tmp)
  br i1 %call6, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.std::basic_string"** %__k.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %__j, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call7 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  %call8 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %1, %"class.std::basic_string"* %call7)
  br i1 %call8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %call9 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE3endEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive10 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call9, %"struct.std::_Rb_tree_node_base"** %coerce.dive10
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = bitcast %"struct.std::_Rb_tree_const_iterator"* %retval to i8*
  %4 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %coerce.dive11 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive11
  ret %"struct.std::_Rb_tree_node_base"* %5
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE3endEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2EPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* %__x) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__x, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE11lower_boundERS3_(%"class.std::map"* %this, %"class.std::basic_string"* %__x) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__x.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"class.std::basic_string"* %__x, %"class.std::basic_string"** %__x.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string"** %__x.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1_(%"class.std::_Rb_tree"* %_M_t, %"class.std::basic_string"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__x) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE8key_compEv(%"class.std::map"* %this) #3 align 2 {
entry:
  %retval = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::map"*, align 8
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8key_compEv(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  ret %"struct.std::pair"* %_M_value_field
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %this, %"class.std::basic_string"* %__x, %"class.std::basic_string"* %__y) #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__x.addr = alloca %"class.std::basic_string"*, align 8
  %__y.addr = alloca %"class.std::basic_string"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"class.std::basic_string"* %__x, %"class.std::basic_string"** %__x.addr, align 8
  store %"class.std::basic_string"* %__y, %"class.std::basic_string"** %__y.addr, align 8
  %this1 = load %"struct.std::less"** %this.addr
  %0 = load %"class.std::basic_string"** %__x.addr, align 8
  %1 = load %"class.std::basic_string"** %__y.addr, align 8
  %call = call zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_(%"class.std::basic_string"* %0, %"class.std::basic_string"* %1)
  ret i1 %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt4pairIKSsiEC2ERS0_RKi(%"struct.std::pair"* %this, %"class.std::basic_string"* %__a, i32* %__b) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__a.addr = alloca %"class.std::basic_string"*, align 8
  %__b.addr = alloca i32*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store %"class.std::basic_string"* %__a, %"class.std::basic_string"** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %this1 = load %"struct.std::pair"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string"** %__a.addr, align 8
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %first, %"class.std::basic_string"* %0)
  %second = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 1
  %1 = load i32** %__b.addr, align 8
  %2 = load i32* %1, align 4
  store i32 %2, i32* %second, align 4
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_(%"class.std::map"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::pair"* %__x) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2ERKSt17_Rb_tree_iteratorIS2_E(%"struct.std::_Rb_tree_const_iterator"* %agg.tmp, %"struct.std::_Rb_tree_iterator"* %__position)
  %0 = load %"struct.std::pair"** %__x.addr, align 8
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_(%"class.std::_Rb_tree"* %_M_t, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::pair"* %0)
  %coerce.dive3 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive3
  %coerce.dive4 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive4
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair"* %this) unnamed_addr #10 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  %this1 = load %"struct.std::pair"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %first)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE5beginEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %1)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE3endEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair"* %__r) #11 {
entry:
  %__r.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__r, %"struct.std::pair"** %__r.addr, align 8
  %0 = load %"struct.std::pair"** %__r.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  ret %"struct.std::pair"* %2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEC2Ev(%"class.std::map"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EEC2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEED2Ev(%"class.std::map"* %this) unnamed_addr #10 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EED2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_ESC_RS1_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, %"class.std::basic_string"* %__k) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %1)
  %2 = load %"class.std::basic_string"** %__k.addr, align 8
  %call2 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %call, %"class.std::basic_string"* %2)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %3, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  %4 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5)
  store %"struct.std::_Rb_tree_node"* %call3, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to %"struct.std::_Rb_tree_node_base"*
  %call4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %7)
  store %"struct.std::_Rb_tree_node"* %call4, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2EPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node"* %8)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %tmp = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %call = call %"struct.std::pair"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0)
  %call1 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair"* %call)
  ret %"class.std::basic_string"* %call1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2EPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_node"* %__x) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node"* %0 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* %__k) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %0 = load %"class.std::basic_string"** %__k.addr, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"* %call2, %"class.std::basic_string"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %coerce.dive4 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive4
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8key_compEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %retval = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_(%"class.std::basic_string"* %__lhs, %"class.std::basic_string"* %__rhs) #10 {
entry:
  %__lhs.addr = alloca %"class.std::basic_string"*, align 8
  %__rhs.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %__lhs, %"class.std::basic_string"** %__lhs.addr, align 8
  store %"class.std::basic_string"* %__rhs, %"class.std::basic_string"** %__rhs.addr, align 8
  %0 = load %"class.std::basic_string"** %__lhs.addr, align 8
  %1 = load %"class.std::basic_string"** %__rhs.addr, align 8
  %call = call i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"* %0, %"class.std::basic_string"* %1)
  %cmp = icmp slt i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2ERKSt17_Rb_tree_iteratorIS2_E(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__it) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__it.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__it, %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %0, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::pair"* %__v) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__v.addr = alloca %"struct.std::pair"*, align 8
  %__res = alloca %"struct.std::pair.3", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %tmp = alloca %"struct.std::_Select1st", align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  store %"struct.std::pair"* %__v, %"struct.std::pair"** %__v.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = load %"struct.std::pair"** %__v.addr, align 8
  %call = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair"* %2)
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %call3 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, %"class.std::basic_string"* %call)
  %4 = bitcast %"struct.std::pair.3"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %5 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 0
  %6 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %5, align 1
  %7 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 1
  %8 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 1
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %7, align 1
  %second = getelementptr inbounds %"struct.std::pair.3"* %__res, i32 0, i32 1
  %9 = load %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %first = getelementptr inbounds %"struct.std::pair.3"* %__res, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second4 = getelementptr inbounds %"struct.std::pair.3"* %__res, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node_base"** %second4, align 8
  %12 = load %"struct.std::pair"** %__v.addr, align 8
  %call5 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE10_M_insert_EPSt18_Rb_tree_node_baseSA_RKS2_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::pair"* %12)
  %coerce.dive6 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call5, %"struct.std::_Rb_tree_node_base"** %coerce.dive6
  br label %return

if.end:                                           ; preds = %entry
  %first7 = getelementptr inbounds %"struct.std::pair.3"* %__res, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"** %first7, align 8
  %14 = bitcast %"struct.std::_Rb_tree_node_base"* %13 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %14)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive8 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive8
  ret %"struct.std::_Rb_tree_node_base"* %15
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_node"* %__x) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node"* %0 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EED2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl) #2
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  %_M_impl3 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EED2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl3) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %__x) #3 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %tmp = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call %"struct.std::pair"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %0)
  %call1 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair"* %call)
  ret %"class.std::basic_string"* %call1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  ret %"struct.std::pair"* %_M_value_field
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %this, %"struct.std::pair"* %__x) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Select1st"*, align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::_Select1st"* %this, %"struct.std::_Select1st"** %this.addr, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"struct.std::_Select1st"** %this.addr
  %0 = load %"struct.std::pair"** %__x.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair"* %0, i32 0, i32 0
  ret %"class.std::basic_string"* %first
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, %"class.std::basic_string"* %__k) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %1)
  %2 = load %"class.std::basic_string"** %__k.addr, align 8
  %call2 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %call, %"class.std::basic_string"* %2)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %3, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  %4 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5)
  store %"struct.std::_Rb_tree_node"* %call3, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to %"struct.std::_Rb_tree_node_base"*
  %call4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %7)
  store %"struct.std::_Rb_tree_node"* %call4, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %8)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"class.std::basic_string"* %__k) #3 align 2 {
entry:
  %retval = alloca %"struct.std::pair.3", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  %__pos = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__before = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp37 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__after = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp55 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp69 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp78 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsiEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %__position)
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %1 = bitcast %"struct.std::_Rb_tree_node"* %call3 to %"struct.std::_Rb_tree_node_base"*
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %1
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %call4 = call i64 @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4sizeEv(%"class.std::_Rb_tree"* %this1)
  %cmp5 = icmp ugt i64 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %call6 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %2 = load %"struct.std::_Rb_tree_node_base"** %call6
  %call7 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  %3 = load %"class.std::basic_string"** %__k.addr, align 8
  %call8 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %call7, %"class.std::basic_string"* %3)
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp
  %call10 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp, %"struct.std::_Rb_tree_node_base"** %call10)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load %"class.std::basic_string"** %__k.addr, align 8
  %call11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %4)
  %5 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %6 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 0
  %7 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 0
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 1
  %8 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 1
  %9 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 1
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %8, align 1
  br label %return

if.else12:                                        ; preds = %entry
  %_M_impl13 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare14 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl13, i32 0, i32 0
  %10 = load %"class.std::basic_string"** %__k.addr, align 8
  %_M_node15 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"** %_M_node15, align 8
  %call16 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %11)
  %call17 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare14, %"class.std::basic_string"* %10, %"class.std::basic_string"* %call16)
  br i1 %call17, label %if.then18, label %if.else44

if.then18:                                        ; preds = %if.else12
  %12 = bitcast %"struct.std::_Rb_tree_iterator"* %__before to i8*
  %13 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"** %_M_node19, align 8
  %call20 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %15 = load %"struct.std::_Rb_tree_node_base"** %call20
  %cmp21 = icmp eq %"struct.std::_Rb_tree_node_base"* %14, %15
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then18
  %call23 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %call24 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %call23, %"struct.std::_Rb_tree_node_base"** %call24)
  br label %return

if.else25:                                        ; preds = %if.then18
  %_M_impl26 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare27 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl26, i32 0, i32 0
  %call28 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEmmEv(%"struct.std::_Rb_tree_iterator"* %__before)
  %_M_node29 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %call28, i32 0, i32 0
  %16 = load %"struct.std::_Rb_tree_node_base"** %_M_node29, align 8
  %call30 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %16)
  %17 = load %"class.std::basic_string"** %__k.addr, align 8
  %call31 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare27, %"class.std::basic_string"* %call30, %"class.std::basic_string"* %17)
  br i1 %call31, label %if.then32, label %if.else42

if.then32:                                        ; preds = %if.else25
  %_M_node33 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  %18 = load %"struct.std::_Rb_tree_node_base"** %_M_node33, align 8
  %call34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %18)
  %cmp35 = icmp eq %"struct.std::_Rb_tree_node"* %call34, null
  br i1 %cmp35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then32
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp37
  %_M_node38 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp37, %"struct.std::_Rb_tree_node_base"** %_M_node38)
  br label %return

if.else39:                                        ; preds = %if.then32
  %_M_node40 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %_M_node41 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node40, %"struct.std::_Rb_tree_node_base"** %_M_node41)
  br label %return

if.else42:                                        ; preds = %if.else25
  %19 = load %"class.std::basic_string"** %__k.addr, align 8
  %call43 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %19)
  %20 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %21 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %20, i32 0, i32 0
  %22 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 0
  store %"struct.std::_Rb_tree_node_base"* %22, %"struct.std::_Rb_tree_node_base"** %21, align 1
  %23 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %20, i32 0, i32 1
  %24 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 1
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %23, align 1
  br label %return

if.else44:                                        ; preds = %if.else12
  %_M_impl45 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare46 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl45, i32 0, i32 0
  %_M_node47 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %25 = load %"struct.std::_Rb_tree_node_base"** %_M_node47, align 8
  %call48 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %25)
  %26 = load %"class.std::basic_string"** %__k.addr, align 8
  %call49 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare46, %"class.std::basic_string"* %call48, %"class.std::basic_string"* %26)
  br i1 %call49, label %if.then50, label %if.else76

if.then50:                                        ; preds = %if.else44
  %27 = bitcast %"struct.std::_Rb_tree_iterator"* %__after to i8*
  %28 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %_M_node51 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %29 = load %"struct.std::_Rb_tree_node_base"** %_M_node51, align 8
  %call52 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %30 = load %"struct.std::_Rb_tree_node_base"** %call52
  %cmp53 = icmp eq %"struct.std::_Rb_tree_node_base"* %29, %30
  br i1 %cmp53, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.then50
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp55
  %call56 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp55, %"struct.std::_Rb_tree_node_base"** %call56)
  br label %return

if.else57:                                        ; preds = %if.then50
  %_M_impl58 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare59 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl58, i32 0, i32 0
  %31 = load %"class.std::basic_string"** %__k.addr, align 8
  %call60 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEppEv(%"struct.std::_Rb_tree_iterator"* %__after)
  %_M_node61 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %call60, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"** %_M_node61, align 8
  %call62 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %32)
  %call63 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare59, %"class.std::basic_string"* %31, %"class.std::basic_string"* %call62)
  br i1 %call63, label %if.then64, label %if.else74

if.then64:                                        ; preds = %if.else57
  %_M_node65 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %33 = load %"struct.std::_Rb_tree_node_base"** %_M_node65, align 8
  %call66 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %33)
  %cmp67 = icmp eq %"struct.std::_Rb_tree_node"* %call66, null
  br i1 %cmp67, label %if.then68, label %if.else71

if.then68:                                        ; preds = %if.then64
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp69
  %_M_node70 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp69, %"struct.std::_Rb_tree_node_base"** %_M_node70)
  br label %return

if.else71:                                        ; preds = %if.then64
  %_M_node72 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  %_M_node73 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node72, %"struct.std::_Rb_tree_node_base"** %_M_node73)
  br label %return

if.else74:                                        ; preds = %if.else57
  %34 = load %"class.std::basic_string"** %__k.addr, align 8
  %call75 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %34)
  %35 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %36 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 0
  %37 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 0
  store %"struct.std::_Rb_tree_node_base"* %37, %"struct.std::_Rb_tree_node_base"** %36, align 1
  %38 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 1
  %39 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 1
  store %"struct.std::_Rb_tree_node_base"* %39, %"struct.std::_Rb_tree_node_base"** %38, align 1
  br label %return

if.else76:                                        ; preds = %if.else44
  %_M_node77 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp78
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node77, %"struct.std::_Rb_tree_node_base"** %ref.tmp78)
  br label %return

return:                                           ; preds = %if.else76, %if.else74, %if.else71, %if.then68, %if.then54, %if.else42, %if.else39, %if.then36, %if.then22, %if.else, %if.then9
  %40 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %41 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %40, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %41
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE10_M_insert_EPSt18_Rb_tree_node_baseSA_RKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::pair"* %__v) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__v.addr = alloca %"struct.std::pair"*, align 8
  %__insert_left = alloca i8, align 1
  %tmp = alloca %"struct.std::_Select1st", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  store %"struct.std::pair"* %__v, %"struct.std::pair"** %__v.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %2 = bitcast %"struct.std::_Rb_tree_node"* %call to %"struct.std::_Rb_tree_node_base"*
  %cmp2 = icmp eq %"struct.std::_Rb_tree_node_base"* %1, %2
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %3 = load %"struct.std::pair"** %__v.addr, align 8
  %call3 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair"* %3)
  %4 = load %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call4 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %call5 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %call3, %"class.std::basic_string"* %call4)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call5, %lor.rhs ]
  %frombool = zext i1 %5 to i8
  store i8 %frombool, i8* %__insert_left, align 1
  %6 = load %"struct.std::pair"** %__v.addr, align 8
  %call7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_create_nodeERKS2_(%"class.std::_Rb_tree"* %this1, %"struct.std::pair"* %6)
  store %"struct.std::_Rb_tree_node"* %call7, %"struct.std::_Rb_tree_node"** %__z, align 8
  %7 = load i8* %__insert_left, align 1
  %tobool = trunc i8 %7 to i1
  %8 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %10 = load %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %_M_impl8 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl8, i32 0, i32 1
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %tobool, %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %_M_header) #2
  %_M_impl9 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl9, i32 0, i32 2
  %11 = load i64* %_M_node_count, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %_M_node_count, align 8
  %12 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %12)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.std::allocator"* %0) #2
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false)
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 2
  store i64 0, i64* %_M_node_count, align 8
  invoke void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  %5 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.std::allocator"* %5) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
  %3 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node"* %3 to %"struct.std::_Rb_tree_node_base"*
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  %5 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %5)
  %6 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EED2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this) unnamed_addr #11 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.std::allocator"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %__x) #0 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %0, i32 0, i32 1
  ret %"struct.std::pair"* %_M_value_field
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsiEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %this) #3 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %1)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4sizeEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 2
  %0 = load i64* %_M_node_count, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %_M_right
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %this, %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"** %__b) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.3"*, align 8
  %__a.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__b.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.3"* %this, %"struct.std::pair.3"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__b, %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %this1 = load %"struct.std::pair.3"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair.3"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node_base"** %0, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.3"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* %__k) #3 align 2 {
entry:
  %retval = alloca %"struct.std::pair.3", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp12 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp20 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp21 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp24 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  store i8 1, i8* %__comp, align 1
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %__y, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %2 = load %"class.std::basic_string"** %__k.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %call3 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %3)
  %call4 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %2, %"class.std::basic_string"* %call3)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %__comp, align 1
  %4 = load i8* %__comp, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %5 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node"* %5 to %"struct.std::_Rb_tree_node_base"*
  %call5 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %6)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::_Rb_tree_node"* [ %call5, %cond.true ], [ %call6, %cond.false ]
  store %"struct.std::_Rb_tree_node"* %cond, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_node"* %9)
  %10 = load i8* %__comp, align 1
  %tobool7 = trunc i8 %10 to i1
  br i1 %tobool7, label %if.then, label %if.end14

if.then:                                          ; preds = %while.end
  %call8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE5beginEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call8, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %call9 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* %ref.tmp)
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %11 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %ref.tmp11
  %13 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %14 = bitcast %"struct.std::_Rb_tree_node"* %13 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %ref.tmp12
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp11, %"struct.std::_Rb_tree_node_base"** %ref.tmp12)
  br label %return

if.else:                                          ; preds = %if.then
  %call13 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEmmEv(%"struct.std::_Rb_tree_iterator"* %__j)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %while.end
  %_M_impl15 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare16 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl15, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call17 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %15)
  %16 = load %"class.std::basic_string"** %__k.addr, align 8
  %call18 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare16, %"class.std::basic_string"* %call17, %"class.std::basic_string"* %16)
  br i1 %call18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  %17 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %18 = bitcast %"struct.std::_Rb_tree_node"* %17 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %18, %"struct.std::_Rb_tree_node_base"** %ref.tmp20
  %19 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %20, %"struct.std::_Rb_tree_node_base"** %ref.tmp21
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp20, %"struct.std::_Rb_tree_node_base"** %ref.tmp21)
  br label %return

if.end22:                                         ; preds = %if.end14
  %_M_node23 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp24
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node23, %"struct.std::_Rb_tree_node_base"** %ref.tmp24)
  br label %return

return:                                           ; preds = %if.end22, %if.then19, %if.then10
  %21 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %22 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %21, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %_M_left
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEmmEv(%"struct.std::_Rb_tree_iterator"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #13
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEppEv(%"struct.std::_Rb_tree_iterator"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #13
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_create_nodeERKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::pair"* %__x) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  invoke void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.4"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %"class.std::allocator.4"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.5"*
  %1 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  %call4 = invoke %"struct.std::pair"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair"* %_M_value_field)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load %"struct.std::pair"** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.5"* %0, %"struct.std::pair"* %call4, %"struct.std::pair"* %2)
          to label %invoke.cont5 unwind label %lpad2

invoke.cont5:                                     ; preds = %invoke.cont3
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %temp.lvalue) #2
  br label %try.cont

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  br label %catch

lpad2:                                            ; preds = %invoke.cont3, %invoke.cont
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %temp.lvalue) #2
  br label %catch

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8** %exn.slot
  %9 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %10 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  invoke void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %10)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad6

lpad6:                                            ; preds = %invoke.cont7, %catch
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %lpad6
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont5
  %14 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %14

eh.resume:                                        ; preds = %invoke.cont8
  %exn9 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn9, 0
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val10

terminate.lpad:                                   ; preds = %lpad6
  %15 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #12
  unreachable

unreachable:                                      ; preds = %invoke.cont7
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_color = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 0
  store i32 0, i32* %_M_color, align 4
  %_M_header2 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header2, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %_M_header3 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header4 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header4, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %_M_header3, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %_M_header5 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header6 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header6, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %_M_header5, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.std::allocator"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  call void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.4"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
  %0 = bitcast %"class.std::allocator.4"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.5"*
  %1 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  %call = invoke %"struct.std::pair"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair"* %_M_value_field)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator.5"* %0, %"struct.std::pair"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %temp.lvalue) #2
  %2 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %2)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %temp.lvalue) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 1, i8* null)
  ret %"struct.std::_Rb_tree_node"* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.4"* noalias sret %agg.result, %"class.std::_Rb_tree"* %this) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"class.std::allocator"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSaISt4pairIKSsiEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E(%"class.std::allocator.4"* %agg.result, %"class.std::allocator"* %call) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::pair"* %__p, %"struct.std::pair"* %__val) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__val.addr = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::pair"* %__val, %"struct.std::pair"** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  %0 = load %"struct.std::pair"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  %3 = load %"struct.std::pair"** %__val.addr, align 8
  call void @_ZNSt4pairIKSsiEC2ERKS1_(%"struct.std::pair"* %2, %"struct.std::pair"* %3)
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %4 = phi %"struct.std::pair"* [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  %this1 = load %"class.std::allocator.4"** %this.addr
  %0 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %0) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #3 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::_Rb_tree_node"* %2, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::pair"* %__p) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  %0 = load %"struct.std::pair"** %__p.addr, align 8
  call void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #3 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 48
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKSsiEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E(%"class.std::allocator.4"* %this, %"class.std::allocator"*) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator.4"** %this.addr
  %1 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %1) #2
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4pairIKSsiEC2ERKS1_(%"struct.std::pair"* %this, %"struct.std::pair"*) unnamed_addr #10 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %.addr, align 8
  %this1 = load %"struct.std::pair"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 0
  %1 = load %"struct.std::pair"** %.addr, align 8
  %first2 = getelementptr inbounds %"struct.std::pair"* %1, i32 0, i32 0
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %first, %"class.std::basic_string"* %first2)
  %second = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 1
  %2 = load %"struct.std::pair"** %.addr, align 8
  %second3 = getelementptr inbounds %"struct.std::pair"* %2, i32 0, i32 1
  %3 = load i32* %second3, align 4
  store i32 %3, i32* %second, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret i64 384307168202282325
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }

!llvm.ident = !{!0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
