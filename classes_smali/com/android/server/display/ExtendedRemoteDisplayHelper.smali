.class Lcom/android/server/display/ExtendedRemoteDisplayHelper;
.super Ljava/lang/Object;
.source "ExtendedRemoteDisplayHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedRemoteDisplayHelper"

.field private static sExtRemoteDisplayClass:Ljava/lang/Class;

.field private static sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

.field private static sExtRemoteDisplayListen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 61
    const-string v0, "ExtendedRemoteDisplayHelper"

    :try_start_2
    const-string v1, "com.qualcomm.wfd.ExtendedRemoteDisplay"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    .line 64
    goto :goto_11

    .line 62
    :catchall_b
    move-exception v1

    .line 63
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ExtendedRemoteDisplay Not available."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v1  # "t":Ljava/lang/Throwable;
    :goto_11
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v1, :cond_56

    .line 68
    const-string v1, "ExtendedRemoteDisplay Is available. Find Methods"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
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

    .line 75
    .local v1, "args":[Ljava/lang/Class;
    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string/jumbo v4, "listen"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_3d

    .line 78
    .end local v1  # "args":[Ljava/lang/Class;
    goto :goto_43

    .line 76
    :catchall_3d
    move-exception v1

    .line 77
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, "ExtendedRemoteDisplay.listen Not available."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v1  # "t":Ljava/lang/Throwable;
    :goto_43
    :try_start_43
    new-array v1, v2, [Ljava/lang/Class;

    .line 82
    .local v1, "args":[Ljava/lang/Class;
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string v3, "dispose"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_50

    .line 85
    .end local v1  # "args":[Ljava/lang/Class;
    goto :goto_56

    .line 83
    :catchall_50
    move-exception v1

    .line 84
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ExtendedRemoteDisplay.dispose Not available."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v1  # "t":Ljava/lang/Throwable;
    :cond_56
    :goto_56
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose(Ljava/lang/Object;)V
    .registers 4
    .param p0, "extRemoteDisplay"  # Ljava/lang/Object;

    .line 130
    const-string v0, "ExtendedRemoteDisplayHelper"

    const-string v1, "ExtendedRemoteDisplay.dispose"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_7
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_f} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_f} :catch_10

    .line 146
    goto :goto_19

    .line 143
    :catch_10
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ExtendedRemoteDisplay.dispose-IllegalAccessException"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 147
    .end local v1  # "e":Ljava/lang/IllegalAccessException;
    :goto_19
    return-void

    .line 133
    :catch_1a
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "ExtendedRemoteDisplay.dispose - InvocationTargetException"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 136
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_36

    .line 138
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_30

    .line 139
    move-object v2, v0

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 141
    :cond_30
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 137
    :cond_36
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
.end method

.method public static isAvailable()Z
    .registers 2

    .line 154
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string v1, "ExtendedRemoteDisplayHelper"

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 157
    const-string v0, "ExtendedRemoteDisplay isAvailable() : Available."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_15
    const-string v0, "ExtendedRemoteDisplay isAvailable() : Not Available."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Landroid/content/Context;)Ljava/lang/Object;
    .registers 10
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "listener"  # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "context"  # Landroid/content/Context;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "extRemoteDisplay":Ljava/lang/Object;
    const-string v1, "ExtendedRemoteDisplayHelper"

    const-string v2, "ExtendedRemoteDisplay.listen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_50

    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_50

    .line 106
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_12
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_24} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_24} :catch_26

    move-object v0, v1

    .line 121
    goto :goto_50

    .line 118
    :catch_26
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ExtendedRemoteDisplay.listen -IllegalAccessException"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_50

    .line 108
    .end local v2  # "e":Ljava/lang/IllegalAccessException;
    :catch_30
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "ExtendedRemoteDisplay.listen - InvocationTargetException"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 111
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_4c

    .line 113
    instance-of v3, v1, Ljava/lang/Error;

    if-eqz v3, :cond_46

    .line 114
    move-object v3, v1

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 116
    :cond_46
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 112
    :cond_4c
    move-object v3, v1

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 123
    .end local v1  # "cause":Ljava/lang/Throwable;
    .end local v2  # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_50
    :goto_50
    return-object v0
.end method
