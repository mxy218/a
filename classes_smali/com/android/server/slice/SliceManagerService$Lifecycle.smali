.class public Lcom/android/server/slice/SliceManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 596
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 597
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 607
    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    .line 608
    iget-object p1, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-static {p1}, Lcom/android/server/slice/SliceManagerService;->access$100(Lcom/android/server/slice/SliceManagerService;)V

    .line 610
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 601
    new-instance v0, Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 602
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    const-string/jumbo v1, "slice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/slice/SliceManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 603
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    .line 619
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-static {v0, p1}, Lcom/android/server/slice/SliceManagerService;->access$300(Lcom/android/server/slice/SliceManagerService;I)V

    .line 620
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-static {v0, p1}, Lcom/android/server/slice/SliceManagerService;->access$200(Lcom/android/server/slice/SliceManagerService;I)V

    .line 615
    return-void
.end method
