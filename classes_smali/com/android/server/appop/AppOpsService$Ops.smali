.class final Lcom/android/server/appop/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/android/server/appop/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field final isPrivileged:Z

.field final packageName:Ljava/lang/String;

.field final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V
    .registers 4

    .line 414
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 416
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 417
    iput-boolean p3, p0, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    .line 418
    return-void
.end method
