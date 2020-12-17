.class Lcom/android/server/slice/SliceManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/slice/SliceManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/slice/SliceManagerService;

    .line 531
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 534
    const/16 v0, -0x2710

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 535
    .local v1, "userId":I
    const-string v2, "SliceManagerService"

    if-ne v1, v0, :cond_21

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 539
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 540
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    .line 541
    .local v3, "pkg":Ljava/lang/String;
    :goto_2d
    if-nez v3, :cond_44

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent broadcast does not contain package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 545
    :cond_44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0xff13fb5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_64

    const v6, 0x1f50b9c2

    if-eq v5, v6, :cond_5a

    :cond_59
    goto :goto_6d

    :cond_5a
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    move v4, v7

    goto :goto_6d

    :cond_64
    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    move v4, v8

    :goto_6d
    if-eqz v4, :cond_7c

    if-eq v4, v8, :cond_72

    goto :goto_8e

    .line 554
    :cond_72
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-static {v2}, Lcom/android/server/slice/SliceManagerService;->access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/slice/SlicePermissionManager;->removePkg(Ljava/lang/String;I)V

    goto :goto_8e

    .line 547
    :cond_7c
    nop

    .line 548
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 549
    .local v2, "replacing":Z
    if-nez v2, :cond_8e

    .line 550
    iget-object v4, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-static {v4}, Lcom/android/server/slice/SliceManagerService;->access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/server/slice/SlicePermissionManager;->removePkg(Ljava/lang/String;I)V

    .line 557
    .end local v2  # "replacing":Z
    :cond_8e
    :goto_8e
    return-void
.end method
