.class final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V
    .registers 3

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 257
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {p1}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "DockObserver"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 258
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 260
    :try_start_13
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p1}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_11d

    .line 261
    if-eqz p3, :cond_b4

    :try_start_1c
    array-length v2, p3

    if-eqz v2, :cond_b4

    const-string v2, "-a"

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto/16 :goto_b4

    .line 269
    :cond_2c
    array-length v2, p3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v4, :cond_85

    const-string/jumbo v2, "set"

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 270
    aget-object v2, p3, v5

    .line 271
    const/4 v3, 0x2

    aget-object p3, p3, v3
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_11a

    .line 273
    :try_start_41
    const-string/jumbo v3, "state"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 274
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2, v5}, Lcom/android/server/DockObserver;->access$502(Lcom/android/server/DockObserver;Z)Z

    .line 275
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/DockObserver;->access$900(Lcom/android/server/DockObserver;I)V

    goto :goto_6d

    .line 277
    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown set option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_6d} :catch_6e
    .catchall {:try_start_41 .. :try_end_6d} :catchall_11a

    .line 281
    :goto_6d
    goto :goto_83

    .line 279
    :catch_6e
    move-exception v2

    .line 280
    :try_start_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    :goto_83
    goto/16 :goto_114

    :cond_85
    array-length v2, p3

    if-ne v2, v5, :cond_a4

    const-string/jumbo v2, "reset"

    aget-object p3, p3, v3

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a4

    .line 283
    iget-object p2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p2, v3}, Lcom/android/server/DockObserver;->access$502(Lcom/android/server/DockObserver;Z)Z

    .line 284
    iget-object p2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    iget-object p3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p3}, Lcom/android/server/DockObserver;->access$800(Lcom/android/server/DockObserver;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/server/DockObserver;->access$900(Lcom/android/server/DockObserver;I)V

    goto :goto_114

    .line 286
    :cond_a4
    const-string p3, "Dump current dock state, or:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    const-string p3, "  set state <value>"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const-string p3, "  reset"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_114

    .line 262
    :cond_b4
    :goto_b4
    const-string p3, "Current Dock Observer Service state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    iget-object p3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p3}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Z

    move-result p3

    if-eqz p3, :cond_c6

    .line 264
    const-string p3, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    :cond_c6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  reported state: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2}, Lcom/android/server/DockObserver;->access$600(Lcom/android/server/DockObserver;)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  previous state: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2}, Lcom/android/server/DockObserver;->access$700(Lcom/android/server/DockObserver;)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  actual state: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2}, Lcom/android/server/DockObserver;->access$800(Lcom/android/server/DockObserver;)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    :goto_114
    monitor-exit p1
    :try_end_115
    .catchall {:try_start_6f .. :try_end_115} :catchall_11a

    .line 292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    nop

    .line 294
    return-void

    .line 290
    :catchall_11a
    move-exception p2

    :try_start_11b
    monitor-exit p1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    :try_start_11c
    throw p2
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11d

    .line 292
    :catchall_11d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
