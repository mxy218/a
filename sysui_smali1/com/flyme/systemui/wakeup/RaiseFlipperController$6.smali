.class Lcom/flyme/systemui/wakeup/RaiseFlipperController$6;
.super Landroid/database/ContentObserver;
.source "RaiseFlipperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/wakeup/RaiseFlipperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Landroid/os/Handler;)V
    .registers 3

    .line 227
    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$6;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 230
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$6;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$1200(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "raisewakeup_switch"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    move v1, v2

    :cond_16
    invoke-static {p1, v1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$1102(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)Z

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "raise wake up on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$6;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$1100(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RaiseFlipperController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$6;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$1100(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$1300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)V

    return-void
.end method
