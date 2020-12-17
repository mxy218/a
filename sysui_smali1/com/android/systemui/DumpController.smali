.class public final Lcom/android/systemui/DumpController;
.super Ljava/lang/Object;
.source "DumpController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DumpController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDumpController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DumpController.kt\ncom/android/systemui/DumpController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1482#2,3:88\n1574#2,2:91\n*E\n*S KotlinDebug\n*F\n+ 1 DumpController.kt\ncom/android/systemui/DumpController\n*L\n54#1,3:88\n82#1,2:91\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u0008\u0007¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0001J/\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010\u0015J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0001R\u001c\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00050\u00048\u0002X\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t¨\u0006\u0018"
    }
    d2 = {
        "Lcom/android/systemui/DumpController;",
        "Lcom/android/systemui/Dumpable;",
        "()V",
        "listeners",
        "",
        "Ljava/lang/ref/WeakReference;",
        "numListeners",
        "",
        "getNumListeners",
        "()I",
        "addListener",
        "",
        "listener",
        "dump",
        "fd",
        "Ljava/io/FileDescriptor;",
        "pw",
        "Ljava/io/PrintWriter;",
        "args",
        "",
        "",
        "(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V",
        "removeListener",
        "Companion",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/DumpController$Companion;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "listeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/Dumpable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/DumpController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/DumpController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/DumpController;->Companion:Lcom/android/systemui/DumpController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DumpController;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/Dumpable;)V
    .registers 6

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The listener to be added cannot be null"

    .line 52
    invoke-static {p1, v2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/DumpController;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 55
    :try_start_10
    iget-object v2, p0, Lcom/android/systemui/DumpController;->listeners:Ljava/util/List;

    .line 88
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_3a

    .line 89
    :cond_1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/Dumpable;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    :cond_3a
    :goto_3a
    if-eqz v0, :cond_3d

    goto :goto_47

    .line 60
    :cond_3d
    iget-object p0, p0, Lcom/android/systemui/DumpController;->listeners:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_49
    .catchall {:try_start_10 .. :try_end_49} :catchall_4b

    .line 54
    monitor-exit v1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DumpController state:"

    .line 81
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/DumpController;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 83
    :try_start_d
    iget-object p0, p0, Lcom/android/systemui/DumpController;->listeners:Ljava/util/List;

    .line 91
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 83
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_13

    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_13

    .line 84
    :cond_2b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2f

    .line 82
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final removeListener(Lcom/android/systemui/Dumpable;)V
    .registers 5

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/DumpController;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 73
    :try_start_8
    iget-object v1, p0, Lcom/android/systemui/DumpController;->listeners:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/DumpController$removeListener$$inlined$synchronized$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/DumpController$removeListener$$inlined$synchronized$lambda$1;-><init>(Lcom/android/systemui/DumpController;Lcom/android/systemui/Dumpable;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    .line 72
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method
