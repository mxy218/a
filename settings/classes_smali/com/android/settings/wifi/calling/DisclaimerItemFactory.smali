.class public final Lcom/android/settings/wifi/calling/DisclaimerItemFactory;
.super Ljava/lang/Object;
.source "DisclaimerItemFactory.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/calling/DisclaimerItem;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/android/settings/wifi/calling/DisclaimerItemFactory;->getDisclaimerItemList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 43
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/calling/DisclaimerItem;

    .line 45
    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result v0

    if-nez v0, :cond_8

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_1e
    return-object p0
.end method

.method private static getDisclaimerItemList(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/calling/DisclaimerItem;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Lcom/android/settings/wifi/calling/LocationPolicyDisclaimer;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/calling/LocationPolicyDisclaimer;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
