.class Lcom/android/server/StorageManagerService$12;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 3317
    iput-object p1, p0, Lcom/android/server/StorageManagerService$12;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3320
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$4700()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 3322
    :cond_7
    iget-object p1, p0, Lcom/android/server/StorageManagerService$12;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1, p2, p3}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/StorageManagerService;->access$4900(Lcom/android/server/StorageManagerService;II)V

    .line 3323
    return-void
.end method
