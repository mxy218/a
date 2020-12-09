.class Lcom/android/server/pm/PackageManagerService$10;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePrimaryStorage(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$realMoveId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 3

    .line 23809
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$realMoveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .registers 3

    .line 23813
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .registers 6

    .line 23817
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object p1

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$10;->val$realMoveId:I

    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$5400(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V

    .line 23818
    return-void
.end method
