.class public Lcom/android/settings/homepage/contextualcards/SettingsContextualCardProvider;
.super Lcom/google/android/settings/intelligence/libs/contextualcards/ContextualCardProvider;
.source "SettingsContextualCardProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/google/android/settings/intelligence/libs/contextualcards/ContextualCardProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextualCards()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .registers 6

    .line 36
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

    .line 38
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 42
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    .line 43
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    .line 44
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    .line 46
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 48
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->LOW_STORAGE_SLICE_URI:Landroid/net/Uri;

    .line 49
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->LOW_STORAGE_SLICE_URI:Landroid/net/Uri;

    .line 50
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 51
    invoke-virtual {v1, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    .line 52
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 54
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/slices/CustomSliceRegistry;->BATTERY_FIX_SLICE_URI:Landroid/net/Uri;

    .line 55
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v3, Lcom/android/settings/slices/CustomSliceRegistry;->BATTERY_FIX_SLICE_URI:Landroid/net/Uri;

    .line 56
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 57
    invoke-virtual {v2, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    .line 58
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 59
    sget-object v3, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_NOTIFICATION_CHANNEL_SLICE_URI:Landroid/net/Uri;

    .line 60
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setSliceUri(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    .line 64
    invoke-virtual {v4, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardName(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    sget-object v3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 65
    invoke-virtual {v4, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    .line 66
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    .line 67
    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    move-result-object v4

    .line 68
    invoke-virtual {v4, p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    .line 69
    invoke-virtual {v4, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    .line 70
    invoke-virtual {v4, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    .line 71
    invoke-virtual {v4, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    .line 72
    invoke-virtual {v4, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    .line 73
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object p0
.end method
