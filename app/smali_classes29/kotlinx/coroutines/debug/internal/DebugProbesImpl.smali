.class public final Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
.super Ljava/lang/Object;
.source "DebugProbesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,524:1\n153#1,2:549\n155#1,3:552\n159#1:556\n161#1,2:567\n164#1:571\n153#1,2:572\n155#1,3:575\n159#1:579\n161#1,2:590\n164#1:594\n1#2:525\n1#2:546\n1#2:551\n1#2:574\n764#3:526\n855#3,2:527\n1206#3,2:529\n1236#3,4:531\n1043#3:535\n1601#3,9:536\n1849#3:545\n1850#3:547\n1610#3:548\n1043#3:555\n1601#3,9:557\n1849#3:566\n1850#3:569\n1610#3:570\n1043#3:578\n1601#3,9:580\n1849#3:589\n1850#3:592\n1610#3:593\n1849#3,2:598\n348#3,7:606\n1813#3,8:613\n602#4:595\n1290#4,2:596\n1620#5,6:600\n1728#5,6:621\n*S KotlinDebug\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n170#1:549,2\n170#1:552,3\n170#1:556\n170#1:567,2\n170#1:571\n177#1:572,2\n177#1:575,3\n177#1:579\n177#1:590,2\n177#1:594\n159#1:546\n170#1:551\n177#1:574\n113#1:526\n113#1:527,2\n114#1:529,2\n114#1:531,4\n157#1:535\n159#1:536,9\n159#1:545\n159#1:547\n159#1:548\n170#1:555\n170#1:557,9\n170#1:566\n170#1:569\n170#1:570\n177#1:578\n177#1:580,9\n177#1:589\n177#1:592\n177#1:593\n231#1:598,2\n340#1:606,7\n425#1:613,8\n211#1:595\n212#1:596,2\n279#1:600,6\n475#1:621,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u00c0\u0002\u0018\u00002\u00020\u0013:\u0002\u008f\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0001\u0010\u0002J3\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\u0008\u0000\u0010\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0013\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J>\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f\"\u0008\u0008\u0000\u0010\u0014*\u00020\u00132\u001c\u0010\u0018\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00028\u00000\u0015H\u0082\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u000eJ\u0013\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u000f\u00a2\u0006\u0004\u0008\u001d\u0010\u0012J)\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010\u001e\u001a\u00020\u00102\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000f\u00a2\u0006\u0004\u0008!\u0010\"J5\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010$\u001a\u00020#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002\u00a2\u0006\u0004\u0008\'\u0010(J?\u0010.\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0-2\u0006\u0010*\u001a\u00020)2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u001f0+2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002\u00a2\u0006\u0004\u0008.\u0010/J3\u00101\u001a\u00020)2\u0006\u00100\u001a\u00020)2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u001f0+2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002\u00a2\u0006\u0004\u00081\u00102J\u001d\u00105\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u000c\u0018\u000103H\u0002\u00a2\u0006\u0004\u00085\u00106J\u0015\u00109\u001a\u00020#2\u0006\u00108\u001a\u000207\u00a2\u0006\u0004\u00089\u0010:J\r\u0010;\u001a\u00020\u000c\u00a2\u0006\u0004\u0008;\u0010\u0002J%\u0010=\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u001b\u0010@\u001a\u00020\u000c2\n\u0010?\u001a\u0006\u0012\u0002\u0008\u00030\u0016H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ)\u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\u0008\u0000\u0010\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0000\u00a2\u0006\u0004\u0008B\u0010CJ\u001b\u0010G\u001a\u00020\u000c2\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0000\u00a2\u0006\u0004\u0008E\u0010FJ\u001b\u0010I\u001a\u00020\u000c2\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0000\u00a2\u0006\u0004\u0008H\u0010FJ\'\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000f\"\u0008\u0008\u0000\u0010\u0003*\u00020J2\u0006\u0010K\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010N\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008N\u0010\u0002J\u000f\u0010O\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008O\u0010\u0002J\r\u0010P\u001a\u00020\u000c\u00a2\u0006\u0004\u0008P\u0010\u0002J\u001f\u0010R\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020Q2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008R\u0010SJ#\u0010T\u001a\u00020\u000c2\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008T\u0010UJ/\u0010T\u001a\u00020\u000c2\n\u0010?\u001a\u0006\u0012\u0002\u0008\u00030\u00162\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008T\u0010VJ;\u0010^\u001a\u00020\u000c*\u0002072\u0012\u0010Y\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020X0W2\n\u0010\\\u001a\u00060Zj\u0002`[2\u0006\u0010]\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008^\u0010_J\u0017\u0010`\u001a\u000204*\u0006\u0012\u0002\u0008\u00030\u0016H\u0002\u00a2\u0006\u0004\u0008`\u0010aJ\u001d\u0010?\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0016*\u0006\u0012\u0002\u0008\u00030\u0004H\u0002\u00a2\u0006\u0004\u0008?\u0010bJ\u001a\u0010?\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0016*\u00020QH\u0082\u0010\u00a2\u0006\u0004\u0008?\u0010cJ\u0016\u0010d\u001a\u0004\u0018\u00010Q*\u00020QH\u0082\u0010\u00a2\u0006\u0004\u0008d\u0010eJ\u001b\u0010f\u001a\u0004\u0018\u00010\u0006*\u0008\u0012\u0004\u0012\u00020\u001f0\u000fH\u0002\u00a2\u0006\u0004\u0008f\u0010gR\u0016\u0010h\u001a\u00020#8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\"\u0010k\u001a\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020X0j8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR \u0010p\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00160m8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010oR&\u0010q\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0016\u0012\u0004\u0012\u0002040j8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008q\u0010lR\u0016\u0010s\u001a\u00020r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0016\u0010v\u001a\u00020u8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR$\u0010x\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u000c\u0018\u0001038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\"\u0010z\u001a\u0002048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR\u0019\u0010\u0080\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0083\u0001\u001a\u0002048@@\u0000X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0082\u0001\u0010}R&\u0010\u0084\u0001\u001a\u0002048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0084\u0001\u0010{\u001a\u0005\u0008\u0085\u0001\u0010}\"\u0005\u0008\u0086\u0001\u0010\u007fR\u001b\u0010\u0087\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R$\u0010\u008c\u0001\u001a\u00020#*\u0002078B@\u0002X\u0082\u0004\u00a2\u0006\u000f\u0012\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u001a\u0005\u0008\u0089\u0001\u0010:R\u001d\u0010\u008d\u0001\u001a\u000204*\u00020\u001f8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/DebugProbesImpl;",
        "<init>",
        "()V",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "completion",
        "Lkotlinx/coroutines/debug/internal/StackTraceFrame;",
        "frame",
        "createOwner",
        "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/StackTraceFrame;)Lkotlin/coroutines/Continuation;",
        "Ljava/io/PrintStream;",
        "out",
        "",
        "dumpCoroutines",
        "(Ljava/io/PrintStream;)V",
        "",
        "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;",
        "dumpCoroutinesInfo",
        "()Ljava/util/List;",
        "",
        "R",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;",
        "Lkotlin/coroutines/CoroutineContext;",
        "create",
        "dumpCoroutinesInfoImpl",
        "(Lkotlin/jvm/functions/Function2;)Ljava/util/List;",
        "dumpCoroutinesSynchronized",
        "Lkotlinx/coroutines/debug/internal/DebuggerInfo;",
        "dumpDebuggerInfo",
        "info",
        "Ljava/lang/StackTraceElement;",
        "coroutineTrace",
        "enhanceStackTraceWithThreadDump",
        "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;",
        "",
        "state",
        "Ljava/lang/Thread;",
        "thread",
        "enhanceStackTraceWithThreadDumpImpl",
        "(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;",
        "",
        "indexOfResumeWith",
        "",
        "actualTrace",
        "Lkotlin/Pair;",
        "findContinuationStartIndex",
        "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;",
        "frameIndex",
        "findIndexOfFrame",
        "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I",
        "Lkotlin/Function1;",
        "",
        "getDynamicAttach",
        "()Lkotlin/jvm/functions/Function1;",
        "Lkotlinx/coroutines/Job;",
        "job",
        "hierarchyToString",
        "(Lkotlinx/coroutines/Job;)Ljava/lang/String;",
        "install",
        "frames",
        "printStackTrace",
        "(Ljava/io/PrintStream;Ljava/util/List;)V",
        "owner",
        "probeCoroutineCompleted",
        "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V",
        "probeCoroutineCreated$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;",
        "probeCoroutineCreated",
        "probeCoroutineResumed$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/Continuation;)V",
        "probeCoroutineResumed",
        "probeCoroutineSuspended$kotlinx_coroutines_core",
        "probeCoroutineSuspended",
        "",
        "throwable",
        "sanitizeStackTrace",
        "(Ljava/lang/Throwable;)Ljava/util/List;",
        "startWeakRefCleanerThread",
        "stopWeakRefCleanerThread",
        "uninstall",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "updateRunningState",
        "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V",
        "updateState",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V",
        "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V",
        "",
        "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;",
        "map",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "builder",
        "indent",
        "build",
        "(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V",
        "isFinished",
        "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z",
        "(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;",
        "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;",
        "realCaller",
        "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "toStackTraceFrame",
        "(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/StackTraceFrame;",
        "ARTIFICIAL_FRAME_MESSAGE",
        "Ljava/lang/String;",
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;",
        "callerInfoCache",
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;",
        "",
        "getCapturedCoroutines",
        "()Ljava/util/Set;",
        "capturedCoroutines",
        "capturedCoroutinesMap",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "coroutineStateLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "Ljava/text/SimpleDateFormat;",
        "dateFormat",
        "Ljava/text/SimpleDateFormat;",
        "dynamicAttach",
        "Lkotlin/jvm/functions/Function1;",
        "enableCreationStackTraces",
        "Z",
        "getEnableCreationStackTraces",
        "()Z",
        "setEnableCreationStackTraces",
        "(Z)V",
        "installations",
        "I",
        "isInstalled$kotlinx_coroutines_core",
        "isInstalled",
        "sanitizeStackTraces",
        "getSanitizeStackTraces",
        "setSanitizeStackTraces",
        "weakRefCleanerThread",
        "Ljava/lang/Thread;",
        "getDebugString",
        "getDebugString$annotations",
        "(Lkotlinx/coroutines/Job;)V",
        "debugString",
        "isInternalMethod",
        "(Ljava/lang/StackTraceElement;)Z",
        "CoroutineOwner",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ARTIFICIAL_FRAME_MESSAGE:Ljava/lang/String; = "Coroutine creation stacktrace"

