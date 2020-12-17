.class public Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source "QuickStepContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/QuickStepContract$SystemUiStateFlags;
    }
.end annotation


# direct methods
.method public static final getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .registers 2

    .line 133
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000  # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getSystemUiStateString(I)Ljava/lang/String;
    .registers 4

    .line 107
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_11

    const-string v1, "screen_pinned"

    goto :goto_12

    :cond_11
    move-object v1, v2

    .line 108
    :goto_12
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1c

    const-string v1, "overview_disabled"

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    .line 109
    :goto_1d
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_27

    const-string v1, "home_disabled"

    goto :goto_28

    :cond_27
    move-object v1, v2

    .line 110
    :goto_28
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_32

    const-string v1, "search_disabled"

    goto :goto_33

    :cond_32
    move-object v1, v2

    .line 111
    :goto_33
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3d

    const-string v1, "navbar_hidden"

    goto :goto_3e

    :cond_3d
    move-object v1, v2

    .line 112
    :goto_3e
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_48

    const-string v1, "notif_visible"

    goto :goto_49

    :cond_48
    move-object v1, v2

    .line 113
    :goto_49
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_53

    const-string v1, "qs_visible"

    goto :goto_54

    :cond_53
    move-object v1, v2

    .line 114
    :goto_54
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_5e

    const-string v1, "keygrd_visible"

    goto :goto_5f

    :cond_5e
    move-object v1, v2

    .line 115
    :goto_5f
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_69

    const-string v1, "keygrd_occluded"

    goto :goto_6a

    :cond_69
    move-object v1, v2

    .line 116
    :goto_6a
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_74

    const-string v1, "bouncer_visible"

    goto :goto_75

    :cond_74
    move-object v1, v2

    .line 118
    :goto_75
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_7f

    const-string v1, "a11y_click"

    goto :goto_80

    :cond_7f
    move-object v1, v2

    .line 119
    :goto_80
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_89

    const-string v2, "a11y_long_click"

    .line 120
    :cond_89
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 121
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAssistantGestureDisabled(I)Z
    .registers 3

    and-int/lit16 v0, p0, 0xc0b

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_f

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isBackGestureDisabled(I)Z
    .registers 4

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x46

    .line 197
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isCtsRunning()Z

    move-result v2

    if-nez v2, :cond_14

    const/16 v0, 0x44

    :cond_14
    and-int/2addr p0, v0

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static isGesturalMode(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static isLegacyMode(I)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static isSwipeUpMode(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
