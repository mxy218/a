.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeCreateFPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 117
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$102(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)Z

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->endEnroll()V

    .line 120
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$300(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    :cond_28
    return-void
.end method
