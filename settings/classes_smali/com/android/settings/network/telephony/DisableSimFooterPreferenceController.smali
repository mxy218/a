.class public Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DisableSimFooterPreferenceController.java"


# instance fields
.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->mSubId:I

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 6

    .line 41
    iget v0, p0, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->mSubId:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 45
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget v4, p0, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->mSubId:I

    if-ne v3, v4, :cond_11

    .line 46
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_2c

    return v1

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public init(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->mSubId:I

    return-void
.end method
