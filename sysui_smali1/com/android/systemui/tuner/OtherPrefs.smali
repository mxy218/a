.class public Lcom/android/systemui/tuner/OtherPrefs;
.super Landroidx/preference/PreferenceFragment;
.source "OtherPrefs.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 26
    sget p1, Lcom/android/systemui/R$xml;->other_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
