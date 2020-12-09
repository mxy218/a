.class Lcom/android/server/WatchdogDiagnostics;
.super Ljava/lang/Object;
.source "WatchdogDiagnostics.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diagnoseCheckers(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const-string v2, "Watchdog"

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 74
    const/4 v1, 0x0

    move v3, v1

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 75
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v4}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v4

    .line 76
    invoke-static {v4, v0}, Lcom/android/server/WatchdogDiagnostics;->printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 77
    goto :goto_61

    .line 81
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " stack trace:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 83
    array-length v5, v4

    move v6, v1

    :goto_46
    if-ge v6, v5, :cond_61

    aget-object v7, v4, v6

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 74
    :cond_61
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 87
    :cond_64
    return-void
.end method

.method private static getBlockedOnString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 37
    const-string p0, "- waiting to lock <0x%08x> (a %s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLockedString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 42
    const-string p0, "- locked <0x%08x> (a %s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-static {p0}, Ldalvik/system/VMStack;->getAnnotatedThreadStackTrace(Ljava/lang/Thread;)[Ldalvik/system/AnnotatedStackTraceElement;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 54
    return v1

    .line 56
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " annotated stack trace:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    array-length p0, v0

    move v2, v1

    :goto_22
    if-ge v2, p0, :cond_8c

    aget-object v3, v0, v2

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getBlockedOn()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "    "

    if-eqz v4, :cond_60

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getBlockedOn()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/WatchdogDiagnostics;->getBlockedOnString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    :cond_60
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getHeldLocks()[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_89

    .line 63
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getHeldLocks()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v6, v1

    :goto_6c
    if-ge v6, v4, :cond_89

    aget-object v7, v3, v6

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/WatchdogDiagnostics;->getLockedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 57
    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 68
    :cond_8c
    const/4 p0, 0x1

    return p0
.end method
