.class public Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TetheringUserRestrictionListener"
.end annotation


# instance fields
.field private final mWrapper:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    .line 816
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    .line 821
    nop

    .line 822
    const-string/jumbo p1, "no_config_tethering"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 823
    nop

    .line 824
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 825
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_13

    move p1, p3

    goto :goto_14

    :cond_13
    move p1, v0

    .line 827
    :goto_14
    if-nez p1, :cond_17

    .line 828
    return-void

    .line 831
    :cond_17
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 832
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move p3, v0

    .line 834
    :goto_27
    if-eqz p2, :cond_38

    if-eqz p3, :cond_38

    .line 835
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    const p2, 0x1080821

    invoke-virtual {p1, p2, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    .line 837
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 839
    :cond_38
    return-void
.end method
