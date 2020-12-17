.class public interface abstract Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiListenerExt"
.end annotation


# virtual methods
.method public abstract onOtherWifiConnectionChanged(Landroid/net/NetworkInfo;)V
.end method

.method public abstract onPasswordError(I)V
.end method

.method public abstract onScanStateChanged(Z)V
.end method
