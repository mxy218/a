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
    .param p1, "wrapper"  # Lcom/android/server/connectivity/Tethering;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    .line 849
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "userId"  # I
    .param p2, "newRestrictions"  # Landroid/os/Bundle;
    .param p3, "prevRestrictions"  # Landroid/os/Bundle;

    .line 854
    nop

    .line 855
    const-string/jumbo v0, "no_config_tethering"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 856
    .local v1, "newlyDisallowed":Z
    nop

    .line 857
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 858
    .local v0, "previouslyDisallowed":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v3

    .line 860
    .local v4, "tetheringDisallowedChanged":Z
    :goto_14
    if-nez v4, :cond_17

    .line 861
    return-void

    .line 864
    :cond_17
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 865
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    .line 867
    .local v2, "isTetheringActiveOnDevice":Z
    :goto_27
    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    .line 868
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    const v6, 0x108082e

    invoke-static {v5, v6, v3}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;IZ)V

    .line 870
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 872
    :cond_38
    return-void
.end method
