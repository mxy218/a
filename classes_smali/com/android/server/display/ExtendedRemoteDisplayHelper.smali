.class Lcom/android/server/display/ExtendedRemoteDisplayHelper;
.super Ljava/lang/Object;
.source "ExtendedRemoteDisplayHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExtendedRemoteDisplayHelper"

.field private static sExtRemoteDisplayClass:Ljava/lang/Class;

.field private static sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

.field private static sExtRemoteDisplayListen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 62
    const-string v0, "ExtendedRemoteDisplayHelper"

    :try_start_2
    const-string v1, "com.qualcomm.wfd.ExtendedRemoteDisplay"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    .line 65
    goto :goto_11

    .line 63
    :catchall_b
    move-exception v1

    .line 64
    const-string v1, "ExtendedRemoteDisplay: not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_11
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v1, :cond_55

    .line 69
    const-string v1, "ExtendedRemoteDisplay: is available, finding methods"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_1c
    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-class v4, Landroid/media/RemoteDisplay$Listener;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Handler;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v3

    .line 73
    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string v4, "listen"

    .line 74
    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_3c

    .line 77
    goto :goto_42

    .line 75
    :catchall_3c
    move-exception v1

    .line 76
    const-string v1, "ExtendedRemoteDisplay.listen: not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_42
    :try_start_42
    new-array v1, v2, [Ljava/lang/Class;

    .line 81
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string v3, "dispose"

    .line 82
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_4f

    .line 85
    goto :goto_55

    .line 83
    :catchall_4f
    move-exception v1

    .line 84
    const-string v1, "ExtendedRemoteDisplay.dispose: not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_55
    :goto_55
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose(Ljava/lang/Object;)V
    .registers 4

    .line 129
    const-string v0, "ExtendedRemoteDisplayHelper"

    :try_start_2
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_a} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_a} :catch_b

    .line 142
    goto :goto_11

    .line 140
    :catch_b
    move-exception p0

    .line 141
    const-string v1, "ExtendedRemoteDisplay.dispose: IllegalAccessException"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_11
    return-void

    .line 130
    :catch_12
    move-exception p0

    .line 131
    const-string v1, "ExtendedRemoteDisplay.dispose: InvocationTargetException"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 133
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2d

    .line 135
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_27

    .line 136
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 138
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 134
    :cond_2d
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static isAvailable()Z
    .registers 1

    .line 149
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Landroid/content/Context;)Ljava/lang/Object;
    .registers 9

    .line 99
    const-string v0, "ExtendedRemoteDisplayHelper"

    .line 102
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_44

    .line 104
    const/4 v3, 0x4

    :try_start_c
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    const/4 p0, 0x3

    aput-object p3, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1e} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1e} :catch_1f

    .line 118
    goto :goto_44

    .line 116
    :catch_1f
    move-exception p0

    .line 117
    const-string p1, "ExtendedRemoteDisplay.listen: IllegalAccessException"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 106
    :catch_26
    move-exception p0

    .line 107
    const-string p1, "ExtendedRemoteDisplay.listen: InvocationTargetException"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 109
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_41

    .line 111
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_3b

    .line 112
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 114
    :cond_3b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 110
    :cond_41
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 120
    :cond_44
    :goto_44
    return-object v2
.end method
