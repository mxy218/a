.class Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "AutoBrightnessControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 27
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 30
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 31
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-static {p1, v1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->access$002(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;Z)Z

    .line 34
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;)V

    return-void
.end method
