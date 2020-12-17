.class Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "ScreenRecordControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 65
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    :cond_16
    return-void
.end method
