.class public Lcom/flyme/systemui/smarttouch/HideSmartTouchService;
.super Landroid/app/IntentService;
.source "HideSmartTouchService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "HideSmartTouch"

    .line 11
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 16
    sget-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz p0, :cond_10

    const-string p0, "SmartTouch"

    const-string p1, "hide when screenshot"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->hide()V

    :cond_10
    return-void
.end method
