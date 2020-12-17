.class public interface abstract Lcom/flyme/systemui/statusbar/policy/VpnController;
.super Ljava/lang/Object;
.source "VpnController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isVpnConnecting()Z
.end method

.method public abstract isVpnEnabled()Z
.end method

.method public abstract isVpnInitializing()Z
.end method

.method public abstract isVpnSupported()Z
.end method

.method public abstract isVpnWaitForReconnect()Z
.end method

.method public abstract setVpnEnabled(Z)V
.end method
