.class Lcom/android/server/display/hbm/HBMController$1;
.super Landroid/database/ContentObserver;
.source "HBMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/hbm/HBMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/hbm/HBMController;


# direct methods
.method constructor <init>(Lcom/android/server/display/hbm/HBMController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/hbm/HBMController;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 73
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 74
    const-string v0, "hbm_switch_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 75
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v0}, Lcom/android/server/display/hbm/HBMController;->access$000(Lcom/android/server/display/hbm/HBMController;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v0}, Lcom/android/server/display/hbm/HBMController;->access$100(Lcom/android/server/display/hbm/HBMController;)Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 77
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v0}, Lcom/android/server/display/hbm/HBMController;->access$100(Lcom/android/server/display/hbm/HBMController;)Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v1}, Lcom/android/server/display/hbm/HBMController;->access$200(Lcom/android/server/display/hbm/HBMController;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;->onHBMSwitchChanged(Z)V

    .line 79
    :cond_2b
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v0}, Lcom/android/server/display/hbm/HBMController;->access$200(Lcom/android/server/display/hbm/HBMController;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 80
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v0}, Lcom/android/server/display/hbm/HBMController;->access$300(Lcom/android/server/display/hbm/HBMController;)V

    goto :goto_50

    .line 82
    :cond_39
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v0}, Lcom/android/server/display/hbm/HBMController;->access$400(Lcom/android/server/display/hbm/HBMController;)V

    goto :goto_50

    .line 84
    :cond_3f
    const-string v0, "hbm_remaining_reminders"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 85
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController$1;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v0}, Lcom/android/server/display/hbm/HBMController;->access$500(Lcom/android/server/display/hbm/HBMController;)V

    .line 87
    :cond_50
    :goto_50
    return-void
.end method
