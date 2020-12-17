.class Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "RingerModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 39
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 40
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "vibrate_when_ringing"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-static {p1, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$002(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Z)Z

    .line 43
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V

    return-void
.end method
