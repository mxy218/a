.class final Lcom/android/server/sence/SceneService$AppDeathRecipient;
.super Ljava/lang/Object;
.source "SceneService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sence/SceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDeathRecipient"
.end annotation


# instance fields
.field mClient:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/sence/SceneService;


# direct methods
.method constructor <init>(Lcom/android/server/sence/SceneService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "client"  # Landroid/os/IBinder;

    .line 352
    iput-object p1, p0, Lcom/android/server/sence/SceneService$AppDeathRecipient;->this$0:Lcom/android/server/sence/SceneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/android/server/sence/SceneService$AppDeathRecipient;->mClient:Landroid/os/IBinder;

    .line 354
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/android/server/sence/SceneService$AppDeathRecipient;->this$0:Lcom/android/server/sence/SceneService;

    iget-object v1, p0, Lcom/android/server/sence/SceneService$AppDeathRecipient;->mClient:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/sence/SceneService;->access$000(Lcom/android/server/sence/SceneService;Landroid/os/IBinder;)V

    .line 359
    return-void
.end method
