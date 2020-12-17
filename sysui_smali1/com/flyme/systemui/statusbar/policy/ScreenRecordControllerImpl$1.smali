.class Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;
.super Lcom/android/systemui/qs/SecureSetting;
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
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5

    .line 50
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .registers 4

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleValueChanged: value = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScreenRecordController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    invoke-static {p2, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)V

    .line 55
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V

    return-void
.end method
