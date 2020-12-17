.class public Lcom/android/systemui/statusbar/NotificationUiAdjustment;
.super Ljava/lang/Object;
.source "NotificationUiAdjustment.java"


# instance fields
.field public final key:Ljava/lang/String;

.field public final smartActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field public final smartReplies:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;[Ljava/lang/CharSequence;)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->key:Ljava/lang/String;

    if-nez p2, :cond_c

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_11

    .line 50
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_11
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->smartActions:Ljava/util/List;

    if-nez p3, :cond_19

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/CharSequence;

    goto :goto_1f

    .line 51
    :cond_19
    invoke-virtual {p3}, [Ljava/lang/CharSequence;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    :goto_1f
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->smartReplies:[Ljava/lang/CharSequence;

    return-void
.end method

.method private static areDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, 0x1

    if-eqz p0, :cond_10

    if-nez p1, :cond_a

    goto :goto_10

    .line 116
    :cond_a
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_10
    :goto_10
    return v0
.end method

.method public static areDifferent(Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p0, :cond_60

    if-nez p1, :cond_a

    goto :goto_60

    .line 83
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    move v2, v0

    .line 86
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 87
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 88
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    .line 90
    iget-object v5, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v6, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    return v1

    .line 94
    :cond_33
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->areDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v5

    if-eqz v5, :cond_42

    return v1

    .line 98
    :cond_42
    iget-object v5, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    iget-object v6, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    return v1

    .line 102
    :cond_4d
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v3

    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->areDifferent([Landroid/app/RemoteInput;[Landroid/app/RemoteInput;)Z

    move-result v3

    if-eqz v3, :cond_5c

    return v1

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_5f
    return v0

    :cond_60
    :goto_60
    return v1
.end method

.method private static areDifferent([Landroid/app/RemoteInput;[Landroid/app/RemoteInput;)Z
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p0, :cond_39

    if-nez p1, :cond_a

    goto :goto_39

    .line 127
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    move v2, v0

    .line 130
    :goto_10
    array-length v3, p0

    if-ge v2, v3, :cond_38

    .line 131
    aget-object v3, p0, v2

    .line 132
    aget-object v4, p1, v2

    .line 134
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    return v1

    .line 137
    :cond_26
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->areDifferent([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    return v1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_38
    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method private static areDifferent([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p0, :cond_22

    if-nez p1, :cond_a

    goto :goto_22

    .line 152
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    move v2, v0

    .line 155
    :goto_10
    array-length v3, p0

    if-ge v2, v3, :cond_21

    .line 156
    aget-object v3, p0, v2

    .line 157
    aget-object v4, p1, v2

    .line 158
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_21
    return v0

    :cond_22
    :goto_22
    return v1
.end method

.method public static extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;
    .registers 4

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartActions:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;-><init>(Ljava/lang/String;Ljava/util/List;[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static needReinflate(Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->smartActions:Ljava/util/List;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->smartActions:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->areDifferent(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    return v2

    .line 69
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->smartReplies:[Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->smartReplies:[Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    return v2

    :cond_1b
    return v0
.end method
