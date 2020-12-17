.class public Lcom/android/server/power/PowerInjector;
.super Ljava/lang/Object;
.source "PowerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static sPms:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p0, "pms"  # Lcom/android/server/power/PowerManagerService;

    .line 24
    sput-object p0, Lcom/android/server/power/PowerInjector;->sPms:Lcom/android/server/power/PowerManagerService;

    .line 25
    invoke-static {}, Lcom/android/server/power/PowerExecutor;->getInstance()Lcom/android/server/power/PowerExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/power/PowerExecutor;->initialize(Lcom/android/server/power/PowerManagerService;)V

    .line 26
    return-void
.end method

.method public static isNeedDisable(ILjava/lang/String;)Z
    .registers 3
    .param p0, "uid"  # I
    .param p1, "packageName"  # Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/android/server/power/PowerExecutor;->getInstance()Lcom/android/server/power/PowerExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/PowerExecutor;->isNeedDisable(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
