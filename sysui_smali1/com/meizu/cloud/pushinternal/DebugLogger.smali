.class public Lcom/meizu/cloud/pushinternal/DebugLogger;
.super Ljava/lang/Object;
.source "DebugLogger.java"


# static fields
.field public static debug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static flush()V
    .registers 0

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static isDebuggable()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/meizu/cloud/pushinternal/DebugLogger;->debug:Z

    return v0
.end method

.method public static switchDebug(Z)V
    .registers 1

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method
