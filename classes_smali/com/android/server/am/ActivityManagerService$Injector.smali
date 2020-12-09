.class public Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field private mNmi:Lcom/android/server/NetworkManagementInternal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureHasNetworkManagementInternal()Z
    .registers 2

    .line 18839
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    if-nez v0, :cond_e

    .line 18840
    const-class v0, Lcom/android/server/NetworkManagementInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    .line 18842
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method public getAppOpsService(Ljava/io/File;Landroid/os/Handler;)Lcom/android/server/appop/AppOpsService;
    .registers 4

    .line 18824
    new-instance v0, Lcom/android/server/appop/AppOpsService;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appop/AppOpsService;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 18820
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiHandler(Lcom/android/server/am/ActivityManagerService;)Landroid/os/Handler;
    .registers 3

    .line 18828
    new-instance v0, Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-object v0
.end method

.method public isNetworkRestrictedForUid(I)Z
    .registers 3

    .line 18832
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->ensureHasNetworkManagementInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18833
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkManagementInternal;->isNetworkRestrictedForUid(I)Z

    move-result p1

    return p1

    .line 18835
    :cond_d
    const/4 p1, 0x0

    return p1
.end method
