.class public Lcom/android/server/StorageManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mStorageManagerService:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 213
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 224
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_a

    .line 225
    iget-object p1, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$100(Lcom/android/server/StorageManagerService;)V

    goto :goto_1d

    .line 226
    :cond_a
    const/16 v0, 0x226

    if-ne p1, v0, :cond_14

    .line 227
    iget-object p1, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$200(Lcom/android/server/StorageManagerService;)V

    goto :goto_1d

    .line 228
    :cond_14
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1d

    .line 229
    iget-object p1, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$300(Lcom/android/server/StorageManagerService;)V

    .line 231
    :cond_1d
    :goto_1d
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$600(Lcom/android/server/StorageManagerService;I)V

    .line 246
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 217
    new-instance v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    const-string/jumbo v1, "mount"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$000(Lcom/android/server/StorageManagerService;)V

    .line 220
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$402(Lcom/android/server/StorageManagerService;I)I

    .line 236
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$500(Lcom/android/server/StorageManagerService;I)V

    .line 241
    return-void
.end method
