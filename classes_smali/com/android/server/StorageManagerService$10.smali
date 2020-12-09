.class Lcom/android/server/StorageManagerService$10;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V
    .registers 3

    .line 2105
    iput-object p1, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 2112
    iget-object p1, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_d

    .line 2113
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2115
    :cond_d
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 2109
    return-void
.end method
