.class Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;
.super Landroid/os/Handler;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Landroid/os/Looper;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_11

    .line 76
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->setHotspotEnabled(Z)V

    :goto_11
    return-void
.end method
