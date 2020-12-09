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

    .line 531
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 534
    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 535
    const-string v1, "SliceManagerService"

    if-ne v0, p1, :cond_21

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent broadcast does not contain user handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 539
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 540
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    .line 541
    :goto_2d
    if-nez p1, :cond_44

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent broadcast does not contain package name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 545
    :cond_44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0xff13fb5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_64

    const v4, 0x1f50b9c2

    if-eq v3, v4, :cond_5a

    :cond_59
    goto :goto_6d

    :cond_5a
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    move v2, v5

    goto :goto_6d

    :cond_64
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    move v2, v6

    :goto_6d
    if-eqz v2, :cond_7c

    if-eq v2, v6, :cond_72

    goto :goto_8e

    .line 554
    :cond_72
    iget-object p2, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-static {p2}, Lcom/android/server/slice/SliceManagerService;->access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/server/slice/SlicePermissionManager;->removePkg(Ljava/lang/String;I)V

    goto :goto_8e

    .line 547
    :cond_7c
    nop

    .line 548
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 549
    if-nez p2, :cond_8e

    .line 550
    iget-object p2, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-static {p2}, Lcom/android/server/slice/SliceManagerService;->access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/server/slice/SlicePermissionManager;->removePkg(Ljava/lang/String;I)V

    .line 557
    :cond_8e
    :goto_8e
    return-void
.end method
