.class Lcom/flyme/systemui/headsup/FlymeHeadsupManager$4;
.super Landroid/database/ContentObserver;
.source "FlymeHeadsupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->initContentResolver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;Landroid/os/Handler;)V
    .registers 3

    .line 354
    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$4;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 357
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$4;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$500(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "mz_force_quick_reply"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-static {p1, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$702(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;Z)Z

    .line 359
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$4;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$800(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->updateQuickOpenVisibility()V

    .line 360
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$4;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$600(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[foree] onChange: mIsForceQuickReply = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$4;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$700(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeHeadsupManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method
