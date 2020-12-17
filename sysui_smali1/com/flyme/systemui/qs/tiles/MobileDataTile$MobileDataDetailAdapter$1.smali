.class Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter$1;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->updateItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter$1;->this$1:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .registers 4

    .line 369
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-ne p0, v0, :cond_13

    .line 370
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    goto :goto_1b

    .line 371
    :cond_13
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    :goto_1b
    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 366
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter$1;->compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result p0

    return p0
.end method