.field public static final INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

.field private static final callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static final synthetic debugProbesImpl$SequenceNumberRefVolatile:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumberRefVolatile;

.field private static final dynamicAttach:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static enableCreationStackTraces:Z

.field private static volatile installations:I

.field private static sanitizeStackTraces:Z

.field private static final synthetic sequenceNumber$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static weakRefCleanerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    .line 25
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    .line 43
    new-instance v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumberRefVolatile;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumberRefVolatile;-><init>(J)V

    sput-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->debugProbesImpl$SequenceNumberRefVolatile:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumberRefVolatile;

    .line 51
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 53
    sput-boolean v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTraces:Z

    .line 54
    sput-boolean v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enableCreationStackTraces:Z

    .line 60
    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getDynamicAttach()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dynamicAttach:Lkotlin/jvm/functions/Function1;

    .line 80
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-direct {v0, v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    const-class v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumberRefVolatile;

    const-string v1, "sequenceNumber"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sequenceNumber$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallerInfoCache$p()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .locals 1

    .line 23
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    return-object v0
.end method

.method public static final synthetic access$getCapturedCoroutines(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    .line 23
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getCapturedCoroutines()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCoroutineStateLock$p()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 23
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method public static final synthetic access$isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .param p1, "$receiver"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .line 23
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$probeCoroutineCompleted(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .param p1, "owner"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .line 23
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->probeCoroutineCompleted(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V

    return-void
.end method

.method private final build(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8
    .param p1, "$this$build"    # Lkotlinx/coroutines/Job;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "builder"    # Ljava/lang/StringBuilder;
    .param p4, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Ljava/util/Map<",
            "Lkotlinx/coroutines/Job;",
            "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    .local v0, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    const/4 v1, 0x0

    .line 123
    .local v1, "newIndent":Ljava/lang/String;
    const-string v2, "\t"

    const/16 v3, 0xa

    if-nez v0, :cond_1

    .line 126
    instance-of v4, p1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    if-nez v4, :cond_0

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getDebugString(Lkotlinx/coroutines/Job;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_0
    move-object v1, p4

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->lastObservedStackTrace()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StackTraceElement;

    .line 135
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "state":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getDebugString(Lkotlinx/coroutines/Job;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", continuation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    .end local v5    # "state":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getChildren()Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    .line 141
    .local v3, "child":Lkotlinx/coroutines/Job;
    invoke-direct {p0, v3, p2, p3, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->build(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .end local v3    # "child":Lkotlinx/coroutines/Job;
    goto :goto_1

    .line 143
    :cond_2
    return-void
.end method

.method private final createOwner(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/StackTraceFrame;)Lkotlin/coroutines/Continuation;
    .locals 5
    .param p1, "completion"    # Lkotlin/coroutines/Continuation;
    .param p2, "frame"    # Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lkotlinx/coroutines/debug/internal/StackTraceFrame;",
            ")",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 431
    :cond_0
    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sequenceNumber$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->debugProbesImpl$SequenceNumberRefVolatile:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumberRefVolatile;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/debug/internal/StackTraceFrame;J)V

    .line 432
    .local v0, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    new-instance v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-object v2, p2

    check-cast v2, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-direct {v1, p1, v0, v2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V

    .line 433
    .local v1, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    sget-object v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->clear()V

    .line 435
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    return-object v2
.end method

.method private final dumpCoroutinesInfoImpl(Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 22
    .param p1, "create"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;-",
            "Lkotlin/coroutines/CoroutineContext;",
            "+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$dumpCoroutinesInfoImpl":I
    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$getCoroutineStateLock$p()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 154
    .local v0, "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1":I
    :try_start_0
    sget-object v7, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v7}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 155
    invoke-static {v7}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$getCapturedCoroutines(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 157
    nop

    .local v7, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 535
    .local v8, "$i$f$sortedBy":I
    new-instance v9, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$lambda-14$$inlined$sortedBy$1;

    invoke-direct {v9}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$lambda-14$$inlined$sortedBy$1;-><init>()V

    check-cast v9, Ljava/util/Comparator;

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .end local v7    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$sortedBy":I
    check-cast v9, Ljava/lang/Iterable;

    .line 159
    move-object v7, v9

    .local v7, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 536
    .local v8, "$i$f$mapNotNull":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 544
    .local v11, "$i$f$mapNotNullTo":I
    move-object v12, v10

    .local v12, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 545
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "element$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 544
    .local v17, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v18, v16

    check-cast v18, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-object/from16 v19, v18

    .local v19, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/16 v18, 0x0

    .line 161
    .local v18, "$i$a$-mapNotNull-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3":I
    sget-object v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    move-object/from16 v6, v19

    .end local v19    # "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v6, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    invoke-static {v4, v6}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z

    move-result v4

    const/16 v19, 0x0

    if-eqz v4, :cond_2

    move/from16 v20, v1

    move-object/from16 v1, p1

    goto :goto_3

    .line 162
    :cond_2
    iget-object v4, v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-virtual {v4}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_3

    move/from16 v20, v1

    move-object/from16 v1, p1

    goto :goto_3

    .line 525
    .local v4, "context":Lkotlin/coroutines/CoroutineContext;
    :cond_3
    const/16 v19, 0x0

    .line 162
    .local v19, "$i$a$-let-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$1":I
    move/from16 v20, v1

    move-object/from16 v1, p1

    .end local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    .local v20, "$i$f$dumpCoroutinesInfoImpl":I
    :try_start_1
    invoke-interface {v1, v6, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v19, v21

    .line 161
    .end local v4    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v19    # "$i$a$-let-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$1":I
    :goto_3
    nop

    .end local v6    # "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v18    # "$i$a$-mapNotNull-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3":I
    if-eqz v19, :cond_4

    move-object/from16 v4, v19

    .line 546
    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 544
    .local v6, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_4

    :cond_4
    nop

    :goto_4
    move/from16 v1, v20

    .end local v15    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    goto :goto_2

    .line 547
    .end local v20    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    :cond_5
    move/from16 v20, v1

    move-object/from16 v1, p1

    .line 548
    .end local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v12    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v20    # "$i$f$dumpCoroutinesInfoImpl":I
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapNotNullTo":I
    move-object v4, v9

    check-cast v4, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    nop

    .line 159
    .end local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNull":I
    nop

    .line 153
    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1":I
    const/4 v6, 0x1

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v3, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 164
    return-object v4

    .line 525
    .end local v20    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1":I
    .restart local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    :cond_7
    move/from16 v20, v1

    move-object/from16 v1, p1

    .end local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v20    # "$i$f$dumpCoroutinesInfoImpl":I
    const/4 v4, 0x0

    .line 154
    .local v4, "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$1":I
    :try_start_2
    const-string v6, "Debug probes are not installed"

    .end local v4    # "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    .end local v20    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local p1    # "create":Lkotlin/jvm/functions/Function2;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1":I
    .restart local v20    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local p1    # "create":Lkotlin/jvm/functions/Function2;
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v20    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    :catchall_1
    move-exception v0

    move/from16 v20, v1

    move-object/from16 v1, p1

    .end local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v20    # "$i$f$dumpCoroutinesInfoImpl":I
    :goto_6
    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_8

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private final dumpCoroutinesSynchronized(Ljava/io/PrintStream;)V
    .locals 18
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 205
    move-object/from16 v1, p1

    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 206
    .local v0, "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    :try_start_0
    sget-object v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 207
    const-string v7, "Coroutines dump "

    sget-object v8, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 208
    invoke-direct {v6}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getCapturedCoroutines()Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 209
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v6

    .line 210
    sget-object v7, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesSynchronized$1$2;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesSynchronized$1$2;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v7}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v6

    .line 211
    nop

    .local v6, "$this$sortedBy$iv":Lkotlin/sequences/Sequence;
    const/4 v7, 0x0

    .line 595
    .local v7, "$i$f$sortedBy":I
    new-instance v8, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesSynchronized$lambda-21$$inlined$sortedBy$1;

    invoke-direct {v8}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesSynchronized$lambda-21$$inlined$sortedBy$1;-><init>()V

    check-cast v8, Ljava/util/Comparator;

    invoke-static {v6, v8}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object v8

    .line 212
    .end local v6    # "$this$sortedBy$iv":Lkotlin/sequences/Sequence;
    .end local v7    # "$i$f$sortedBy":I
    move-object v6, v8

    .local v6, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v7, 0x0

    .line 596
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .local v10, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/4 v11, 0x0

    .line 213
    .local v11, "$i$a$-forEach-DebugProbesImpl$dumpCoroutinesSynchronized$1$4":I
    iget-object v12, v10, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    .line 214
    .local v12, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    invoke-virtual {v12}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->lastObservedStackTrace()Ljava/util/List;

    move-result-object v13

    .line 215
    .local v13, "observedStackTrace":Ljava/util/List;
    sget-object v14, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v12}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v12, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->lastObservedThread:Ljava/lang/Thread;

    invoke-direct {v14, v15, v4, v13}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enhanceStackTraceWithThreadDumpImpl(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 216
    .local v4, "enhancedStackTrace":Ljava/util/List;
    invoke-virtual {v12}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v0

    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    .local v16, "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    const-string v0, "RUNNING"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v4, v13, :cond_2

    .line 217
    invoke-virtual {v12}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v15, " (Last suspension stacktrace, not an actual stacktrace)"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 219
    :cond_2
    invoke-virtual {v12}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_3
    nop

    .line 220
    .local v0, "state":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    .end local v6    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .local v17, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const-string v6, "\n\nCoroutine "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v15, v10, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->delegate:Lkotlin/coroutines/Continuation;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ", state: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    const-string v6, "\n\tat "

    const-string v15, "Coroutine creation stacktrace"

    invoke-static {v15}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->artificialFrame(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v15

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v12}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getCreationStackTrace()Ljava/util/List;

    move-result-object v6

    invoke-direct {v14, v1, v6}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->printStackTrace(Ljava/io/PrintStream;Ljava/util/List;)V

    goto :goto_4

    .line 225
    :cond_3
    invoke-direct {v14, v1, v4}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->printStackTrace(Ljava/io/PrintStream;Ljava/util/List;)V

    .line 227
    :goto_4
    move/from16 v0, v16

    move-object/from16 v6, v17

    .end local v0    # "state":Ljava/lang/String;
    .end local v4    # "enhancedStackTrace":Ljava/util/List;
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v11    # "$i$a$-forEach-DebugProbesImpl$dumpCoroutinesSynchronized$1$4":I
    .end local v12    # "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    .end local v13    # "observedStackTrace":Ljava/util/List;
    goto/16 :goto_2

    .line 597
    .end local v16    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    .end local v17    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .local v0, "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    .restart local v6    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    :cond_4
    move/from16 v16, v0

    move-object/from16 v17, v6

    .line 228
    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    .end local v6    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v7    # "$i$f$forEach":I
    .restart local v16    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    nop

    .end local v16    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 228
    return-void

    .line 525
    .restart local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    :cond_6
    move/from16 v16, v0

    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    .restart local v16    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    const/4 v0, 0x0

    .line 206
    .local v0, "$i$a$-check-DebugProbesImpl$dumpCoroutinesSynchronized$1$1":I
    :try_start_1
    const-string v4, "Debug probes are not installed"

    .end local v0    # "$i$a$-check-DebugProbesImpl$dumpCoroutinesSynchronized$1$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local p1    # "out":Ljava/io/PrintStream;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .end local v16    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    .restart local p1    # "out":Ljava/io/PrintStream;
    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_7

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private final enhanceStackTraceWithThreadDumpImpl(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "coroutineTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 258
    const-string v0, "RUNNING"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 260
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    .line 525
    .local v0, "$this$enhanceStackTraceWithThreadDumpImpl_u24lambda_u2d23":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v1, 0x0

    .line 260
    .local v1, "$i$a$-runCatching-DebugProbesImpl$enhanceStackTraceWithThreadDumpImpl$actualTrace$1":I
    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .end local v0    # "$this$enhanceStackTraceWithThreadDumpImpl_u24lambda_u2d23":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v1    # "$i$a$-runCatching-DebugProbesImpl$enhanceStackTraceWithThreadDumpImpl$actualTrace$1":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, [Ljava/lang/StackTraceElement;

    if-nez v0, :cond_2

    .line 261
    return-object p3

    .line 279
    .local v0, "actualTrace":[Ljava/lang/StackTraceElement;
    :cond_2
    move-object v1, v0

    .local v1, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 600
    .local v2, "$i$f$indexOfFirst":I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v5, v3, :cond_5

    .line 601
    .local v5, "index$iv":I
    aget-object v8, v1, v5

    .local v8, "it":Ljava/lang/StackTraceElement;
    const/4 v9, 0x0

    .line 280
    .local v9, "$i$a$-indexOfFirst-DebugProbesImpl$enhanceStackTraceWithThreadDumpImpl$indexOfResumeWith$1":I
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 281
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "resumeWith"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 282
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ContinuationImpl.kt"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    move v10, v4

    .line 280
    :goto_2
    nop

    .end local v8    # "it":Ljava/lang/StackTraceElement;
    .end local v9    # "$i$a$-indexOfFirst-DebugProbesImpl$enhanceStackTraceWithThreadDumpImpl$indexOfResumeWith$1":I
    if-eqz v10, :cond_4

    .line 602
    goto :goto_3

    .line 600
    :cond_4
    nop

    .end local v5    # "index$iv":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 605
    :cond_5
    move v5, v6

    .line 279
    .end local v1    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$indexOfFirst":I
    :goto_3
    move v1, v5

    .line 285
    .local v1, "indexOfResumeWith":I
    nop

    .line 286
    nop

    .line 287
    nop

    .line 288
    nop

    .line 285
    invoke-direct {p0, v1, v0, p3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->findContinuationStartIndex(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .local v3, "continuationStartFrame":I
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 291
    .local v2, "delta":I
    if-ne v3, v6, :cond_6

    return-object p3

    .line 293
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    sub-int/2addr v5, v7

    sub-int/2addr v5, v2

    .line 294
    .local v5, "expectedSize":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v6, "result":Ljava/util/ArrayList;
    sub-int v8, v1, v2

    if-lez v8, :cond_8

    :cond_7
    move v9, v4

    .local v9, "index":I
    add-int/2addr v4, v7

    .line 296
    move-object v10, v6

    check-cast v10, Ljava/util/Collection;

    aget-object v11, v0, v9

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 295
    if-lt v4, v8, :cond_7

    .line 299
    .end local v9    # "index":I
    :cond_8
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_a

    :cond_9
    move v9, v4

    .restart local v9    # "index":I
    add-int/2addr v4, v7

    .line 300
    move-object v10, v6

    check-cast v10, Ljava/util/Collection;

    invoke-interface {p3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 299
    if-lt v4, v8, :cond_9

    .line 303
    .end local v9    # "index":I
    :cond_a
    move-object v4, v6

    check-cast v4, Ljava/util/List;

    return-object v4

    .line 258
    .end local v0    # "actualTrace":[Ljava/lang/StackTraceElement;
    .end local v1    # "indexOfResumeWith":I
    .end local v2    # "delta":I
    .end local v3    # "continuationStartFrame":I
    .end local v5    # "expectedSize":I
    .end local v6    # "result":Ljava/util/ArrayList;
    :cond_b
    :goto_4
    return-object p3
.end method

.method private final findContinuationStartIndex(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;
    .locals 7
    .param p1, "indexOfResumeWith"    # I
    .param p2, "actualTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "coroutineTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    move v3, v1

    .local v3, "it":I
    const/4 v4, 0x0

    .line 326
    .local v4, "$i$a$-repeat-DebugProbesImpl$findContinuationStartIndex$1":I
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v3

    invoke-direct {v5, v6, p2, p3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->findIndexOfFrame(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I

    move-result v5

    .line 327
    .local v5, "result":I
    if-eq v5, v2, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    nop

    .line 325
    .end local v3    # "it":I
    .end local v4    # "$i$a$-repeat-DebugProbesImpl$findContinuationStartIndex$1":I
    .end local v5    # "result":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final findIndexOfFrame(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I
    .locals 11
    .param p1, "frameIndex"    # I
    .param p2, "actualTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "coroutineTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)I"
        }
    .end annotation

    .line 337
    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 338
    return v1

    .line 340
    .local v0, "continuationFrame":Ljava/lang/StackTraceElement;
    :cond_0
    move-object v2, p3

    .local v2, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 606
    .local v3, "$i$f$indexOfFirst":I
    const/4 v4, 0x0

    .line 607
    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 608
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/StackTraceElement;

    .local v7, "it":Ljava/lang/StackTraceElement;
    const/4 v8, 0x0

    .line 341
    .local v8, "$i$a$-indexOfFirst-DebugProbesImpl$findIndexOfFrame$1":I
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 342
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 343
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 341
    :goto_1
    nop

    .end local v7    # "it":Ljava/lang/StackTraceElement;
    .end local v8    # "$i$a$-indexOfFirst-DebugProbesImpl$findIndexOfFrame$1":I
    if-eqz v9, :cond_2

    .line 609
    move v1, v4

    goto :goto_2

    .line 610
    :cond_2
    nop

    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    .line 607
    goto :goto_0

    .line 612
    :cond_3
    nop

    .line 340
    .end local v2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v3    # "$i$f$indexOfFirst":I
    .end local v4    # "index$iv":I
    :goto_2
    return v1
.end method

.method private final getCapturedCoroutines()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private final getDebugString(Lkotlinx/coroutines/Job;)Ljava/lang/String;
    .locals 1
    .param p1, "$this$debugString"    # Lkotlinx/coroutines/Job;

    .line 146
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->toDebugString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static synthetic getDebugString$annotations(Lkotlinx/coroutines/Job;)V
    .locals 0

    return-void
.end method

.method private final getDynamicAttach()Lkotlin/jvm/functions/Function1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 63
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    .local v0, "$this$getDynamicAttach_u24lambda_u2d0":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v1, 0x0

    .line 64
    .local v1, "$i$a$-runCatching-DebugProbesImpl$getDynamicAttach$1":I
    const-string v2, "kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 65
    .local v2, "clz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 66
    .local v3, "ctor":Ljava/lang/reflect/Constructor;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 63
    .end local v0    # "$this$getDynamicAttach_u24lambda_u2d0":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v1    # "$i$a$-runCatching-DebugProbesImpl$getDynamicAttach$1":I
    .end local v2    # "clz":Ljava/lang/Class;
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 66
    .restart local v0    # "$this$getDynamicAttach_u24lambda_u2d0":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v1    # "$i$a$-runCatching-DebugProbesImpl$getDynamicAttach$1":I
    .restart local v2    # "clz":Ljava/lang/Class;
    .restart local v3    # "ctor":Ljava/lang/reflect/Constructor;
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v0    # "$this$getDynamicAttach_u24lambda_u2d0":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v1    # "$i$a$-runCatching-DebugProbesImpl$getDynamicAttach$1":I
    .end local v2    # "clz":Ljava/lang/Class;
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;
    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z
    .locals 3
    .param p1, "$this$isFinished"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;)Z"
        }
    .end annotation

    .line 199
    iget-object v0, p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 200
    .local v0, "job":Lkotlinx/coroutines/Job;
    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 201
    :cond_2
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/4 v1, 0x1

    return v1
.end method

.method private final isInternalMethod(Ljava/lang/StackTraceElement;)Z
    .locals 5
    .param p1, "$this$isInternalMethod"    # Ljava/lang/StackTraceElement;

    .line 522
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kotlinx.coroutines"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final owner(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .locals 2
    .param p1, "$this$owner"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;"
        }
    .end annotation

    .line 396
    instance-of v0, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->owner(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private final owner(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .locals 2
    .param p1, "$this$owner"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            ")",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;"
        }
    .end annotation

    .line 399
    move-object v0, p1

    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final printStackTrace(Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "frames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 231
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 598
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/StackTraceElement;

    .local v4, "frame":Ljava/lang/StackTraceElement;
    const/4 v5, 0x0

    .line 232
    .local v5, "$i$a$-forEach-DebugProbesImpl$printStackTrace$1":I
    const-string v6, "\n\tat "

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 233
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "frame":Ljava/lang/StackTraceElement;
    .end local v5    # "$i$a$-forEach-DebugProbesImpl$printStackTrace$1":I
    goto :goto_0

    .line 599
    :cond_0
    nop

    .line 234
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final probeCoroutineCompleted(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V
    .locals 2
    .param p1, "owner"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;)V"
        }
    .end annotation

    .line 440
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getLastObservedFrame$kotlinx_coroutines_core()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->realCaller(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 446
    .local v0, "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_1
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-void
.end method

.method private final realCaller(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2
    .param p1, "$this$realCaller"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 386
    move-object v0, p1

    .line 387
    :cond_0
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 388
    .local v0, "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_1
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method private final sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 10
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 474
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    .line 475
    .local v1, "size":I
    move-object v2, v0

    .local v2, "$this$indexOfLast$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 621
    .local v3, "$i$f$indexOfLast":I
    array-length v4, v2

    const/4 v5, -0x1

    add-int/2addr v4, v5

    :goto_0
    if-ltz v4, :cond_1

    .line 622
    .local v4, "index$iv":I
    aget-object v6, v2, v4

    .local v6, "it":Ljava/lang/StackTraceElement;
    const/4 v7, 0x0

    .line 475
    .local v7, "$i$a$-indexOfLast-DebugProbesImpl$sanitizeStackTrace$probeIndex$1":I
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "kotlin.coroutines.jvm.internal.DebugProbesKt"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .end local v6    # "it":Ljava/lang/StackTraceElement;
    .end local v7    # "$i$a$-indexOfLast-DebugProbesImpl$sanitizeStackTrace$probeIndex$1":I
    if-eqz v6, :cond_0

    .line 623
    move v5, v4

    goto :goto_1

    .line 621
    :cond_0
    nop

    .end local v4    # "index$iv":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 626
    :cond_1
    nop

    .line 475
    .end local v2    # "$this$indexOfLast$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$indexOfLast":I
    :goto_1
    move v2, v5

    .line 477
    .local v2, "probeIndex":I
    sget-boolean v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTraces:Z

    const-string v4, "Coroutine creation stacktrace"

    if-nez v3, :cond_4

    .line 478
    sub-int v3, v1, v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_3

    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 479
    .local v8, "$i$a$-List-DebugProbesImpl$sanitizeStackTrace$1":I
    if-nez v7, :cond_2

    invoke-static {v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->artificialFrame(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v9

    goto :goto_3

    :cond_2
    add-int v9, v7, v2

    aget-object v9, v0, v9

    .line 478
    .end local v7    # "it":I
    .end local v8    # "$i$a$-List-DebugProbesImpl$sanitizeStackTrace$1":I
    :goto_3
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    check-cast v5, Ljava/util/List;

    return-object v5

    .line 491
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    sub-int v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v3, "result":Ljava/util/ArrayList;
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-static {v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->artificialFrame(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 493
    add-int/lit8 v4, v2, 0x1

    .line 494
    .local v4, "i":I
    :goto_4
    if-ge v4, v1, :cond_9

    .line 495
    aget-object v5, v0, v4

    invoke-direct {p0, v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInternalMethod(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 496
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    aget-object v6, v0, v4

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v5, v4, 0x1

    .line 499
    .local v5, "j":I
    :goto_5
    if-ge v5, v1, :cond_5

    aget-object v6, v0, v5

    invoke-direct {p0, v6}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInternalMethod(Ljava/lang/StackTraceElement;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 500
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 503
    :cond_5
    add-int/lit8 v6, v5, -0x1

    .line 504
    .local v6, "k":I
    :goto_6
    if-le v6, v4, :cond_6

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 505
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 507
    :cond_6
    if-le v6, v4, :cond_7

    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_7

    .line 510
    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    aget-object v8, v0, v6

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_7
    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    add-int/lit8 v8, v5, -0x1

    aget-object v8, v0, v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 513
    move v4, v5

    .end local v5    # "j":I
    .end local v6    # "k":I
    goto :goto_4

    .line 515
    :cond_8
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    aget-object v6, v0, v4

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 519
    :cond_9
    move-object v5, v3

    check-cast v5, Ljava/util/List;

    return-object v5
.end method

.method private final startWeakRefCleanerThread()V
    .locals 9

    .line 100
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Coroutines Debugger Cleaner"

    const/4 v5, 0x0

    const/16 v7, 0x15

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->weakRefCleanerThread:Ljava/lang/Thread;

    .line 103
    return-void
.end method

.method private final stopWeakRefCleanerThread()V
    .locals 1

    .line 106
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->weakRefCleanerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 107
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->weakRefCleanerThread:Ljava/lang/Thread;

    .line 108
    return-void
.end method

.method private final toStackTraceFrame(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    .locals 10
    .param p1, "$this$toStackTraceFrame"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Lkotlinx/coroutines/debug/internal/StackTraceFrame;"
        }
    .end annotation

    .line 425
    const/4 v0, 0x0

    .local v0, "initial$iv":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "$this$foldRight$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 613
    .local v2, "$i$f$foldRight":I
    move-object v3, v0

    .line 614
    .local v3, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 615
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 616
    .local v4, "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 617
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    .local v5, "frame":Ljava/lang/StackTraceElement;
    move-object v6, v3

    .local v6, "acc":Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    const/4 v7, 0x0

    .line 426
    .local v7, "$i$a$-foldRight-DebugProbesImpl$toStackTraceFrame$1":I
    new-instance v8, Lkotlinx/coroutines/debug/internal/StackTraceFrame;

    move-object v9, v6

    check-cast v9, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-direct {v8, v9, v5}, Lkotlinx/coroutines/debug/internal/StackTraceFrame;-><init>(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/StackTraceElement;)V

    .end local v5    # "frame":Ljava/lang/StackTraceElement;
    .end local v6    # "acc":Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    .end local v7    # "$i$a$-foldRight-DebugProbesImpl$toStackTraceFrame$1":I
    move-object v3, v8

    .line 616
    goto :goto_0

    .line 620
    .end local v4    # "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    nop

    .line 427
    .end local v0    # "initial$iv":Ljava/lang/Object;
    .end local v1    # "$this$foldRight$iv":Ljava/util/List;
    .end local v2    # "$i$f$foldRight":I
    .end local v3    # "accumulator$iv":Ljava/lang/Object;
    return-object v3
.end method

.method private final updateRunningState(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V
    .locals 8
    .param p1, "frame"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .param p2, "state"    # Ljava/lang/String;

    .line 366
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    const/4 v1, 0x0

    .line 367
    .local v1, "$i$a$-read-DebugProbesImpl$updateRunningState$1":I
    :try_start_0
    sget-object v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .end local v1    # "$i$a$-read-DebugProbesImpl$updateRunningState$1":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    .restart local v1    # "$i$a$-read-DebugProbesImpl$updateRunningState$1":I
    :cond_0
    const/4 v3, 0x0

    .line 370
    .local v3, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    :try_start_1
    sget-object v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v4, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    .line 371
    .local v5, "cached":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    if-eqz v5, :cond_1

    .line 372
    move-object v3, v5

    goto :goto_3

    .line 374
    :cond_1
    invoke-direct {v2, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->owner(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    move-object v6, v7

    goto :goto_0

    :cond_2
    iget-object v6, v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v6, :cond_3

    .end local v1    # "$i$a$-read-DebugProbesImpl$updateRunningState$1":I
    .end local v3    # "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    .end local v5    # "cached":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    .restart local v1    # "$i$a$-read-DebugProbesImpl$updateRunningState$1":I
    .restart local v3    # "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    .restart local v5    # "cached":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    :cond_3
    move-object v3, v6

    .line 376
    :try_start_2
    invoke-virtual {v3}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getLastObservedFrame$kotlinx_coroutines_core()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v6

    if-nez v6, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    invoke-direct {v2, v6}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->realCaller(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v7

    goto :goto_1

    :goto_2
    move-object v6, v7

    .line 377
    .local v6, "realCaller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    if-eqz v6, :cond_5

    invoke-virtual {v4, v6}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v6    # "realCaller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_5
    :goto_3
    move-object v6, p1

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-virtual {v3, p2, v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->updateState$kotlinx_coroutines_core(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 382
    invoke-direct {v2, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->realCaller(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_6

    .end local v1    # "$i$a$-read-DebugProbesImpl$updateRunningState$1":I
    .end local v3    # "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    .end local v5    # "cached":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    .line 383
    .restart local v1    # "$i$a$-read-DebugProbesImpl$updateRunningState$1":I
    .local v2, "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .restart local v3    # "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    .restart local v5    # "cached":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    :cond_6
    :try_start_3
    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    nop

    .end local v1    # "$i$a$-read-DebugProbesImpl$updateRunningState$1":I
    .end local v2    # "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .end local v3    # "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    .end local v5    # "cached":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 384
    return-void

    .line 366
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method private final updateState(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V
    .locals 4
    .param p1, "frame"    # Lkotlin/coroutines/Continuation;
    .param p2, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    const-string v0, "RUNNING"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lkotlin/KotlinVersion;->isAtLeast(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    instance-of v0, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 356
    .local v0, "stackFrame":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_2
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->updateRunningState(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V

    .line 357
    return-void

    .line 361
    .end local v0    # "stackFrame":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->owner(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 362
    .local v0, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->updateState(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method private final updateState(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .param p2, "frame"    # Lkotlin/coroutines/Continuation;
    .param p3, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;",
            "Lkotlin/coroutines/Continuation<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 391
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    const/4 v1, 0x0

    .line 392
    .local v1, "$i$a$-read-DebugProbesImpl$updateState$1":I
    :try_start_0
    sget-object v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .end local v1    # "$i$a$-read-DebugProbesImpl$updateState$1":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    .line 393
    .restart local v1    # "$i$a$-read-DebugProbesImpl$updateState$1":I
    :cond_0
    :try_start_1
    iget-object v2, p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-virtual {v2, p3, p2}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->updateState$kotlinx_coroutines_core(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 394
    nop

    .end local v1    # "$i$a$-read-DebugProbesImpl$updateState$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 394
    return-void

    .line 391
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public final dumpCoroutines(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 179
    monitor-enter p1

    const/4 v0, 0x0

    .line 187
    .local v0, "$i$a$-synchronized-DebugProbesImpl$dumpCoroutines$1":I
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dumpCoroutinesSynchronized(Ljava/io/PrintStream;)V

    .line 188
    nop

    .end local v0    # "$i$a$-synchronized-DebugProbesImpl$dumpCoroutines$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p1

    .line 188
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final dumpCoroutinesInfo()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;",
            ">;"
        }
    .end annotation

    .line 170
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v2, 0x0

    .line 549
    .local v2, "$i$f$dumpCoroutinesInfoImpl":I
    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$getCoroutineStateLock$p()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 550
    .local v0, "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    :try_start_0
    sget-object v7, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v7}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 552
    invoke-static {v7}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$getCapturedCoroutines(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 554
    nop

    .local v7, "$this$sortedBy$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 555
    .local v8, "$i$f$sortedBy":I
    new-instance v9, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$lambda-14$$inlined$sortedBy$1;

    invoke-direct {v9}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$lambda-14$$inlined$sortedBy$1;-><init>()V

    check-cast v9, Ljava/util/Comparator;

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .end local v7    # "$this$sortedBy$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$sortedBy":I
    check-cast v9, Ljava/lang/Iterable;

    .line 556
    move-object v7, v9

    .local v7, "$this$mapNotNull$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 557
    .local v8, "$i$f$mapNotNull":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$mapNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 565
    .local v11, "$i$f$mapNotNullTo":I
    move-object v12, v10

    .local v12, "$this$forEach$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 566
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "element$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 565
    .local v17, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv$iv":I
    move-object/from16 v18, v16

    check-cast v18, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-object/from16 v19, v18

    .local v19, "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/16 v18, 0x0

    .line 567
    .local v18, "$i$a$-mapNotNull-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$iv":I
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    move/from16 v20, v0

    move-object/from16 v0, v19

    .end local v19    # "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v0, "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v20, "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    invoke-static {v5, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z

    move-result v5

    const/16 v19, 0x0

    if-eqz v5, :cond_2

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    goto :goto_3

    .line 568
    :cond_2
    iget-object v5, v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-virtual {v5}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    if-nez v5, :cond_3

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    goto :goto_3

    .line 551
    .local v5, "context$iv":Lkotlin/coroutines/CoroutineContext;
    :cond_3
    const/16 v19, 0x0

    .line 568
    .local v19, "$i$a$-let-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$1$iv":I
    move-object/from16 v21, v0

    .local v21, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    move-object/from16 v22, v5

    .local v22, "context":Lkotlin/coroutines/CoroutineContext;
    const/16 v23, 0x0

    .line 170
    .local v23, "$i$a$-dumpCoroutinesInfoImpl-DebugProbesImpl$dumpCoroutinesInfo$1":I
    move-object/from16 v24, v0

    .end local v0    # "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v24, "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v25, v1

    move-object/from16 v1, v21

    move/from16 v21, v2

    .end local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    .local v1, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v21, "$i$f$dumpCoroutinesInfoImpl":I
    .local v25, "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    :try_start_1
    iget-object v2, v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    move-object/from16 v26, v1

    move-object/from16 v1, v22

    .end local v22    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v1, "context":Lkotlin/coroutines/CoroutineContext;
    .local v26, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    invoke-direct {v0, v2, v1}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;-><init>(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/CoroutineContext;)V

    .line 568
    .end local v1    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v5    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v19    # "$i$a$-let-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$1$iv":I
    .end local v23    # "$i$a$-dumpCoroutinesInfoImpl-DebugProbesImpl$dumpCoroutinesInfo$1":I
    .end local v26    # "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    move-object/from16 v19, v0

    .line 567
    :goto_3
    nop

    .end local v18    # "$i$a$-mapNotNull-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$iv":I
    .end local v24    # "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    .line 551
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 565
    .local v1, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv$iv":I
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv$iv":I
    goto :goto_4

    :cond_4
    nop

    :goto_4
    move/from16 v0, v20

    move/from16 v2, v21

    move-object/from16 v1, v25

    .end local v15    # "element$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv$iv":I
    goto :goto_2

    .line 569
    .end local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .end local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .local v0, "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .local v1, "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    :cond_5
    move/from16 v20, v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    .line 570
    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .end local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v12    # "$this$forEach$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .restart local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    nop

    .end local v9    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapNotNullTo":I
    move-object v0, v9

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    nop

    .line 556
    .end local v7    # "$this$mapNotNull$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNull":I
    nop

    .line 549
    .end local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 571
    nop

    .line 170
    .end local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    return-object v0

    .line 551
    .restart local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    :cond_7
    move/from16 v20, v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .end local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .restart local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v0, 0x0

    .line 550
    .local v0, "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$1$iv":I
    :try_start_2
    const-string v1, "Debug probes are not installed"

    .end local v0    # "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$1$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    .end local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .restart local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    :catchall_1
    move-exception v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    .end local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_8

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public final dumpDebuggerInfo()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/debug/internal/DebuggerInfo;",
            ">;"
        }
    .end annotation

    .line 177
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v2, 0x0

    .line 572
    .local v2, "$i$f$dumpCoroutinesInfoImpl":I
    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$getCoroutineStateLock$p()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 573
    .local v0, "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    :try_start_0
    sget-object v7, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v7}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 575
    invoke-static {v7}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$getCapturedCoroutines(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 577
    nop

    .local v7, "$this$sortedBy$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 578
    .local v8, "$i$f$sortedBy":I
    new-instance v9, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$lambda-14$$inlined$sortedBy$1;

    invoke-direct {v9}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$lambda-14$$inlined$sortedBy$1;-><init>()V

    check-cast v9, Ljava/util/Comparator;

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .end local v7    # "$this$sortedBy$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$sortedBy":I
    check-cast v9, Ljava/lang/Iterable;

    .line 579
    move-object v7, v9

    .local v7, "$this$mapNotNull$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 580
    .local v8, "$i$f$mapNotNull":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$mapNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 588
    .local v11, "$i$f$mapNotNullTo":I
    move-object v12, v10

    .local v12, "$this$forEach$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 589
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "element$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 588
    .local v17, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv$iv":I
    move-object/from16 v18, v16

    check-cast v18, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-object/from16 v19, v18

    .local v19, "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/16 v18, 0x0

    .line 590
    .local v18, "$i$a$-mapNotNull-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$iv":I
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    move/from16 v20, v0

    move-object/from16 v0, v19

    .end local v19    # "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v0, "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v20, "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    invoke-static {v5, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z

    move-result v5

    const/16 v19, 0x0

    if-eqz v5, :cond_2

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    goto :goto_3

    .line 591
    :cond_2
    iget-object v5, v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-virtual {v5}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    if-nez v5, :cond_3

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    goto :goto_3

    .line 574
    .local v5, "context$iv":Lkotlin/coroutines/CoroutineContext;
    :cond_3
    const/16 v19, 0x0

    .line 591
    .local v19, "$i$a$-let-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$1$iv":I
    move-object/from16 v21, v0

    .local v21, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    move-object/from16 v22, v5

    .local v22, "context":Lkotlin/coroutines/CoroutineContext;
    const/16 v23, 0x0

    .line 177
    .local v23, "$i$a$-dumpCoroutinesInfoImpl-DebugProbesImpl$dumpDebuggerInfo$1":I
    move-object/from16 v24, v0

    .end local v0    # "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v24, "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    new-instance v0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v25, v1

    move-object/from16 v1, v21

    move/from16 v21, v2

    .end local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    .local v1, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .local v21, "$i$f$dumpCoroutinesInfoImpl":I
    .local v25, "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    :try_start_1
    iget-object v2, v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    move-object/from16 v26, v1

    move-object/from16 v1, v22

    .end local v22    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v1, "context":Lkotlin/coroutines/CoroutineContext;
    .local v26, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    invoke-direct {v0, v2, v1}, Lkotlinx/coroutines/debug/internal/DebuggerInfo;-><init>(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/CoroutineContext;)V

    .line 591
    .end local v1    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v5    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v19    # "$i$a$-let-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$1$iv":I
    .end local v23    # "$i$a$-dumpCoroutinesInfoImpl-DebugProbesImpl$dumpDebuggerInfo$1":I
    .end local v26    # "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    move-object/from16 v19, v0

    .line 590
    :goto_3
    nop

    .end local v18    # "$i$a$-mapNotNull-DebugProbesImpl$dumpCoroutinesInfoImpl$1$3$iv":I
    .end local v24    # "owner$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    .line 574
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 588
    .local v1, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv$iv":I
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv$iv":I
    goto :goto_4

    :cond_4
    nop

    :goto_4
    move/from16 v0, v20

    move/from16 v2, v21

    move-object/from16 v1, v25

    .end local v15    # "element$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv$iv":I
    goto :goto_2

    .line 592
    .end local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .end local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .local v0, "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .local v1, "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    :cond_5
    move/from16 v20, v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    .line 593
    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .end local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v12    # "$this$forEach$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .restart local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    nop

    .end local v9    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapNotNullTo":I
    move-object v0, v9

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    nop

    .line 579
    .end local v7    # "$this$mapNotNull$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNull":I
    nop

    .line 572
    .end local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 594
    nop

    .line 177
    .end local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    return-object v0

    .line 574
    .restart local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    :cond_7
    move/from16 v20, v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    .end local v0    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .end local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .restart local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v0, 0x0

    .line 573
    .local v0, "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$1$iv":I
    :try_start_2
    const-string v1, "Debug probes are not installed"

    .end local v0    # "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$1$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    .end local v20    # "$i$a$-write-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    .restart local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .end local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    :catchall_1
    move-exception v0

    move-object/from16 v25, v1

    move/from16 v21, v2

    .end local v1    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v2    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v21    # "$i$f$dumpCoroutinesInfoImpl":I
    .restart local v25    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_8

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public final enhanceStackTraceWithThreadDump(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "info"    # Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;
    .param p2, "coroutineTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getLastObservedThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enhanceStackTraceWithThreadDumpImpl(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEnableCreationStackTraces()Z
    .locals 1

    .line 54
    sget-boolean v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enableCreationStackTraces:Z

    return v0
.end method

.method public final getSanitizeStackTraces()Z
    .locals 1

    .line 53
    sget-boolean v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTraces:Z

    return v0
.end method

.method public final hierarchyToString(Lkotlinx/coroutines/Job;)Ljava/lang/String;
    .locals 16
    .param p1, "job"    # Lkotlinx/coroutines/Job;

    .line 110
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$a$-write-DebugProbesImpl$hierarchyToString$1":I
    :try_start_0
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 112
    invoke-direct {v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getCapturedCoroutines()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 113
    nop

    .local v5, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 526
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 527
    .local v9, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .local v12, "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/4 v13, 0x0

    .line 113
    .local v13, "$i$a$-filter-DebugProbesImpl$hierarchyToString$1$jobToStack$1":I
    iget-object v14, v12, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {v14}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v14

    sget-object v15, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v15, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v14, v15}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .end local v12    # "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v13    # "$i$a$-filter-DebugProbesImpl$hierarchyToString$1$jobToStack$1":I
    :goto_3
    if-eqz v14, :cond_2

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 528
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterTo":I
    check-cast v7, Ljava/util/List;

    .line 526
    nop

    .end local v5    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filter":I
    check-cast v7, Ljava/lang/Iterable;

    .line 114
    move-object v5, v7

    .local v5, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 529
    .local v6, "$i$f$associateBy":I
    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    .line 530
    .local v7, "capacity$iv":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    .local v8, "destination$iv$iv":Ljava/util/Map;
    move-object v9, v5

    .local v9, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 531
    .local v10, "$i$f$associateByTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 532
    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .local v13, "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/4 v14, 0x0

    .line 114
    .local v14, "$i$a$-associateBy-DebugProbesImpl$hierarchyToString$1$jobToStack$2":I
    iget-object v15, v13, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {v15}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v15

    invoke-static {v15}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v15

    .end local v13    # "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v14    # "$i$a$-associateBy-DebugProbesImpl$hierarchyToString$1$jobToStack$2":I
    move-object v13, v12

    check-cast v13, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .restart local v13    # "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/4 v14, 0x0

    .local v14, "$i$a$-associateBy-DebugProbesImpl$hierarchyToString$1$jobToStack$3":I
    iget-object v3, v13, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    .end local v13    # "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v14    # "$i$a$-associateBy-DebugProbesImpl$hierarchyToString$1$jobToStack$3":I
    invoke-interface {v8, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    nop

    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_4

    .line 534
    :cond_5
    nop

    .line 530
    .end local v8    # "destination$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$associateByTo":I
    nop

    .line 114
    .end local v5    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$associateBy":I
    .end local v7    # "capacity$iv":I
    nop

    .line 112
    move-object v3, v8

    .line 115
    .local v3, "jobToStack":Ljava/util/Map;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v5

    .local v6, "$this$hierarchyToString_u24lambda_u2d9_u24lambda_u2d8":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 116
    .local v7, "$i$a$-buildString-DebugProbesImpl$hierarchyToString$1$2":I
    sget-object v8, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    const-string v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p1

    :try_start_1
    invoke-direct {v8, v10, v3, v6, v9}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->build(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 117
    nop

    .line 115
    .end local v6    # "$this$hierarchyToString_u24lambda_u2d9_u24lambda_u2d8":Ljava/lang/StringBuilder;
    .end local v7    # "$i$a$-buildString-DebugProbesImpl$hierarchyToString$1$2":I
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    .end local v0    # "$i$a$-write-DebugProbesImpl$hierarchyToString$1":I
    .end local v3    # "jobToStack":Ljava/util/Map;
    :goto_5
    if-ge v3, v2, :cond_6

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v5

    .line 525
    .restart local v0    # "$i$a$-write-DebugProbesImpl$hierarchyToString$1":I
    :cond_7
    move-object/from16 v10, p1

    const/4 v3, 0x0

    .line 111
    .local v3, "$i$a$-check-DebugProbesImpl$hierarchyToString$1$1":I
    :try_start_2
    const-string v5, "Debug probes are not installed"

    .end local v3    # "$i$a$-check-DebugProbesImpl$hierarchyToString$1$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local p1    # "job":Lkotlinx/coroutines/Job;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v0    # "$i$a$-write-DebugProbesImpl$hierarchyToString$1":I
    .restart local p1    # "job":Lkotlinx/coroutines/Job;
    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_8

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public final install()V
    .locals 8

    .line 82
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v4, 0x0

    .line 83
    .local v4, "$i$a$-write-DebugProbesImpl$install$1":I
    :try_start_0
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    sget v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    sput v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations:I

    sget v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v6, v7, :cond_3

    .end local v4    # "$i$a$-write-DebugProbesImpl$install$1":I
    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 84
    .restart local v4    # "$i$a$-write-DebugProbesImpl$install$1":I
    :cond_3
    :try_start_1
    invoke-direct {v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->startWeakRefCleanerThread()V

    .line 85
    sget-object v5, Lkotlinx/coroutines/debug/AgentPremain;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

    invoke-virtual {v5}, Lkotlinx/coroutines/debug/AgentPremain;->isInstalledStatically()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_5

    .end local v4    # "$i$a$-write-DebugProbesImpl$install$1":I
    :goto_3
    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 86
    .restart local v4    # "$i$a$-write-DebugProbesImpl$install$1":I
    :cond_5
    :try_start_2
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dynamicAttach:Lkotlin/jvm/functions/Function1;

    if-nez v5, :cond_6

    :goto_4
    goto :goto_5

    :cond_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 87
    :goto_5
    nop

    .end local v4    # "$i$a$-write-DebugProbesImpl$install$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    nop

    :goto_6
    if-ge v3, v2, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 87
    return-void

    .line 82
    :catchall_0
    move-exception v4

    :goto_7
    if-ge v3, v2, :cond_8

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method

.method public final isInstalled$kotlinx_coroutines_core()Z
    .locals 1

    .line 40
    sget v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final probeCoroutineCreated$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1, "completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->owner(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-result-object v0

    .line 409
    .local v0, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    if-eqz v0, :cond_1

    return-object p1

    .line 416
    :cond_1
    sget-boolean v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enableCreationStackTraces:Z

    if-eqz v1, :cond_2

    .line 417
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->toStackTraceFrame(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/StackTraceFrame;

    move-result-object v1

    goto :goto_0

    .line 419
    :cond_2
    const/4 v1, 0x0

    check-cast v1, Lkotlinx/coroutines/debug/internal/StackTraceFrame;

    .line 416
    :goto_0
    nop

    .line 421
    .local v1, "frame":Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->createOwner(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/StackTraceFrame;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    return-object v2
.end method

.method public final probeCoroutineResumed$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "frame"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)V"
        }
    .end annotation

    .line 347
    const-string v0, "RUNNING"

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->updateState(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    return-void
.end method

.method public final probeCoroutineSuspended$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "frame"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)V"
        }
    .end annotation

    .line 349
    const-string v0, "SUSPENDED"

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->updateState(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    return-void
.end method

.method public final setEnableCreationStackTraces(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 54
    sput-boolean p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enableCreationStackTraces:Z

    return-void
.end method

.method public final setSanitizeStackTraces(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 53
    sput-boolean p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTraces:Z

    return-void
.end method

.method public final uninstall()V
    .locals 7

    .line 89
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->coroutineStateLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v4, 0x0

    .line 90
    .local v4, "$i$a$-write-DebugProbesImpl$uninstall$1":I
    :try_start_0
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 91
    sget v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations:I

    sget v6, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .end local v4    # "$i$a$-write-DebugProbesImpl$uninstall$1":I
    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 92
    .restart local v4    # "$i$a$-write-DebugProbesImpl$uninstall$1":I
    :cond_3
    :try_start_1
    invoke-direct {v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->stopWeakRefCleanerThread()V

    .line 93
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v5}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->clear()V

    .line 94
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v5}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->clear()V

    .line 95
    sget-object v5, Lkotlinx/coroutines/debug/AgentPremain;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

    invoke-virtual {v5}, Lkotlinx/coroutines/debug/AgentPremain;->isInstalledStatically()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_5

    .end local v4    # "$i$a$-write-DebugProbesImpl$uninstall$1":I
    :goto_3
    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 96
    .restart local v4    # "$i$a$-write-DebugProbesImpl$uninstall$1":I
    :cond_5
    :try_start_2
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dynamicAttach:Lkotlin/jvm/functions/Function1;

    if-nez v5, :cond_6

    :goto_4
    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 97
    :goto_5
    nop

    .end local v4    # "$i$a$-write-DebugProbesImpl$uninstall$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    nop

    :goto_6
    if-ge v3, v2, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 97
    return-void

    .line 525
    .restart local v4    # "$i$a$-write-DebugProbesImpl$uninstall$1":I
    :cond_8
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$a$-check-DebugProbesImpl$uninstall$1$1":I
    :try_start_3
    const-string v6, "Agent was not installed"

    .end local v5    # "$i$a$-check-DebugProbesImpl$uninstall$1$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .end local v4    # "$i$a$-write-DebugProbesImpl$uninstall$1":I
    :catchall_0
    move-exception v4

    :goto_7
    if-ge v3, v2, :cond_9

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method
