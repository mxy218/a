.class final Lcom/android/server/PinnerService$BinderService;
.super Landroid/os/Binder;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2

    .line 893
    iput-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V
    .registers 3

    .line 893
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 896
    iget-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p1}, Lcom/android/server/PinnerService;->access$700(Lcom/android/server/PinnerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "PinnerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 897
    :cond_f
    iget-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    monitor-enter p1

    .line 898
    const-wide/16 v0, 0x0

    .line 899
    :try_start_14
    iget-object p3, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p3}, Lcom/android/server/PinnerService;->access$800(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_45

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 900
    const-string v6, "%s %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    aput-object v7, v3, v5

    iget v5, v2, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, v6, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 901
    iget v2, v2, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 902
    goto :goto_1e

    .line 903
    :cond_45
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 904
    iget-object p3, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p3}, Lcom/android/server/PinnerService;->access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_56
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 905
    iget-object v6, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v6}, Lcom/android/server/PinnerService;->access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PinnerService$PinnedApp;

    .line 906
    iget-object v7, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v7, v2}, Lcom/android/server/PinnerService;->access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    const-string v7, " uid="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 908
    const-string v7, " active="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v6, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 909
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 910
    iget-object v6, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v6}, Lcom/android/server/PinnerService;->access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedApp;

    iget-object v2, v2, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PinnerService$PinnedFile;

    .line 911
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "%s %s\n"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, v6, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    aput-object v9, v8, v5

    iget v9, v6, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 912
    iget v6, v6, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 913
    goto :goto_ac

    .line 914
    :cond_d5
    goto :goto_56

    .line 915
    :cond_d6
    const-string p3, "Total size: %s\n"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p2, p3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 916
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 917
    iget-object p3, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p3}, Lcom/android/server/PinnerService;->access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_127

    .line 918
    const-string p3, "Pending repin: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    iget-object p3, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p3}, Lcom/android/server/PinnerService;->access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_105
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_124

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 920
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v1, v0}, Lcom/android/server/PinnerService;->access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 921
    goto :goto_105

    .line 922
    :cond_124
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 924
    :cond_127
    monitor-exit p1

    .line 925
    return-void

    .line 924
    :catchall_129
    move-exception p2

    monitor-exit p1
    :try_end_12b
    .catchall {:try_start_14 .. :try_end_12b} :catchall_129

    throw p2
.end method
