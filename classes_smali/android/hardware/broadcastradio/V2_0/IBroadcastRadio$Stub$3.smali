.class Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;
.super Ljava/lang/Object;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 716
    iput-object p1, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->this$0:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;

    iput-object p2, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .registers 5

    .line 719
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 720
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 721
    iget-object p1, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    if-nez p2, :cond_11

    const/4 p2, 0x0

    goto :goto_15

    :cond_11
    invoke-interface {p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->asBinder()Landroid/os/IHwBinder;

    move-result-object p2

    :goto_15
    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 722
    iget-object p1, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1}, Landroid/os/HwParcel;->send()V

    .line 723
    return-void
.end method
