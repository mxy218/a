.class Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;
.super Ljava/lang/Object;
.source "SmartTouchComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->setSmartTouchOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 134
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    .line 138
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 139
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$002(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 141
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "firsthelp"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, -0x2

    const-string v2, "mz_smart_touch_switch"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 143
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$600(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    :cond_3d
    return-void
.end method
