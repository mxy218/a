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
    .param p1, "this$0"  # Lcom/android/server/pm/PackageManagerService;

    .line 24570
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$realMoveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "moveId"  # I
    .param p2, "extras"  # Landroid/os/Bundle;

    .line 24574
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .registers 7
    .param p1, "moveId"  # I
    .param p2, "status"  # I
    .param p3, "estMillis"  # J

    .line 24578
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$realMoveId:I

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$5800(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V

    .line 24579
    return-void
.end method
