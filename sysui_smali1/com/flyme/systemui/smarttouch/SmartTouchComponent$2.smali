.class Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;
.super Ljava/lang/Object;
.source "SmartTouchComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 103
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 107
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 108
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 109
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$002(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 110
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "firsthelp"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, -0x2

    const-string v1, "mz_smart_touch_switch"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 112
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$600(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    .line 115
    :try_start_3d
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.meizu.smarttouch_settings"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_55} :catch_55

    :catch_55
    :cond_55
    return-void
.end method
