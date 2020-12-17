.class Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;
.super Landroid/database/ContentObserver;
.source "FlymeHipsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/server/FlymeHipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbStausObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/server/FlymeHipsService;


# direct methods
.method public constructor <init>(Lcom/android/server/hips/server/FlymeHipsService;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/hips/server/FlymeHipsService;

    .line 390
    iput-object p1, p0, Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;->this$0:Lcom/android/server/hips/server/FlymeHipsService;

    .line 391
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 392
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 396
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;->this$0:Lcom/android/server/hips/server/FlymeHipsService;

    invoke-virtual {v0}, Lcom/android/server/hips/server/FlymeHipsService;->updateAdbStatus()V

    .line 398
    return-void
.end method
