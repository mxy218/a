.class Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V
    .registers 2

    .line 1766
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;->this$0:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 4

    .line 1769
    if-eqz p1, :cond_18

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "One touch play failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_18
    return-void
.end method
