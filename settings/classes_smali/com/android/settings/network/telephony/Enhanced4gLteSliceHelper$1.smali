.class Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper$1;
.super Ljava/lang/Object;
.source "Enhanced4gLteSliceHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->isEnhanced4gLteModeEnabled(Lcom/android/ims/ImsManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;

.field final synthetic val$imsManager:Lcom/android/ims/ImsManager;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;Lcom/android/ims/ImsManager;)V
    .registers 3

    .line 150
    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper$1;->this$0:Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;

    iput-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper$1;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper$1;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper$1;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
