.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BaseTimeZonePreferenceController.java"


# instance fields
.field private mOnClickListener:Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_1a

    .line 45
    :cond_13
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;

    invoke-interface {p0}, Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;->onClick()V

    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;

    return-void
.end method
