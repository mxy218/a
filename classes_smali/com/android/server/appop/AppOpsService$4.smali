.class Lcom/android/server/appop/AppOpsService$4;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 850
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .registers 6

    .line 853
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 854
    return v1

    .line 856
    :cond_8
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 858
    return v1

    .line 860
    :cond_13
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1f

    .line 862
    const/4 p1, 0x2

    return p1

    .line 864
    :cond_1f
    const/4 p1, 0x3

    return p1
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 3

    .line 869
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService$4;->getMountMode(ILjava/lang/String;)I

    move-result p1

    .line 870
    const/4 p2, 0x2

    if-eq p1, p2, :cond_d

    const/4 p2, 0x3

    if-ne p1, p2, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
